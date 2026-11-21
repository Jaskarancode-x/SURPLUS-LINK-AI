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

abstract class User
    implements _isc.SerializableModel, _isc.ProtocolSerialization {
  User._({
    this.id,
    required this.name,
    required this.email,
    this.phone,
    required this.role,
    this.organisationId,
    required this.createdAt,
  });

  factory User({
    int? id,
    required String name,
    required String email,
    String? phone,
    required String role,
    int? organisationId,
    required DateTime createdAt,
  }) = _UserImpl;

  factory User.fromJson(Map<String, dynamic> jsonSerialization) {
    return User(
      id: jsonSerialization['id'] as int?,
      name: jsonSerialization['name'] as String,
      email: jsonSerialization['email'] as String,
      phone: jsonSerialization['phone'] as String?,
      role: jsonSerialization['role'] as String,
      organisationId: jsonSerialization['organisationId'] as int?,
      createdAt: _isc.DateTimeJsonExtension.fromJson(
        jsonSerialization['createdAt'],
      ),
    );
  }

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  int? id;

  String name;

  String email;

  String? phone;

  String role;

  int? organisationId;

  DateTime createdAt;

  /// Returns a shallow copy of this [User]
  /// with some or all fields replaced by the given arguments.
  @_isc.useResult
  User copyWith({
    int? id,
    String? name,
    String? email,
    String? phone,
    String? role,
    int? organisationId,
    DateTime? createdAt,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'User',
      if (id != null) 'id': id,
      'name': name,
      'email': email,
      if (phone != null) 'phone': phone,
      'role': role,
      if (organisationId != null) 'organisationId': organisationId,
      'createdAt': createdAt.toJson(),
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'User',
      if (id != null) 'id': id,
      'name': name,
      'email': email,
      if (phone != null) 'phone': phone,
      'role': role,
      if (organisationId != null) 'organisationId': organisationId,
      'createdAt': createdAt.toJson(),
    };
  }

  @override
  String toString() {
    return _isc.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _UserImpl extends User {
  _UserImpl({
    int? id,
    required String name,
    required String email,
    String? phone,
    required String role,
    int? organisationId,
    required DateTime createdAt,
  }) : super._(
         id: id,
         name: name,
         email: email,
         phone: phone,
         role: role,
         organisationId: organisationId,
         createdAt: createdAt,
       );

  /// Returns a shallow copy of this [User]
  /// with some or all fields replaced by the given arguments.
  @_isc.useResult
  @override
  User copyWith({
    Object? id = _Undefined,
    String? name,
    String? email,
    Object? phone = _Undefined,
    String? role,
    Object? organisationId = _Undefined,
    DateTime? createdAt,
  }) {
    return User(
      id: id is int? ? id : this.id,
      name: name ?? this.name,
      email: email ?? this.email,
      phone: phone is String? ? phone : this.phone,
      role: role ?? this.role,
      organisationId: organisationId is int?
          ? organisationId
          : this.organisationId,
      createdAt: createdAt ?? this.createdAt,
    );
  }
}
