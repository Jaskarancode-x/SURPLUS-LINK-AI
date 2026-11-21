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

abstract class FoodListing
    implements _isc.SerializableModel, _isc.ProtocolSerialization {
  FoodListing._({
    this.id,
    required this.donorUserId,
    this.organisationId,
    required this.title,
    required this.rawDescription,
    required this.category,
    required this.quantity,
    required this.unit,
    required this.availableUntil,
    required this.pickupVenue,
    this.latitude,
    this.longitude,
    this.handlingNotes,
    required this.missingFieldsFlagged,
    required this.status,
    this.acceptedNgoId,
    this.rescueSessionId,
    required this.createdAt,
  });

  factory FoodListing({
    int? id,
    required int donorUserId,
    int? organisationId,
    required String title,
    required String rawDescription,
    required String category,
    required int quantity,
    required String unit,
    required DateTime availableUntil,
    required String pickupVenue,
    double? latitude,
    double? longitude,
    String? handlingNotes,
    required bool missingFieldsFlagged,
    required String status,
    int? acceptedNgoId,
    int? rescueSessionId,
    required DateTime createdAt,
  }) = _FoodListingImpl;

  factory FoodListing.fromJson(Map<String, dynamic> jsonSerialization) {
    return FoodListing(
      id: jsonSerialization['id'] as int?,
      donorUserId: jsonSerialization['donorUserId'] as int,
      organisationId: jsonSerialization['organisationId'] as int?,
      title: jsonSerialization['title'] as String,
      rawDescription: jsonSerialization['rawDescription'] as String,
      category: jsonSerialization['category'] as String,
      quantity: jsonSerialization['quantity'] as int,
      unit: jsonSerialization['unit'] as String,
      availableUntil: _isc.DateTimeJsonExtension.fromJson(
        jsonSerialization['availableUntil'],
      ),
      pickupVenue: jsonSerialization['pickupVenue'] as String,
      latitude: (jsonSerialization['latitude'] as num?)?.toDouble(),
      longitude: (jsonSerialization['longitude'] as num?)?.toDouble(),
      handlingNotes: jsonSerialization['handlingNotes'] as String?,
      missingFieldsFlagged: _isc.BoolJsonExtension.fromJson(
        jsonSerialization['missingFieldsFlagged'],
      ),
      status: jsonSerialization['status'] as String,
      acceptedNgoId: jsonSerialization['acceptedNgoId'] as int?,
      rescueSessionId: jsonSerialization['rescueSessionId'] as int?,
      createdAt: _isc.DateTimeJsonExtension.fromJson(
        jsonSerialization['createdAt'],
      ),
    );
  }

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  int? id;

  int donorUserId;

  int? organisationId;

  String title;

  String rawDescription;

  String category;

  int quantity;

  String unit;

  DateTime availableUntil;

  String pickupVenue;

  double? latitude;

  double? longitude;

  String? handlingNotes;

  bool missingFieldsFlagged;

  String status;

  int? acceptedNgoId;

  int? rescueSessionId;

  DateTime createdAt;

  /// Returns a shallow copy of this [FoodListing]
  /// with some or all fields replaced by the given arguments.
  @_isc.useResult
  FoodListing copyWith({
    int? id,
    int? donorUserId,
    int? organisationId,
    String? title,
    String? rawDescription,
    String? category,
    int? quantity,
    String? unit,
    DateTime? availableUntil,
    String? pickupVenue,
    double? latitude,
    double? longitude,
    String? handlingNotes,
    bool? missingFieldsFlagged,
    String? status,
    int? acceptedNgoId,
    int? rescueSessionId,
    DateTime? createdAt,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'FoodListing',
      if (id != null) 'id': id,
      'donorUserId': donorUserId,
      if (organisationId != null) 'organisationId': organisationId,
      'title': title,
      'rawDescription': rawDescription,
      'category': category,
      'quantity': quantity,
      'unit': unit,
      'availableUntil': availableUntil.toJson(),
      'pickupVenue': pickupVenue,
      if (latitude != null) 'latitude': latitude,
      if (longitude != null) 'longitude': longitude,
      if (handlingNotes != null) 'handlingNotes': handlingNotes,
      'missingFieldsFlagged': missingFieldsFlagged,
      'status': status,
      if (acceptedNgoId != null) 'acceptedNgoId': acceptedNgoId,
      if (rescueSessionId != null) 'rescueSessionId': rescueSessionId,
      'createdAt': createdAt.toJson(),
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'FoodListing',
      if (id != null) 'id': id,
      'donorUserId': donorUserId,
      if (organisationId != null) 'organisationId': organisationId,
      'title': title,
      'rawDescription': rawDescription,
      'category': category,
      'quantity': quantity,
      'unit': unit,
      'availableUntil': availableUntil.toJson(),
      'pickupVenue': pickupVenue,
      if (latitude != null) 'latitude': latitude,
      if (longitude != null) 'longitude': longitude,
      if (handlingNotes != null) 'handlingNotes': handlingNotes,
      'missingFieldsFlagged': missingFieldsFlagged,
      'status': status,
      if (acceptedNgoId != null) 'acceptedNgoId': acceptedNgoId,
      if (rescueSessionId != null) 'rescueSessionId': rescueSessionId,
      'createdAt': createdAt.toJson(),
    };
  }

  @override
  String toString() {
    return _isc.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _FoodListingImpl extends FoodListing {
  _FoodListingImpl({
    int? id,
    required int donorUserId,
    int? organisationId,
    required String title,
    required String rawDescription,
    required String category,
    required int quantity,
    required String unit,
    required DateTime availableUntil,
    required String pickupVenue,
    double? latitude,
    double? longitude,
    String? handlingNotes,
    required bool missingFieldsFlagged,
    required String status,
    int? acceptedNgoId,
    int? rescueSessionId,
    required DateTime createdAt,
  }) : super._(
         id: id,
         donorUserId: donorUserId,
         organisationId: organisationId,
         title: title,
         rawDescription: rawDescription,
         category: category,
         quantity: quantity,
         unit: unit,
         availableUntil: availableUntil,
         pickupVenue: pickupVenue,
         latitude: latitude,
         longitude: longitude,
         handlingNotes: handlingNotes,
         missingFieldsFlagged: missingFieldsFlagged,
         status: status,
         acceptedNgoId: acceptedNgoId,
         rescueSessionId: rescueSessionId,
         createdAt: createdAt,
       );

  /// Returns a shallow copy of this [FoodListing]
  /// with some or all fields replaced by the given arguments.
  @_isc.useResult
  @override
  FoodListing copyWith({
    Object? id = _Undefined,
    int? donorUserId,
    Object? organisationId = _Undefined,
    String? title,
    String? rawDescription,
    String? category,
    int? quantity,
    String? unit,
    DateTime? availableUntil,
    String? pickupVenue,
    Object? latitude = _Undefined,
    Object? longitude = _Undefined,
    Object? handlingNotes = _Undefined,
    bool? missingFieldsFlagged,
    String? status,
    Object? acceptedNgoId = _Undefined,
    Object? rescueSessionId = _Undefined,
    DateTime? createdAt,
  }) {
    return FoodListing(
      id: id is int? ? id : this.id,
      donorUserId: donorUserId ?? this.donorUserId,
      organisationId: organisationId is int?
          ? organisationId
          : this.organisationId,
      title: title ?? this.title,
      rawDescription: rawDescription ?? this.rawDescription,
      category: category ?? this.category,
      quantity: quantity ?? this.quantity,
      unit: unit ?? this.unit,
      availableUntil: availableUntil ?? this.availableUntil,
      pickupVenue: pickupVenue ?? this.pickupVenue,
      latitude: latitude is double? ? latitude : this.latitude,
      longitude: longitude is double? ? longitude : this.longitude,
      handlingNotes: handlingNotes is String?
          ? handlingNotes
          : this.handlingNotes,
      missingFieldsFlagged: missingFieldsFlagged ?? this.missingFieldsFlagged,
      status: status ?? this.status,
      acceptedNgoId: acceptedNgoId is int? ? acceptedNgoId : this.acceptedNgoId,
      rescueSessionId: rescueSessionId is int?
          ? rescueSessionId
          : this.rescueSessionId,
      createdAt: createdAt ?? this.createdAt,
    );
  }
}
