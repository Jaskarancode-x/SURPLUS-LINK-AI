import 'dart:math' as math;
import 'package:serverpod/serverpod.dart';
import '../generated/protocol.dart';

/// Endpoint managing live rescue sessions, 6-character join codes,
/// multi-device participant coordination, and real-time streaming.
class RescueSessionEndpoint extends Endpoint {
  static const _codeChars = '23456789ABCDEFGHJKLMNPQRSTUVWXYZ';
  static final _random = math.Random.secure();

  /// Generates a human-friendly 6-character alphanumeric code avoiding ambiguous chars.
  static String generateJoinCode() {
    return List.generate(6, (_) => _codeChars[_random.nextInt(_codeChars.length)]).join();
  }

  /// Generates a collision-checked unique join code from the database.
  Future<String> _generateUniqueJoinCode(Session session) async {
    for (int attempt = 0; attempt < 100; attempt++) {
      final code = generateJoinCode();
      final existing = await RescueSession.db.findFirstRow(
        session,
        where: (t) => t.joinCode.equals(code),
      );
      if (existing == null) {
        return code;
      }
    }
    throw StateError('Unable to generate a unique join code after multiple attempts.');
  }

  /// Creates a shared live rescue session with a unique 6-character join code.
  /// Automatically associates the FoodListing and registers the host donor.
  Future<RescueSession> createSession(
    Session session, {
    required int foodListingId,
    required int hostDonorId,
    required String hostName,
  }) async {
    // 1. Role & Ownership Guard
    final listing = await FoodListing.db.findById(session, foodListingId);
    if (listing == null) {
      throw DatabaseException('FoodListing not found with ID $foodListingId.');
    }
    if (listing.donorUserId != hostDonorId) {
      throw DatabaseException(
        'Unauthorized: Only the listing donor (User $hostDonorId) can launch a rescue session.',
      );
    }

    final nowUtc = DateTime.now().toUtc();
    final joinCode = await _generateUniqueJoinCode(session);

    // 2. Insert RescueSession row
    final newSession = RescueSession(
      joinCode: joinCode,
      foodListingId: foodListingId,
      hostDonorId: hostDonorId,
      acceptedNgoId: null,
      assignedVolunteerId: null,
      status: 'active',
      createdAt: nowUtc,
      updatedAt: nowUtc,
    );
    final persistedSession = await RescueSession.db.insertRow(session, newSession);

    // 3. Update FoodListing with rescueSessionId
    listing.rescueSessionId = persistedSession.id;
    await FoodListing.db.updateRow(session, listing);

    // 4. Automatically register the donor in SessionParticipant
    final donorParticipant = SessionParticipant(
      rescueSessionId: persistedSession.id!,
      userId: hostDonorId,
      userName: hostName.trim().isEmpty ? 'Host Donor' : hostName.trim(),
      role: 'donor',
      joinedAt: nowUtc,
      isOnline: true,
    );
    await SessionParticipant.db.insertRow(session, donorParticipant);

    // 5. Broadcast 'donationCreated' event across session & discovery channels
    final event = RescueStreamEvent(
      eventType: 'donationCreated',
      rescueSessionId: persistedSession.id!,
      foodListingId: listing.id,
      joinCode: persistedSession.joinCode,
      status: persistedSession.status,
      actorUserId: hostDonorId,
      actorRole: 'donor',
      message: 'Live rescue session started for "${listing.title}" with Join Code $joinCode',
      listing: listing,
      session: persistedSession,
      timestamp: nowUtc,
    );

    await session.messages.postMessage('global_donations', event);
    await session.messages.postMessage('rescue_session_${persistedSession.id}', event);

    return persistedSession;
  }

  /// Allows a Donor, NGO, or Volunteer device to join the rescue session via a 6-char code.
  Future<RescueSession> joinWithCode(
    Session session, {
    required String joinCode,
    required int userId,
    required String userName,
    required String role,
  }) async {
    final normalizedCode = joinCode.trim().toUpperCase();
    final normalizedRole = role.trim().toLowerCase();

    // 1. Role Guard
    if (normalizedRole != 'donor' && normalizedRole != 'ngo' && normalizedRole != 'volunteer') {
      throw DatabaseException('Invalid role "$role". Must be donor, ngo, or volunteer.');
    }

    // 2. Lookup active session
    final rescueSession = await RescueSession.db.findFirstRow(
      session,
      where: (t) => t.joinCode.equals(normalizedCode),
    );
    if (rescueSession == null) {
      throw DatabaseException('No rescue session found with join code "$normalizedCode".');
    }
    if (rescueSession.status == 'completed' || rescueSession.status == 'cancelled') {
      throw DatabaseException(
        'Rescue session "$normalizedCode" is closed (status: ${rescueSession.status}).',
      );
    }

    final nowUtc = DateTime.now().toUtc();

    // 3. Upsert user into SessionParticipant
    final existingParticipant = await SessionParticipant.db.findFirstRow(
      session,
      where: (t) => t.rescueSessionId.equals(rescueSession.id!) & t.userId.equals(userId),
    );

    if (existingParticipant != null) {
      existingParticipant.userName = userName.trim();
      existingParticipant.role = normalizedRole;
      existingParticipant.isOnline = true;
      await SessionParticipant.db.updateRow(session, existingParticipant);
    } else {
      final newParticipant = SessionParticipant(
        rescueSessionId: rescueSession.id!,
        userId: userId,
        userName: userName.trim().isEmpty ? 'User $userId' : userName.trim(),
        role: normalizedRole,
        joinedAt: nowUtc,
        isOnline: true,
      );
      await SessionParticipant.db.insertRow(session, newParticipant);
    }

    // 4. Broadcast 'participantJoined' event
    final listing = await FoodListing.db.findById(session, rescueSession.foodListingId);
    final event = RescueStreamEvent(
      eventType: 'participantJoined',
      rescueSessionId: rescueSession.id!,
      foodListingId: rescueSession.foodListingId,
      joinCode: rescueSession.joinCode,
      status: rescueSession.status,
      actorUserId: userId,
      actorRole: normalizedRole,
      message: '$userName ($normalizedRole) joined the rescue room.',
      listing: listing,
      session: rescueSession,
      timestamp: nowUtc,
    );

    await session.messages.postMessage('rescue_session_${rescueSession.id}', event);

    return rescueSession;
  }

  /// Fetches a rescue session by ID or 6-char join code.
  Future<RescueSession?> getSession(
    Session session, {
    int? sessionId,
    String? joinCode,
  }) async {
    if (sessionId != null) {
      return await RescueSession.db.findById(session, sessionId);
    }
    if (joinCode != null && joinCode.trim().isNotEmpty) {
      final normalized = joinCode.trim().toUpperCase();
      return await RescueSession.db.findFirstRow(
        session,
        where: (t) => t.joinCode.equals(normalized),
      );
    }
    throw ArgumentError('Either sessionId or joinCode must be provided.');
  }

  /// Returns all connected participants for a rescue session.
  Future<List<SessionParticipant>> getSessionParticipants(
    Session session,
    int rescueSessionId,
  ) async {
    return await SessionParticipant.db.find(
      session,
      where: (t) => t.rescueSessionId.equals(rescueSessionId),
      orderBy: (t) => t.joinedAt,
    );
  }

  /// Returns the FoodListing linked to a rescue session.
  Future<FoodListing?> getSessionListing(
    Session session,
    int rescueSessionId,
  ) async {
    final rescueSession = await RescueSession.db.findById(session, rescueSessionId);
    if (rescueSession == null) return null;
    return await FoodListing.db.findById(session, rescueSession.foodListingId);
  }

  /// Unified event publisher enforcing server-side role constraints and atomic state updates.
  Future<RescueStreamEvent> publishSessionEvent(
    Session session, {
    required int rescueSessionId,
    required String eventType,
    required int actorUserId,
    required String actorRole,
    String? newStatus,
    String? message,
  }) async {
    final allowedEvents = {
      'donationCreated',
      'donationAccepted',
      'volunteerAssigned',
      'pickupStatusChanged',
      'handoverVerified',
      'participantJoined',
    };

    if (!allowedEvents.contains(eventType)) {
      throw ArgumentError('Invalid eventType "$eventType". Supported: $allowedEvents.');
    }

    final normalizedRole = actorRole.trim().toLowerCase();

    // Server-side role guard
    switch (eventType) {
      case 'donationCreated':
        if (normalizedRole != 'donor') {
          throw DatabaseException('Unauthorized: Only donors can emit donationCreated.');
        }
        break;
      case 'donationAccepted':
        if (normalizedRole != 'ngo') {
          throw DatabaseException('Unauthorized: Only NGOs can emit donationAccepted.');
        }
        break;
      case 'volunteerAssigned':
      case 'pickupStatusChanged':
        if (normalizedRole != 'volunteer' && normalizedRole != 'ngo') {
          throw DatabaseException('Unauthorized: Only volunteers or NGOs can emit $eventType.');
        }
        break;
      case 'handoverVerified':
        if (normalizedRole != 'donor' && normalizedRole != 'ngo' && normalizedRole != 'volunteer') {
          throw DatabaseException('Unauthorized: Role $actorRole cannot emit handoverVerified.');
        }
        break;
    }

    final rescueSession = await RescueSession.db.findById(session, rescueSessionId);
    if (rescueSession == null) {
      throw DatabaseException('RescueSession not found with ID $rescueSessionId.');
    }

    final listing = await FoodListing.db.findById(session, rescueSession.foodListingId);
    final nowUtc = DateTime.now().toUtc();
    rescueSession.updatedAt = nowUtc;

    // Transition statuses atomically
    switch (eventType) {
      case 'donationAccepted':
        rescueSession.status = newStatus ?? 'ngo_accepted';
        rescueSession.acceptedNgoId = actorUserId;
        if (listing != null) {
          listing.status = 'accepted';
          listing.acceptedNgoId = actorUserId;
        }
        break;
      case 'volunteerAssigned':
        rescueSession.status = newStatus ?? 'volunteer_assigned';
        rescueSession.assignedVolunteerId = actorUserId;
        if (listing != null) {
          listing.status = 'pickup_assigned';
        }
        break;
      case 'pickupStatusChanged':
        rescueSession.status = newStatus ?? 'in_transit';
        if (listing != null) {
          listing.status = (newStatus == 'collected') ? 'collected' : 'pickup_assigned';
        }
        break;
      case 'handoverVerified':
        rescueSession.status = 'completed';
        if (listing != null) {
          listing.status = 'verified';
        }
        break;
      default:
        if (newStatus != null) {
          rescueSession.status = newStatus;
        }
    }

    await RescueSession.db.updateRow(session, rescueSession);
    if (listing != null) {
      await FoodListing.db.updateRow(session, listing);
    }

    final eventMessage = message ??
        _buildDefaultEventMessage(eventType, normalizedRole, rescueSession, listing);

    final event = RescueStreamEvent(
      eventType: eventType,
      rescueSessionId: rescueSessionId,
      foodListingId: rescueSession.foodListingId,
      joinCode: rescueSession.joinCode,
      status: rescueSession.status,
      actorUserId: actorUserId,
      actorRole: normalizedRole,
      message: eventMessage,
      listing: listing,
      session: rescueSession,
      timestamp: nowUtc,
    );

    await session.messages.postMessage('rescue_session_$rescueSessionId', event);
    await session.messages.postMessage('global_donations', event);

    return event;
  }

  /// Real-time live status stream for a specific rescue session room.
  /// Yields an initial snapshot immediately upon connection so devices sync without refresh.
  Stream<RescueStreamEvent> watchRescueSession(
    Session session,
    int rescueSessionId,
  ) async* {
    // 1. Initial snapshot for immediate client synchronization
    final snapshot = await _buildSessionSnapshot(session, rescueSessionId);
    if (snapshot != null) {
      yield snapshot;
    }

    // 2. Stream subsequent real-time messages
    yield* session.messages.createStream<RescueStreamEvent>(
      'rescue_session_$rescueSessionId',
    );
  }

  /// Real-time live status stream by 6-character join code (convenient for QR & join-code entry).
  Stream<RescueStreamEvent> watchSessionByCode(
    Session session,
    String joinCode,
  ) async* {
    final normalized = joinCode.trim().toUpperCase();
    final rescueSession = await RescueSession.db.findFirstRow(
      session,
      where: (t) => t.joinCode.equals(normalized),
    );
    if (rescueSession == null) {
      throw DatabaseException('No rescue session found with join code "$normalized".');
    }

    yield* watchRescueSession(session, rescueSession.id!);
  }

  /// Real-time global surplus donation stream for the NGO Live Inbox.
  Stream<RescueStreamEvent> watchGlobalDonations(Session session) async* {
    // 1. Yield snapshot of the most urgent active listing if available
    final active = await FoodListing.db.find(
      session,
      where: (t) => t.status.equals('listed'),
      orderBy: (t) => t.availableUntil,
      limit: 1,
    );
    if (active.isNotEmpty) {
      final listing = active.first;
      yield RescueStreamEvent(
        eventType: 'donationCreated',
        rescueSessionId: listing.rescueSessionId ?? 0,
        foodListingId: listing.id,
        joinCode: null,
        status: listing.status,
        actorUserId: listing.donorUserId,
        actorRole: 'donor',
        message: 'Active surplus available: ${listing.title} (${listing.quantity} ${listing.unit})',
        listing: listing,
        session: null,
        timestamp: DateTime.now().toUtc(),
      );
    }

    // 2. Stream subsequent global donation events
    yield* session.messages.createStream<RescueStreamEvent>(
      'global_donations',
    );
  }

  /// Helper to build an initial state snapshot event for late-joining or newly connected devices.
  Future<RescueStreamEvent?> _buildSessionSnapshot(
    Session session,
    int rescueSessionId,
  ) async {
    final rescueSession = await RescueSession.db.findById(session, rescueSessionId);
    if (rescueSession == null) return null;

    final listing = await FoodListing.db.findById(session, rescueSession.foodListingId);

    return RescueStreamEvent(
      eventType: 'participantJoined',
      rescueSessionId: rescueSession.id!,
      foodListingId: rescueSession.foodListingId,
      joinCode: rescueSession.joinCode,
      status: rescueSession.status,
      actorUserId: null,
      actorRole: null,
      message: 'Connected to live session ${rescueSession.joinCode}. Status: ${rescueSession.status}.',
      listing: listing,
      session: rescueSession,
      timestamp: DateTime.now().toUtc(),
    );
  }

  String _buildDefaultEventMessage(
    String eventType,
    String role,
    RescueSession session,
    FoodListing? listing,
  ) {
    final title = listing?.title ?? 'Food donation';
    switch (eventType) {
      case 'donationCreated':
        return 'Donation created: $title (Join Code: ${session.joinCode})';
      case 'donationAccepted':
        return 'Recipient NGO accepted rescue for "$title".';
      case 'volunteerAssigned':
        return 'Volunteer assigned to pick up "$title".';
      case 'pickupStatusChanged':
        return 'Pickup status changed to "${session.status}" for "$title".';
      case 'handoverVerified':
        return 'Handover successfully verified for "$title"! Rescue complete.';
      default:
        return 'Session status updated to "${session.status}".';
    }
  }

  /// Seeds demo organizations and users for the live demonstration script.
  Future<String> seedDemoOrganisationsAndUsers(Session session) async {
    final existingUsers = await User.db.find(session, limit: 1);
    if (existingUsers.isNotEmpty) {
      return 'Demo data already exists (found existing user records).';
    }

    final nowUtc = DateTime.now().toUtc();

    // 1. Donor Organisation
    final donorOrg = await Organisation.db.insertRow(
      session,
      Organisation(
        name: 'Main Auditorium Catering',
        type: 'donor',
        maxCapacityMeals: 500,
        serviceAreaKm: 10.0,
        latitude: 30.7360,
        longitude: 76.7800,
        address: 'Main Auditorium, Campus Gate 1',
        operatingHoursStart: '08:00',
        operatingHoursEnd: '22:00',
        acceptedCategories: 'All, Cooked Meals, Buffet Surplus',
        isVerified: true,
      ),
    );

    // 2. Donor User
    final donorUser = await User.db.insertRow(
      session,
      User(
        name: 'Auditorium Catering Lead',
        email: 'donor@campus.edu',
        phone: '+91 98765 43210',
        role: 'donor',
        organisationId: donorOrg.id,
        createdAt: nowUtc,
      ),
    );

    // 3. Recipient NGO Organisation (capacity >= 100 meals for 3-minute demo script)
    final ngoOrg = await Organisation.db.insertRow(
      session,
      Organisation(
        name: 'City Robin Hood Army',
        type: 'ngo',
        maxCapacityMeals: 250,
        serviceAreaKm: 15.0,
        latitude: 30.7333,
        longitude: 76.7794,
        address: 'Sector 17 Community Center, Chandigarh',
        operatingHoursStart: '07:00',
        operatingHoursEnd: '23:00',
        acceptedCategories: 'Cooked Meals, Snacks, Bakery',
        isVerified: true,
      ),
    );

    // 4. NGO User
    final ngoUser = await User.db.insertRow(
      session,
      User(
        name: 'Robin Hood Coordinator',
        email: 'ngo@robinhood.org',
        phone: '+91 98123 45678',
        role: 'ngo',
        organisationId: ngoOrg.id,
        createdAt: nowUtc,
      ),
    );

    // 5. Volunteer User
    final volunteerUser = await User.db.insertRow(
      session,
      User(
        name: 'Navdeep Volunteer',
        email: 'volunteer@campus.edu',
        phone: '+91 98989 12345',
        role: 'volunteer',
        organisationId: null,
        createdAt: nowUtc,
      ),
    );

    return 'Successfully seeded demo records: Donor (ID: ${donorUser.id}), NGO (ID: ${ngoUser.id}, 250 meals capacity), and Volunteer (ID: ${volunteerUser.id}).';
  }
}
