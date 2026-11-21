import 'package:serverpod/serverpod.dart';
import '../generated/protocol.dart';

/// Endpoint managing donation listings and status updates.
class DonationEndpoint extends Endpoint {
  /// Creates a new donation listing with server-side role and data validation.
  /// Only callers with role 'donor' are authorized to create listings.
  Future<FoodListing> createListing(
    Session session,
    FoodListing listing, {
    required int callerUserId,
    required String callerRole,
  }) async {
    // 1. Role Guard: verify callerRole is 'donor'
    final normalizedRole = callerRole.trim().toLowerCase();
    if (normalizedRole != 'donor') {
      throw DatabaseException(
        'Unauthorized: Only donors can create listings. Received role: $callerRole',
      );
    }

    // Check User table if record exists
    final user = await User.db.findById(session, callerUserId);
    if (user != null && user.role.trim().toLowerCase() != 'donor') {
      throw DatabaseException(
        'Unauthorized: User $callerUserId registered role "${user.role}" is not donor.',
      );
    }

    // 2. Field Validations
    if (listing.title.trim().isEmpty) {
      throw ArgumentError('Food listing title cannot be empty.');
    }
    if (listing.quantity <= 0) {
      throw ArgumentError('Quantity must be greater than 0.');
    }
    final nowUtc = DateTime.now().toUtc();
    if (listing.availableUntil.toUtc().isBefore(nowUtc)) {
      throw ArgumentError('availableUntil must be in the future.');
    }
    if (listing.pickupVenue.trim().isEmpty) {
      throw ArgumentError('pickupVenue cannot be empty.');
    }

    // 3. Build & persist record
    final newListing = FoodListing(
      donorUserId: callerUserId,
      organisationId: listing.organisationId ?? user?.organisationId,
      title: listing.title.trim(),
      rawDescription: listing.rawDescription.trim(),
      category: listing.category.trim().isEmpty ? 'General' : listing.category.trim(),
      quantity: listing.quantity,
      unit: listing.unit.trim().isEmpty ? 'meals' : listing.unit.trim(),
      availableUntil: listing.availableUntil.toUtc(),
      pickupVenue: listing.pickupVenue.trim(),
      latitude: listing.latitude,
      longitude: listing.longitude,
      handlingNotes: listing.handlingNotes,
      missingFieldsFlagged: listing.missingFieldsFlagged,
      status: 'listed',
      acceptedNgoId: null,
      rescueSessionId: listing.rescueSessionId,
      createdAt: nowUtc,
    );

    final persisted = await FoodListing.db.insertRow(session, newListing);

    // 4. Broadcast 'donationCreated' event
    final event = RescueStreamEvent(
      eventType: 'donationCreated',
      rescueSessionId: persisted.rescueSessionId ?? 0,
      foodListingId: persisted.id,
      joinCode: null,
      status: persisted.status,
      actorUserId: callerUserId,
      actorRole: normalizedRole,
      message: 'New surplus food listed: "${persisted.title}" (${persisted.quantity} ${persisted.unit}) at ${persisted.pickupVenue}',
      listing: persisted,
      session: null,
      timestamp: nowUtc,
    );

    // Global discovery feed for recipient NGOs
    await session.messages.postMessage('global_donations', event);

    // If attached to a rescue session, broadcast to that session room
    if (persisted.rescueSessionId != null && persisted.rescueSessionId! > 0) {
      await session.messages.postMessage('rescue_session_${persisted.rescueSessionId}', event);
    }

    return persisted;
  }

  /// Updates an existing donation listing with ownership and role checks.
  Future<FoodListing> updateListing(
    Session session,
    FoodListing updatedListing, {
    required int callerUserId,
    required String callerRole,
  }) async {
    if (updatedListing.id == null) {
      throw ArgumentError('Listing ID is required for update.');
    }

    final existing = await FoodListing.db.findById(session, updatedListing.id!);
    if (existing == null) {
      throw DatabaseException('FoodListing not found with ID ${updatedListing.id}');
    }

    final normalizedRole = callerRole.trim().toLowerCase();

    // Check if modifying listing details vs transitioning status
    final isContentModified = existing.title != updatedListing.title ||
        existing.rawDescription != updatedListing.rawDescription ||
        existing.quantity != updatedListing.quantity ||
        existing.unit != updatedListing.unit ||
        existing.availableUntil != updatedListing.availableUntil ||
        existing.pickupVenue != updatedListing.pickupVenue;

    if (isContentModified) {
      if (normalizedRole != 'donor' || existing.donorUserId != callerUserId) {
        throw DatabaseException(
          'Unauthorized: Only the original donor can modify listing details.',
        );
      }
    }

    // Role-check status transitions
    if (existing.status != updatedListing.status) {
      final targetStatus = updatedListing.status.trim().toLowerCase();
      switch (targetStatus) {
        case 'accepted':
          if (normalizedRole != 'ngo') {
            throw DatabaseException('Unauthorized: Only NGOs can accept donation listings.');
          }
          break;
        case 'pickup_assigned':
        case 'collected':
        case 'in_transit':
          if (normalizedRole != 'volunteer' && normalizedRole != 'ngo') {
            throw DatabaseException(
              'Unauthorized: Only volunteers or recipient NGOs can update pickup status to $targetStatus.',
            );
          }
          break;
        case 'verified':
          if (normalizedRole != 'donor' && normalizedRole != 'ngo' && normalizedRole != 'volunteer') {
            throw DatabaseException(
              'Unauthorized: Caller role $callerRole cannot mark listing as verified.',
            );
          }
          break;
        case 'expired':
        case 'cancelled':
          if (normalizedRole != 'donor' && existing.donorUserId != callerUserId) {
            throw DatabaseException(
              'Unauthorized: Only the donor can cancel or expire their listing.',
            );
          }
          break;
      }
    }

    // Update in DB
    final saved = await FoodListing.db.updateRow(session, updatedListing);

    // Determine eventType for real-time broadcast
    String eventType;
    switch (saved.status.toLowerCase()) {
      case 'accepted':
        eventType = 'donationAccepted';
        break;
      case 'pickup_assigned':
        eventType = 'volunteerAssigned';
        break;
      case 'collected':
      case 'in_transit':
        eventType = 'pickupStatusChanged';
        break;
      case 'verified':
        eventType = 'handoverVerified';
        break;
      default:
        eventType = 'pickupStatusChanged';
    }

    final nowUtc = DateTime.now().toUtc();
    final event = RescueStreamEvent(
      eventType: eventType,
      rescueSessionId: saved.rescueSessionId ?? 0,
      foodListingId: saved.id,
      joinCode: null,
      status: saved.status,
      actorUserId: callerUserId,
      actorRole: normalizedRole,
      message: 'Donation "${saved.title}" updated to status "${saved.status}".',
      listing: saved,
      session: null,
      timestamp: nowUtc,
    );

    await session.messages.postMessage('global_donations', event);
    if (saved.rescueSessionId != null && saved.rescueSessionId! > 0) {
      await session.messages.postMessage('rescue_session_${saved.rescueSessionId}', event);
    }

    return saved;
  }

  /// Lists all active surplus listings sorted by deadline urgency (closest first).
  Future<List<FoodListing>> listAvailableListings(
    Session session, {
    String? category,
    int? minQuantity,
  }) async {
    final nowUtc = DateTime.now().toUtc();
    return await FoodListing.db.find(
      session,
      where: (t) {
        var expr = t.status.equals('listed') & (t.availableUntil > nowUtc);
        if (category != null && category.trim().isNotEmpty) {
          expr = expr & t.category.equals(category.trim());
        }
        if (minQuantity != null && minQuantity > 0) {
          expr = expr & (t.quantity >= minQuantity);
        }
        return expr;
      },
      orderBy: (t) => t.availableUntil,
    );
  }

  /// Fetches a single listing by ID.
  Future<FoodListing?> getListing(Session session, int listingId) async {
    return await FoodListing.db.findById(session, listingId);
  }

  /// Lists all listings created by a specific donor.
  Future<List<FoodListing>> getListingsByDonor(Session session, int donorUserId) async {
    return await FoodListing.db.find(
      session,
      where: (t) => t.donorUserId.equals(donorUserId),
      orderByList: (t) => [t.createdAt.desc()],
    );
  }
}
