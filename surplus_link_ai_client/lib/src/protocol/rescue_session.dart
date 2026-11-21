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

abstract class RescueSession
    implements _isc.SerializableModel, _isc.ProtocolSerialization {
  RescueSession._({
    this.id,
    required this.joinCode,
    required this.foodListingId,
    required this.hostDonorId,
    this.acceptedNgoId,
    this.assignedVolunteerId,
    required this.status,
    required this.createdAt,
    required this.updatedAt,
  });

  factory RescueSession({
    int? id,
    required String joinCode,
    required int foodListingId,
    required int hostDonorId,
    int? acceptedNgoId,
    int? assignedVolunteerId,
    required String status,
    required DateTime createdAt,
    required DateTime updatedAt,
  }) = _RescueSessionImpl;

  factory RescueSession.fromJson(Map<String, dynamic> jsonSerialization) {
    return RescueSession(
      id: jsonSerialization['id'] as int?,
      joinCode: jsonSerialization['joinCode'] as String,
      foodListingId: jsonSerialization['foodListingId'] as int,
      hostDonorId: jsonSerialization['hostDonorId'] as int,
      acceptedNgoId: jsonSerialization['acceptedNgoId'] as int?,
      assignedVolunteerId: jsonSerialization['assignedVolunteerId'] as int?,
      status: jsonSerialization['status'] as String,
      createdAt: _isc.DateTimeJsonExtension.fromJson(
        jsonSerialization['createdAt'],
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

  String joinCode;

  int foodListingId;

  int hostDonorId;

  int? acceptedNgoId;

  int? assignedVolunteerId;

  String status;

  DateTime createdAt;

  DateTime updatedAt;

  /// Returns a shallow copy of this [RescueSession]
  /// with some or all fields replaced by the given arguments.
  @_isc.useResult
  RescueSession copyWith({
    int? id,
    String? joinCode,
    int? foodListingId,
    int? hostDonorId,
    int? acceptedNgoId,
    int? assignedVolunteerId,
    String? status,
    DateTime? createdAt,
    DateTime? updatedAt,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'RescueSession',
      if (id != null) 'id': id,
      'joinCode': joinCode,
      'foodListingId': foodListingId,
      'hostDonorId': hostDonorId,
      if (acceptedNgoId != null) 'acceptedNgoId': acceptedNgoId,
      if (assignedVolunteerId != null)
        'assignedVolunteerId': assignedVolunteerId,
      'status': status,
      'createdAt': createdAt.toJson(),
      'updatedAt': updatedAt.toJson(),
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'RescueSession',
      if (id != null) 'id': id,
      'joinCode': joinCode,
      'foodListingId': foodListingId,
      'hostDonorId': hostDonorId,
      if (acceptedNgoId != null) 'acceptedNgoId': acceptedNgoId,
      if (assignedVolunteerId != null)
        'assignedVolunteerId': assignedVolunteerId,
      'status': status,
      'createdAt': createdAt.toJson(),
      'updatedAt': updatedAt.toJson(),
    };
  }

  @override
  String toString() {
    return _isc.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _RescueSessionImpl extends RescueSession {
  _RescueSessionImpl({
    int? id,
    required String joinCode,
    required int foodListingId,
    required int hostDonorId,
    int? acceptedNgoId,
    int? assignedVolunteerId,
    required String status,
    required DateTime createdAt,
    required DateTime updatedAt,
  }) : super._(
         id: id,
         joinCode: joinCode,
         foodListingId: foodListingId,
         hostDonorId: hostDonorId,
         acceptedNgoId: acceptedNgoId,
         assignedVolunteerId: assignedVolunteerId,
         status: status,
         createdAt: createdAt,
         updatedAt: updatedAt,
       );

  /// Returns a shallow copy of this [RescueSession]
  /// with some or all fields replaced by the given arguments.
  @_isc.useResult
  @override
  RescueSession copyWith({
    Object? id = _Undefined,
    String? joinCode,
    int? foodListingId,
    int? hostDonorId,
    Object? acceptedNgoId = _Undefined,
    Object? assignedVolunteerId = _Undefined,
    String? status,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) {
    return RescueSession(
      id: id is int? ? id : this.id,
      joinCode: joinCode ?? this.joinCode,
      foodListingId: foodListingId ?? this.foodListingId,
      hostDonorId: hostDonorId ?? this.hostDonorId,
      acceptedNgoId: acceptedNgoId is int? ? acceptedNgoId : this.acceptedNgoId,
      assignedVolunteerId: assignedVolunteerId is int?
          ? assignedVolunteerId
          : this.assignedVolunteerId,
      status: status ?? this.status,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
    );
  }
}
