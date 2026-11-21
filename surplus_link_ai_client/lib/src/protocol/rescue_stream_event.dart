/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: implementation_imports
// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: non_constant_identifier_names
// ignore_for_file: public_member_api_docs
// ignore_for_file: type_literal_in_constant_pattern
// ignore_for_file: use_super_parameters
// ignore_for_file: invalid_use_of_internal_member

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod_client/serverpod_client.dart' as _isc;
import 'package:surplus_link_ai_client/src/protocol/protocol.dart' as _ib6godaq;
import 'food_listing.dart' as _i121fseh;
import 'rescue_session.dart' as _i1jqr07x;

abstract class RescueStreamEvent
    implements _isc.SerializableModel, _isc.ProtocolSerialization {
  RescueStreamEvent._({
    required this.eventType,
    required this.rescueSessionId,
    this.foodListingId,
    this.joinCode,
    required this.status,
    this.actorUserId,
    this.actorRole,
    required this.message,
    this.listing,
    this.session,
    required this.timestamp,
  });

  factory RescueStreamEvent({
    required String eventType,
    required int rescueSessionId,
    int? foodListingId,
    String? joinCode,
    required String status,
    int? actorUserId,
    String? actorRole,
    required String message,
    _i121fseh.FoodListing? listing,
    _i1jqr07x.RescueSession? session,
    required DateTime timestamp,
  }) = _RescueStreamEventImpl;

  factory RescueStreamEvent.fromJson(Map<String, dynamic> jsonSerialization) {
    return RescueStreamEvent(
      eventType: jsonSerialization['eventType'] as String,
      rescueSessionId: jsonSerialization['rescueSessionId'] as int,
      foodListingId: jsonSerialization['foodListingId'] as int?,
      joinCode: jsonSerialization['joinCode'] as String?,
      status: jsonSerialization['status'] as String,
      actorUserId: jsonSerialization['actorUserId'] as int?,
      actorRole: jsonSerialization['actorRole'] as String?,
      message: jsonSerialization['message'] as String,
      listing: jsonSerialization['listing'] == null
          ? null
          : _ib6godaq.Protocol().deserialize<_i121fseh.FoodListing>(
              jsonSerialization['listing'],
            ),
      session: jsonSerialization['session'] == null
          ? null
          : _ib6godaq.Protocol().deserialize<_i1jqr07x.RescueSession>(
              jsonSerialization['session'],
            ),
      timestamp: _isc.DateTimeJsonExtension.fromJson(
        jsonSerialization['timestamp'],
      ),
    );
  }

  String eventType;

  int rescueSessionId;

  int? foodListingId;

  String? joinCode;

  String status;

  int? actorUserId;

  String? actorRole;

  String message;

  _i121fseh.FoodListing? listing;

  _i1jqr07x.RescueSession? session;

  DateTime timestamp;

  /// Returns a shallow copy of this [RescueStreamEvent]
  /// with some or all fields replaced by the given arguments.
  @_isc.useResult
  RescueStreamEvent copyWith({
    String? eventType,
    int? rescueSessionId,
    int? foodListingId,
    String? joinCode,
    String? status,
    int? actorUserId,
    String? actorRole,
    String? message,
    _i121fseh.FoodListing? listing =
        const _UndefinedRescueStreamEvent$listing(),
    _i1jqr07x.RescueSession? session =
        const _UndefinedRescueStreamEvent$session(),
    DateTime? timestamp,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'RescueStreamEvent',
      'eventType': eventType,
      'rescueSessionId': rescueSessionId,
      if (foodListingId != null) 'foodListingId': foodListingId,
      if (joinCode != null) 'joinCode': joinCode,
      'status': status,
      if (actorUserId != null) 'actorUserId': actorUserId,
      if (actorRole != null) 'actorRole': actorRole,
      'message': message,
      if (listing != null) 'listing': listing?.toJson(),
      if (session != null) 'session': session?.toJson(),
      'timestamp': timestamp.toJson(),
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'RescueStreamEvent',
      'eventType': eventType,
      'rescueSessionId': rescueSessionId,
      if (foodListingId != null) 'foodListingId': foodListingId,
      if (joinCode != null) 'joinCode': joinCode,
      'status': status,
      if (actorUserId != null) 'actorUserId': actorUserId,
      if (actorRole != null) 'actorRole': actorRole,
      'message': message,
      if (listing != null) 'listing': listing?.toJsonForProtocol(),
      if (session != null) 'session': session?.toJsonForProtocol(),
      'timestamp': timestamp.toJson(),
    };
  }

  @override
  String toString() {
    return _isc.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _UndefinedRescueStreamEvent$listing extends _isc.UndefinedSentinel
    implements _i121fseh.FoodListing {
  const _UndefinedRescueStreamEvent$listing();
}

class _UndefinedRescueStreamEvent$session extends _isc.UndefinedSentinel
    implements _i1jqr07x.RescueSession {
  const _UndefinedRescueStreamEvent$session();
}

class _RescueStreamEventImpl extends RescueStreamEvent {
  _RescueStreamEventImpl({
    required String eventType,
    required int rescueSessionId,
    int? foodListingId,
    String? joinCode,
    required String status,
    int? actorUserId,
    String? actorRole,
    required String message,
    _i121fseh.FoodListing? listing,
    _i1jqr07x.RescueSession? session,
    required DateTime timestamp,
  }) : super._(
         eventType: eventType,
         rescueSessionId: rescueSessionId,
         foodListingId: foodListingId,
         joinCode: joinCode,
         status: status,
         actorUserId: actorUserId,
         actorRole: actorRole,
         message: message,
         listing: listing,
         session: session,
         timestamp: timestamp,
       );

  /// Returns a shallow copy of this [RescueStreamEvent]
  /// with some or all fields replaced by the given arguments.
  @_isc.useResult
  @override
  RescueStreamEvent copyWith({
    String? eventType,
    int? rescueSessionId,
    Object? foodListingId = _Undefined,
    Object? joinCode = _Undefined,
    String? status,
    Object? actorUserId = _Undefined,
    Object? actorRole = _Undefined,
    String? message,
    _i121fseh.FoodListing? listing =
        const _UndefinedRescueStreamEvent$listing(),
    _i1jqr07x.RescueSession? session =
        const _UndefinedRescueStreamEvent$session(),
    DateTime? timestamp,
  }) {
    return RescueStreamEvent(
      eventType: eventType ?? this.eventType,
      rescueSessionId: rescueSessionId ?? this.rescueSessionId,
      foodListingId: foodListingId is int? ? foodListingId : this.foodListingId,
      joinCode: joinCode is String? ? joinCode : this.joinCode,
      status: status ?? this.status,
      actorUserId: actorUserId is int? ? actorUserId : this.actorUserId,
      actorRole: actorRole is String? ? actorRole : this.actorRole,
      message: message ?? this.message,
      listing: listing is _isc.UndefinedSentinel
          ? this.listing?.copyWith()
          : listing,
      session: session is _isc.UndefinedSentinel
          ? this.session?.copyWith()
          : session,
      timestamp: timestamp ?? this.timestamp,
    );
  }
}
