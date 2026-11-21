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

abstract class PickupAssignment
    implements _isc.SerializableModel, _isc.ProtocolSerialization {
  PickupAssignment._({
    this.id,
    required this.rescueSessionId,
    required this.foodListingId,
    required this.volunteerUserId,
    required this.pickupStatus,
    this.pickupInstructions,
    required this.assignedAt,
    required this.updatedAt,
  });

  factory PickupAssignment({
    int? id,
    required int rescueSessionId,
    required int foodListingId,
    required int volunteerUserId,
    required String pickupStatus,
    String? pickupInstructions,
    required DateTime assignedAt,
    required DateTime updatedAt,
  }) = _PickupAssignmentImpl;

  factory PickupAssignment.fromJson(Map<String, dynamic> jsonSerialization) {
    return PickupAssignment(
      id: jsonSerialization['id'] as int?,
      rescueSessionId: jsonSerialization['rescueSessionId'] as int,
      foodListingId: jsonSerialization['foodListingId'] as int,
      volunteerUserId: jsonSerialization['volunteerUserId'] as int,
      pickupStatus: jsonSerialization['pickupStatus'] as String,
      pickupInstructions: jsonSerialization['pickupInstructions'] as String?,
      assignedAt: _isc.DateTimeJsonExtension.fromJson(
        jsonSerialization['assignedAt'],
      ),
      updatedAt: _isc.DateTimeJsonExtension.fromJson(
        jsonSerialization['updatedAt'],
      ),
    );
  }

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  int? id;

  int rescueSessionId;

  int foodListingId;

  int volunteerUserId;

  String pickupStatus;

  String? pickupInstructions;

  DateTime assignedAt;

  DateTime updatedAt;

  /// Returns a shallow copy of this [PickupAssignment]
  /// with some or all fields replaced by the given arguments.
  @_isc.useResult
  PickupAssignment copyWith({
    int? id,
    int? rescueSessionId,
    int? foodListingId,
    int? volunteerUserId,
    String? pickupStatus,
    String? pickupInstructions,
    DateTime? assignedAt,
    DateTime? updatedAt,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'PickupAssignment',
      if (id != null) 'id': id,
      'rescueSessionId': rescueSessionId,
      'foodListingId': foodListingId,
      'volunteerUserId': volunteerUserId,
      'pickupStatus': pickupStatus,
      if (pickupInstructions != null) 'pickupInstructions': pickupInstructions,
      'assignedAt': assignedAt.toJson(),
      'updatedAt': updatedAt.toJson(),
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'PickupAssignment',
      if (id != null) 'id': id,
      'rescueSessionId': rescueSessionId,
      'foodListingId': foodListingId,
      'volunteerUserId': volunteerUserId,
      'pickupStatus': pickupStatus,
      if (pickupInstructions != null) 'pickupInstructions': pickupInstructions,
      'assignedAt': assignedAt.toJson(),
      'updatedAt': updatedAt.toJson(),
    };
  }

  @override
  String toString() {
    return _isc.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _PickupAssignmentImpl extends PickupAssignment {
  _PickupAssignmentImpl({
    int? id,
    required int rescueSessionId,
    required int foodListingId,
    required int volunteerUserId,
    required String pickupStatus,
    String? pickupInstructions,
    required DateTime assignedAt,
    required DateTime updatedAt,
  }) : super._(
         id: id,
         rescueSessionId: rescueSessionId,
         foodListingId: foodListingId,
         volunteerUserId: volunteerUserId,
         pickupStatus: pickupStatus,
         pickupInstructions: pickupInstructions,
         assignedAt: assignedAt,
         updatedAt: updatedAt,
       );

  /// Returns a shallow copy of this [PickupAssignment]
  /// with some or all fields replaced by the given arguments.
  @_isc.useResult
  @override
  PickupAssignment copyWith({
    Object? id = _Undefined,
    int? rescueSessionId,
    int? foodListingId,
    int? volunteerUserId,
    String? pickupStatus,
    Object? pickupInstructions = _Undefined,
    DateTime? assignedAt,
    DateTime? updatedAt,
  }) {
    return PickupAssignment(
      id: id is int? ? id : this.id,
      rescueSessionId: rescueSessionId ?? this.rescueSessionId,
      foodListingId: foodListingId ?? this.foodListingId,
      volunteerUserId: volunteerUserId ?? this.volunteerUserId,
      pickupStatus: pickupStatus ?? this.pickupStatus,
      pickupInstructions: pickupInstructions is String?
          ? pickupInstructions
          : this.pickupInstructions,
      assignedAt: assignedAt ?? this.assignedAt,
      updatedAt: updatedAt ?? this.updatedAt,
    );
  }
}
