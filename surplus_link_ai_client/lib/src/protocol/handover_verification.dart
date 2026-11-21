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

abstract class HandoverVerification
    implements _isc.SerializableModel, _isc.ProtocolSerialization {
  HandoverVerification._({
    this.id,
    required this.rescueSessionId,
    required this.foodListingId,
    required this.handoverToken,
    required this.isUsed,
    required this.generatedByUserId,
    this.verifiedByUserId,
    required this.expiresAt,
    this.verifiedAt,
  });

  factory HandoverVerification({
    int? id,
    required int rescueSessionId,
    required int foodListingId,
    required String handoverToken,
    required bool isUsed,
    required int generatedByUserId,
    int? verifiedByUserId,
    required DateTime expiresAt,
    DateTime? verifiedAt,
  }) = _HandoverVerificationImpl;

  factory HandoverVerification.fromJson(
    Map<String, dynamic> jsonSerialization,
  ) {
    return HandoverVerification(
      id: jsonSerialization['id'] as int?,
      rescueSessionId: jsonSerialization['rescueSessionId'] as int,
      foodListingId: jsonSerialization['foodListingId'] as int,
      handoverToken: jsonSerialization['handoverToken'] as String,
      isUsed: _isc.BoolJsonExtension.fromJson(jsonSerialization['isUsed']),
      generatedByUserId: jsonSerialization['generatedByUserId'] as int,
      verifiedByUserId: jsonSerialization['verifiedByUserId'] as int?,
      expiresAt: _isc.DateTimeJsonExtension.fromJson(
        jsonSerialization['expiresAt'],
      ),
      verifiedAt: jsonSerialization['verifiedAt'] == null
          ? null
          : _isc.DateTimeJsonExtension.fromJson(
              jsonSerialization['verifiedAt'],
            ),
    );
  }

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  int? id;

  int rescueSessionId;

  int foodListingId;

  String handoverToken;

  bool isUsed;

  int generatedByUserId;

  int? verifiedByUserId;

  DateTime expiresAt;

  DateTime? verifiedAt;

  /// Returns a shallow copy of this [HandoverVerification]
  /// with some or all fields replaced by the given arguments.
  @_isc.useResult
  HandoverVerification copyWith({
    int? id,
    int? rescueSessionId,
    int? foodListingId,
    String? handoverToken,
    bool? isUsed,
    int? generatedByUserId,
    int? verifiedByUserId,
    DateTime? expiresAt,
    DateTime? verifiedAt = const _isc.$UndefinedDateTime(),
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'HandoverVerification',
      if (id != null) 'id': id,
      'rescueSessionId': rescueSessionId,
      'foodListingId': foodListingId,
      'handoverToken': handoverToken,
      'isUsed': isUsed,
      'generatedByUserId': generatedByUserId,
      if (verifiedByUserId != null) 'verifiedByUserId': verifiedByUserId,
      'expiresAt': expiresAt.toJson(),
      if (verifiedAt != null) 'verifiedAt': verifiedAt?.toJson(),
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'HandoverVerification',
      if (id != null) 'id': id,
      'rescueSessionId': rescueSessionId,
      'foodListingId': foodListingId,
      'handoverToken': handoverToken,
      'isUsed': isUsed,
      'generatedByUserId': generatedByUserId,
      if (verifiedByUserId != null) 'verifiedByUserId': verifiedByUserId,
      'expiresAt': expiresAt.toJson(),
      if (verifiedAt != null) 'verifiedAt': verifiedAt?.toJson(),
    };
  }

  @override
  String toString() {
    return _isc.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _HandoverVerificationImpl extends HandoverVerification {
  _HandoverVerificationImpl({
    int? id,
    required int rescueSessionId,
    required int foodListingId,
    required String handoverToken,
    required bool isUsed,
    required int generatedByUserId,
    int? verifiedByUserId,
    required DateTime expiresAt,
    DateTime? verifiedAt,
  }) : super._(
         id: id,
         rescueSessionId: rescueSessionId,
         foodListingId: foodListingId,
         handoverToken: handoverToken,
         isUsed: isUsed,
         generatedByUserId: generatedByUserId,
         verifiedByUserId: verifiedByUserId,
         expiresAt: expiresAt,
         verifiedAt: verifiedAt,
       );

  /// Returns a shallow copy of this [HandoverVerification]
  /// with some or all fields replaced by the given arguments.
  @_isc.useResult
  @override
  HandoverVerification copyWith({
    Object? id = _Undefined,
    int? rescueSessionId,
    int? foodListingId,
    String? handoverToken,
    bool? isUsed,
    int? generatedByUserId,
    Object? verifiedByUserId = _Undefined,
    DateTime? expiresAt,
    DateTime? verifiedAt = const _isc.$UndefinedDateTime(),
  }) {
    return HandoverVerification(
      id: id is int? ? id : this.id,
      rescueSessionId: rescueSessionId ?? this.rescueSessionId,
      foodListingId: foodListingId ?? this.foodListingId,
      handoverToken: handoverToken ?? this.handoverToken,
      isUsed: isUsed ?? this.isUsed,
      generatedByUserId: generatedByUserId ?? this.generatedByUserId,
      verifiedByUserId: verifiedByUserId is int?
          ? verifiedByUserId
          : this.verifiedByUserId,
      expiresAt: expiresAt ?? this.expiresAt,
      verifiedAt: verifiedAt is _isc.UndefinedSentinel
          ? this.verifiedAt
          : verifiedAt,
    );
  }
}
