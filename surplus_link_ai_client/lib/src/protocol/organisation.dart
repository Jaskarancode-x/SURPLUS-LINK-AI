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

abstract class Organisation
    implements _isc.SerializableModel, _isc.ProtocolSerialization {
  Organisation._({
    this.id,
    required this.name,
    required this.type,
    required this.maxCapacityMeals,
    required this.serviceAreaKm,
    required this.latitude,
    required this.longitude,
    required this.address,
    required this.operatingHoursStart,
    required this.operatingHoursEnd,
    required this.acceptedCategories,
    required this.isVerified,
  });

  factory Organisation({
    int? id,
    required String name,
    required String type,
    required int maxCapacityMeals,
    required double serviceAreaKm,
    required double latitude,
    required double longitude,
    required String address,
    required String operatingHoursStart,
    required String operatingHoursEnd,
    required String acceptedCategories,
    required bool isVerified,
  }) = _OrganisationImpl;

  factory Organisation.fromJson(Map<String, dynamic> jsonSerialization) {
    return Organisation(
      id: jsonSerialization['id'] as int?,
      name: jsonSerialization['name'] as String,
      type: jsonSerialization['type'] as String,
      maxCapacityMeals: jsonSerialization['maxCapacityMeals'] as int,
      serviceAreaKm: (jsonSerialization['serviceAreaKm'] as num).toDouble(),
      latitude: (jsonSerialization['latitude'] as num).toDouble(),
      longitude: (jsonSerialization['longitude'] as num).toDouble(),
      address: jsonSerialization['address'] as String,
      operatingHoursStart: jsonSerialization['operatingHoursStart'] as String,
      operatingHoursEnd: jsonSerialization['operatingHoursEnd'] as String,
      acceptedCategories: jsonSerialization['acceptedCategories'] as String,
      isVerified: _isc.BoolJsonExtension.fromJson(
        jsonSerialization['isVerified'],
      ),
    );
  }

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  int? id;

  String name;

  String type;

  int maxCapacityMeals;

  double serviceAreaKm;

  double latitude;

  double longitude;

  String address;

  String operatingHoursStart;

  String operatingHoursEnd;

  String acceptedCategories;

  bool isVerified;

  /// Returns a shallow copy of this [Organisation]
  /// with some or all fields replaced by the given arguments.
  @_isc.useResult
  Organisation copyWith({
    int? id,
    String? name,
    String? type,
    int? maxCapacityMeals,
    double? serviceAreaKm,
    double? latitude,
    double? longitude,
    String? address,
    String? operatingHoursStart,
    String? operatingHoursEnd,
    String? acceptedCategories,
    bool? isVerified,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'Organisation',
      if (id != null) 'id': id,
      'name': name,
      'type': type,
      'maxCapacityMeals': maxCapacityMeals,
      'serviceAreaKm': serviceAreaKm,
      'latitude': latitude,
      'longitude': longitude,
      'address': address,
      'operatingHoursStart': operatingHoursStart,
      'operatingHoursEnd': operatingHoursEnd,
      'acceptedCategories': acceptedCategories,
      'isVerified': isVerified,
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'Organisation',
      if (id != null) 'id': id,
      'name': name,
      'type': type,
      'maxCapacityMeals': maxCapacityMeals,
      'serviceAreaKm': serviceAreaKm,
      'latitude': latitude,
      'longitude': longitude,
      'address': address,
      'operatingHoursStart': operatingHoursStart,
      'operatingHoursEnd': operatingHoursEnd,
      'acceptedCategories': acceptedCategories,
      'isVerified': isVerified,
    };
  }

  @override
  String toString() {
    return _isc.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _OrganisationImpl extends Organisation {
  _OrganisationImpl({
    int? id,
    required String name,
    required String type,
    required int maxCapacityMeals,
    required double serviceAreaKm,
    required double latitude,
    required double longitude,
    required String address,
    required String operatingHoursStart,
    required String operatingHoursEnd,
    required String acceptedCategories,
    required bool isVerified,
  }) : super._(
         id: id,
         name: name,
         type: type,
         maxCapacityMeals: maxCapacityMeals,
         serviceAreaKm: serviceAreaKm,
         latitude: latitude,
         longitude: longitude,
         address: address,
         operatingHoursStart: operatingHoursStart,
         operatingHoursEnd: operatingHoursEnd,
         acceptedCategories: acceptedCategories,
         isVerified: isVerified,
       );

  /// Returns a shallow copy of this [Organisation]
  /// with some or all fields replaced by the given arguments.
  @_isc.useResult
  @override
  Organisation copyWith({
    Object? id = _Undefined,
    String? name,
    String? type,
    int? maxCapacityMeals,
    double? serviceAreaKm,
    double? latitude,
    double? longitude,
    String? address,
    String? operatingHoursStart,
    String? operatingHoursEnd,
    String? acceptedCategories,
    bool? isVerified,
  }) {
    return Organisation(
      id: id is int? ? id : this.id,
      name: name ?? this.name,
      type: type ?? this.type,
      maxCapacityMeals: maxCapacityMeals ?? this.maxCapacityMeals,
      serviceAreaKm: serviceAreaKm ?? this.serviceAreaKm,
      latitude: latitude ?? this.latitude,
      longitude: longitude ?? this.longitude,
      address: address ?? this.address,
      operatingHoursStart: operatingHoursStart ?? this.operatingHoursStart,
      operatingHoursEnd: operatingHoursEnd ?? this.operatingHoursEnd,
      acceptedCategories: acceptedCategories ?? this.acceptedCategories,
      isVerified: isVerified ?? this.isVerified,
    );
  }
}
