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

abstract class SessionParticipant
    implements _isc.SerializableModel, _isc.ProtocolSerialization {
  SessionParticipant._({
    this.id,
    required this.rescueSessionId,
    required this.userId,
    required this.userName,
    required this.role,
    required this.joinedAt,
    required this.isOnline,
  });

  factory SessionParticipant({
    int? id,
    required int rescueSessionId,
    required int userId,
    required String userName,
    required String role,
    required DateTime joinedAt,
    required bool isOnline,
  }) = _SessionParticipantImpl;

  factory SessionParticipant.fromJson(Map<String, dynamic> jsonSerialization) {
    return SessionParticipant(
      id: jsonSerialization['id'] as int?,
      rescueSessionId: jsonSerialization['rescueSessionId'] as int,
      userId: jsonSerialization['userId'] as int,
      userName: jsonSerialization['userName'] as String,
      role: jsonSerialization['role'] as String,
      joinedAt: _isc.DateTimeJsonExtension.fromJson(
        jsonSerialization['joinedAt'],
      ),
      isOnline: _isc.BoolJsonExtension.fromJson(jsonSerialization['isOnline']),
    );
  }

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  int? id;

  int rescueSessionId;

  int userId;

  String userName;

  String role;

  DateTime joinedAt;

  bool isOnline;

  /// Returns a shallow copy of this [SessionParticipant]
  /// with some or all fields replaced by the given arguments.
  @_isc.useResult
  SessionParticipant copyWith({
    int? id,
    int? rescueSessionId,
    int? userId,
    String? userName,
    String? role,
    DateTime? joinedAt,
    bool? isOnline,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'SessionParticipant',
      if (id != null) 'id': id,
      'rescueSessionId': rescueSessionId,
      'userId': userId,
      'userName': userName,
      'role': role,
      'joinedAt': joinedAt.toJson(),
      'isOnline': isOnline,
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'SessionParticipant',
      if (id != null) 'id': id,
      'rescueSessionId': rescueSessionId,
      'userId': userId,
      'userName': userName,
      'role': role,
      'joinedAt': joinedAt.toJson(),
      'isOnline': isOnline,
    };
  }

  @override
  String toString() {
    return _isc.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _SessionParticipantImpl extends SessionParticipant {
  _SessionParticipantImpl({
    int? id,
    required int rescueSessionId,
    required int userId,
    required String userName,
    required String role,
    required DateTime joinedAt,
    required bool isOnline,
  }) : super._(
         id: id,
         rescueSessionId: rescueSessionId,
         userId: userId,
         userName: userName,
         role: role,
         joinedAt: joinedAt,
         isOnline: isOnline,
       );

  /// Returns a shallow copy of this [SessionParticipant]
  /// with some or all fields replaced by the given arguments.
  @_isc.useResult
  @override
  SessionParticipant copyWith({
    Object? id = _Undefined,
    int? rescueSessionId,
    int? userId,
    String? userName,
    String? role,
    DateTime? joinedAt,
    bool? isOnline,
  }) {
    return SessionParticipant(
      id: id is int? ? id : this.id,
      rescueSessionId: rescueSessionId ?? this.rescueSessionId,
      userId: userId ?? this.userId,
      userName: userName ?? this.userName,
      role: role ?? this.role,
      joinedAt: joinedAt ?? this.joinedAt,
      isOnline: isOnline ?? this.isOnline,
    );
  }
}
