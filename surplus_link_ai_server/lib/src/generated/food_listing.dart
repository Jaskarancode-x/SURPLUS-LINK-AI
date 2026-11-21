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
import 'dart:async' as _ida;
import 'package:serverpod/serverpod.dart' as _is;

abstract class FoodListing
    implements _is.TableRow<int?>, _is.ProtocolSerialization {
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
      availableUntil: _is.DateTimeJsonExtension.fromJson(
        jsonSerialization['availableUntil'],
      ),
      pickupVenue: jsonSerialization['pickupVenue'] as String,
      latitude: (jsonSerialization['latitude'] as num?)?.toDouble(),
      longitude: (jsonSerialization['longitude'] as num?)?.toDouble(),
      handlingNotes: jsonSerialization['handlingNotes'] as String?,
      missingFieldsFlagged: _is.BoolJsonExtension.fromJson(
        jsonSerialization['missingFieldsFlagged'],
      ),
      status: jsonSerialization['status'] as String,
      acceptedNgoId: jsonSerialization['acceptedNgoId'] as int?,
      rescueSessionId: jsonSerialization['rescueSessionId'] as int?,
      createdAt: _is.DateTimeJsonExtension.fromJson(
        jsonSerialization['createdAt'],
      ),
    );
  }

  static final t = FoodListingTable();

  static const db = FoodListingRepository._();

  @override
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

  @override
  _is.Table<int?> get table => t;

  /// Returns a shallow copy of this [FoodListing]
  /// with some or all fields replaced by the given arguments.
  @_is.useResult
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

  static FoodListingInclude include() {
    return FoodListingInclude._();
  }

  static FoodListingIncludeList includeList({
    _is.WhereExpressionBuilder<FoodListingTable>? where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<FoodListingTable>? orderBy,
    _is.OrderByListBuilder<FoodListingTable>? orderByList,
    FoodListingInclude? include,
  }) {
    return FoodListingIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(FoodListing.t),
      orderByList: orderByList?.call(FoodListing.t),
      include: include,
    );
  }

  @override
  String toString() {
    return _is.SerializationManager.encode(this);
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
  @_is.useResult
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

class FoodListingUpdateTable extends _is.UpdateTable<FoodListingTable> {
  FoodListingUpdateTable(super.table);

  _is.ColumnValue<int, int> donorUserId(int value) => _is.ColumnValue(
    table.donorUserId,
    value,
  );

  _is.ColumnValue<int, int> organisationId(int? value) => _is.ColumnValue(
    table.organisationId,
    value,
  );

  _is.ColumnValue<String, String> title(String value) => _is.ColumnValue(
    table.title,
    value,
  );

  _is.ColumnValue<String, String> rawDescription(String value) =>
      _is.ColumnValue(
        table.rawDescription,
        value,
      );

  _is.ColumnValue<String, String> category(String value) => _is.ColumnValue(
    table.category,
    value,
  );

  _is.ColumnValue<int, int> quantity(int value) => _is.ColumnValue(
    table.quantity,
    value,
  );

  _is.ColumnValue<String, String> unit(String value) => _is.ColumnValue(
    table.unit,
    value,
  );

  _is.ColumnValue<DateTime, DateTime> availableUntil(DateTime value) =>
      _is.ColumnValue(
        table.availableUntil,
        value,
      );

  _is.ColumnValue<String, String> pickupVenue(String value) => _is.ColumnValue(
    table.pickupVenue,
    value,
  );

  _is.ColumnValue<double, double> latitude(double? value) => _is.ColumnValue(
    table.latitude,
    value,
  );

  _is.ColumnValue<double, double> longitude(double? value) => _is.ColumnValue(
    table.longitude,
    value,
  );

  _is.ColumnValue<String, String> handlingNotes(String? value) =>
      _is.ColumnValue(
        table.handlingNotes,
        value,
      );

  _is.ColumnValue<bool, bool> missingFieldsFlagged(bool value) =>
      _is.ColumnValue(
        table.missingFieldsFlagged,
        value,
      );

  _is.ColumnValue<String, String> status(String value) => _is.ColumnValue(
    table.status,
    value,
  );

  _is.ColumnValue<int, int> acceptedNgoId(int? value) => _is.ColumnValue(
    table.acceptedNgoId,
    value,
  );

  _is.ColumnValue<int, int> rescueSessionId(int? value) => _is.ColumnValue(
    table.rescueSessionId,
    value,
  );

  _is.ColumnValue<DateTime, DateTime> createdAt(DateTime value) =>
      _is.ColumnValue(
        table.createdAt,
        value,
      );
}

class FoodListingTable extends _is.Table<int?> {
  FoodListingTable({super.tableRelation}) : super(tableName: 'food_listing') {
    updateTable = FoodListingUpdateTable(this);
    donorUserId = _is.ColumnInt(
      'donorUserId',
      this,
    );
    organisationId = _is.ColumnInt(
      'organisationId',
      this,
    );
    title = _is.ColumnString(
      'title',
      this,
    );
    rawDescription = _is.ColumnString(
      'rawDescription',
      this,
    );
    category = _is.ColumnString(
      'category',
      this,
    );
    quantity = _is.ColumnInt(
      'quantity',
      this,
    );
    unit = _is.ColumnString(
      'unit',
      this,
    );
    availableUntil = _is.ColumnDateTime(
      'availableUntil',
      this,
    );
    pickupVenue = _is.ColumnString(
      'pickupVenue',
      this,
    );
    latitude = _is.ColumnDouble(
      'latitude',
      this,
    );
    longitude = _is.ColumnDouble(
      'longitude',
      this,
    );
    handlingNotes = _is.ColumnString(
      'handlingNotes',
      this,
    );
    missingFieldsFlagged = _is.ColumnBool(
      'missingFieldsFlagged',
      this,
    );
    status = _is.ColumnString(
      'status',
      this,
    );
    acceptedNgoId = _is.ColumnInt(
      'acceptedNgoId',
      this,
    );
    rescueSessionId = _is.ColumnInt(
      'rescueSessionId',
      this,
    );
    createdAt = _is.ColumnDateTime(
      'createdAt',
      this,
    );
  }

  late final FoodListingUpdateTable updateTable;

  late final _is.ColumnInt donorUserId;

  late final _is.ColumnInt organisationId;

  late final _is.ColumnString title;

  late final _is.ColumnString rawDescription;

  late final _is.ColumnString category;

  late final _is.ColumnInt quantity;

  late final _is.ColumnString unit;

  late final _is.ColumnDateTime availableUntil;

  late final _is.ColumnString pickupVenue;

  late final _is.ColumnDouble latitude;

  late final _is.ColumnDouble longitude;

  late final _is.ColumnString handlingNotes;

  late final _is.ColumnBool missingFieldsFlagged;

  late final _is.ColumnString status;

  late final _is.ColumnInt acceptedNgoId;

  late final _is.ColumnInt rescueSessionId;

  late final _is.ColumnDateTime createdAt;

  @override
  List<_is.Column> get columns => [
    id,
    donorUserId,
    organisationId,
    title,
    rawDescription,
    category,
    quantity,
    unit,
    availableUntil,
    pickupVenue,
    latitude,
    longitude,
    handlingNotes,
    missingFieldsFlagged,
    status,
    acceptedNgoId,
    rescueSessionId,
    createdAt,
  ];
}

class FoodListingInclude extends _is.IncludeObject {
  FoodListingInclude._();

  @override
  Map<String, _is.Include?> get includes => {};

  @override
  _is.Table<int?> get table => FoodListing.t;
}

class FoodListingIncludeList extends _is.IncludeList {
  FoodListingIncludeList._({
    _is.WhereExpressionBuilder<FoodListingTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(FoodListing.t);
  }

  @override
  Map<String, _is.Include?> get includes => include?.includes ?? {};

  @override
  _is.Table<int?> get table => FoodListing.t;
}

class FoodListingRepository {
  const FoodListingRepository._();

  /// Returns a list of [FoodListing]s matching the given query parameters.
  ///
  /// Use [where] to specify which items to include in the return value.
  /// If none is specified, all items will be returned.
  ///
  /// To specify the order of the items use [orderBy] or [orderByList]
  /// when sorting by multiple columns.
  ///
  /// The maximum number of items can be set by [limit]. If no limit is set,
  /// all items matching the query will be returned.
  ///
  /// [offset] defines how many items to skip, after which [limit] (or all)
  /// items are read from the database.
  ///
  /// ```dart
  /// var persons = await Persons.db.find(
  ///   session,
  ///   where: (t) => t.lastName.equals('Jones'),
  ///   orderBy: (t) => t.firstName,
  ///   limit: 100,
  /// );
  /// ```
  Future<List<FoodListing>> find(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<FoodListingTable>? where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<FoodListingTable>? orderBy,
    _is.OrderByListBuilder<FoodListingTable>? orderByList,
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.find<FoodListing>(
      where: where?.call(FoodListing.t),
      orderBy: orderBy?.call(FoodListing.t),
      orderByList: orderByList?.call(FoodListing.t),
      limit: limit,
      offset: offset,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Emits [FoodListing]s matching the given query parameters every time the
  /// source tables are modified.
  ///
  /// Use [where] to specify which items to include in the return value.
  /// If none is specified, all items will be returned.
  ///
  /// To specify the order of the items use [orderBy] or [orderByList]
  /// when sorting by multiple columns.
  ///
  /// The maximum number of items can be set by [limit]. If no limit is set,
  /// all items matching the query will be returned.
  ///
  /// [offset] defines how many items to skip, after which [limit] (or all)
  /// items are read from the database.
  ///
  /// Use [throttle] to specify the minimum interval between queries. It can
  /// also be set to `null`, in which case the stream will only be throttled
  /// when its subscription is paused.
  ///
  /// Source tables are collected from the queried table, [where], [orderBy],
  /// [orderByList], and the [include] graph. [alsoTriggerOnTables] is added
  /// to that set. Pass [Table] instances such as `FoodListing.t`.
  ///
  /// Raw [Expression] SQL is not inspected. Tables referenced only in raw
  /// SQL must be passed via [alsoTriggerOnTables].
  ///
  /// The stream always reads committed state and never joins an ambient
  /// [Transaction]. Emissions for a write fire after that write commits.
  ///
  /// Currently only supported on SQLite. Calling this method on PostgreSQL
  /// throws an [UnsupportedError].
  ///
  /// ```dart
  /// var subscription = Persons.db.watch(
  ///   session,
  ///   where: (t) => t.lastName.equals('Jones'),
  ///   orderBy: (t) => t.firstName,
  ///   limit: 100,
  /// ).listen((persons) {
  ///   // Handle the latest matching rows.
  /// });
  /// ```
  _ida.Stream<List<FoodListing>> watch(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<FoodListingTable>? where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<FoodListingTable>? orderBy,
    _is.OrderByListBuilder<FoodListingTable>? orderByList,
    Duration? throttle = const Duration(milliseconds: 30),
    Iterable<_is.Table>? alsoTriggerOnTables,
  }) {
    return session.db.watch<FoodListing>(
      where: where?.call(FoodListing.t),
      orderBy: orderBy?.call(FoodListing.t),
      orderByList: orderByList?.call(FoodListing.t),
      limit: limit,
      offset: offset,
      throttle: throttle,
      alsoTriggerOnTables: alsoTriggerOnTables,
    );
  }

  /// Returns the first matching [FoodListing] matching the given query parameters.
  ///
  /// Use [where] to specify which items to include in the return value.
  /// If none is specified, all items will be returned.
  ///
  /// To specify the order use [orderBy] or [orderByList]
  /// when sorting by multiple columns.
  ///
  /// [offset] defines how many items to skip, after which the next one will be picked.
  ///
  /// ```dart
  /// var youngestPerson = await Persons.db.findFirstRow(
  ///   session,
  ///   where: (t) => t.lastName.equals('Jones'),
  ///   orderBy: (t) => t.age,
  /// );
  /// ```
  Future<FoodListing?> findFirstRow(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<FoodListingTable>? where,
    int? offset,
    _is.OrderByBuilder<FoodListingTable>? orderBy,
    _is.OrderByListBuilder<FoodListingTable>? orderByList,
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.findFirstRow<FoodListing>(
      where: where?.call(FoodListing.t),
      orderBy: orderBy?.call(FoodListing.t),
      orderByList: orderByList?.call(FoodListing.t),
      offset: offset,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Finds a single [FoodListing] by its [id] or null if no such row exists.
  Future<FoodListing?> findById(
    _is.DatabaseSession session,
    int id, {
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.findById<FoodListing>(
      id,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Inserts all [FoodListing]s in the list and returns the inserted rows.
  ///
  /// The returned [FoodListing]s will have their `id` fields set.
  ///
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// insert, none of the rows will be inserted.
  ///
  /// If [ignoreConflicts] is set to `true`, rows that conflict with existing
  /// rows are silently skipped, and only the successfully inserted rows are
  /// returned.
  ///
  /// If [noReturn] is set to `true`, the inserted rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<FoodListing>> insert(
    _is.DatabaseSession session,
    List<FoodListing> rows, {
    _is.Transaction? transaction,
    bool ignoreConflicts = false,
    bool noReturn = false,
  }) async {
    return session.db.insert<FoodListing>(
      rows,
      transaction: transaction,
      ignoreConflicts: ignoreConflicts,
      noReturn: noReturn,
    );
  }

  /// Inserts a single [FoodListing] and returns the inserted row.
  ///
  /// The returned [FoodListing] will have its `id` field set.
  Future<FoodListing> insertRow(
    _is.DatabaseSession session,
    FoodListing row, {
    _is.Transaction? transaction,
  }) async {
    return session.db.insertRow<FoodListing>(
      row,
      transaction: transaction,
    );
  }

  /// Upserts all [FoodListing]s in the list and returns the resulting rows.
  ///
  /// If a row conflicts on the given [conflictColumns], the existing row is
  /// updated with the new values. Otherwise, a new row is inserted.
  ///
  /// If [updateColumns] is provided, only those columns will be updated on
  /// conflict. If null, all non-conflict, non-id columns are updated.
  ///
  /// If [updateWhere] is provided, the update only applies to rows matching the
  /// given expression. Conflicting rows that don't match are skipped and not
  /// returned, so the resulting list may be shorter than [rows].
  ///
  /// The returned [FoodListing]s will have their `id` fields set.
  ///
  /// This is an atomic operation, meaning that if one of the rows fails,
  /// none of the rows will be affected.
  ///
  /// If [noReturn] is set to `true`, the resulting rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<FoodListing>> upsert(
    _is.DatabaseSession session,
    List<FoodListing> rows, {
    required _is.ColumnSelections<FoodListingTable> conflictColumns,
    _is.ColumnSelections<FoodListingTable>? updateColumns,
    _is.WhereExpressionBuilder<FoodListingTable>? updateWhere,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.upsert<FoodListing>(
      rows,
      conflictColumns: conflictColumns(FoodListing.t),
      updateColumns: updateColumns?.call(FoodListing.t),
      updateWhere: updateWhere?.call(FoodListing.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Upserts a single [FoodListing] and returns the resulting row.
  ///
  /// If the row conflicts on the given [conflictColumns], the existing row is
  /// updated. Otherwise, a new row is inserted.
  ///
  /// If [updateColumns] is provided, only those columns will be updated on
  /// conflict. If null, all non-conflict, non-id columns are updated.
  ///
  /// If [updateWhere] is provided, the update only applies when the existing
  /// row matches the expression. Returns `null` if no row was affected — for
  /// example when [updateWhere] does not match the conflicting row.
  ///
  /// The returned [FoodListing] will have its `id` field set.
  Future<FoodListing?> upsertRow(
    _is.DatabaseSession session,
    FoodListing row, {
    required _is.ColumnSelections<FoodListingTable> conflictColumns,
    _is.ColumnSelections<FoodListingTable>? updateColumns,
    _is.WhereExpressionBuilder<FoodListingTable>? updateWhere,
    _is.Transaction? transaction,
  }) async {
    return session.db.upsertRow<FoodListing>(
      row,
      conflictColumns: conflictColumns(FoodListing.t),
      updateColumns: updateColumns?.call(FoodListing.t),
      updateWhere: updateWhere?.call(FoodListing.t),
      transaction: transaction,
    );
  }

  /// Updates all [FoodListing]s in the list and returns the updated rows. If
  /// [columns] is provided, only those columns will be updated. Defaults to
  /// all columns.
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// update, none of the rows will be updated.
  ///
  /// If [noReturn] is set to `true`, the updated rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<FoodListing>> update(
    _is.DatabaseSession session,
    List<FoodListing> rows, {
    _is.ColumnSelections<FoodListingTable>? columns,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.update<FoodListing>(
      rows,
      columns: columns?.call(FoodListing.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Updates a single [FoodListing]. The row needs to have its id set.
  /// Optionally, a list of [columns] can be provided to only update those
  /// columns. Defaults to all columns.
  Future<FoodListing> updateRow(
    _is.DatabaseSession session,
    FoodListing row, {
    _is.ColumnSelections<FoodListingTable>? columns,
    _is.Transaction? transaction,
  }) async {
    return session.db.updateRow<FoodListing>(
      row,
      columns: columns?.call(FoodListing.t),
      transaction: transaction,
    );
  }

  /// Updates a single [FoodListing] by its [id] with the specified [columnValues].
  /// Returns the updated row or null if no row with the given id exists.
  Future<FoodListing?> updateById(
    _is.DatabaseSession session,
    int id, {
    required _is.ColumnValueListBuilder<FoodListingUpdateTable> columnValues,
    _is.Transaction? transaction,
  }) async {
    return session.db.updateById<FoodListing>(
      id,
      columnValues: columnValues(FoodListing.t.updateTable),
      transaction: transaction,
    );
  }

  /// Updates all [FoodListing]s matching the [where] expression with the specified [columnValues].
  /// Returns the list of updated rows.
  ///
  /// If [noReturn] is set to `true`, the updated rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<FoodListing>> updateWhere(
    _is.DatabaseSession session, {
    required _is.ColumnValueListBuilder<FoodListingUpdateTable> columnValues,
    required _is.WhereExpressionBuilder<FoodListingTable> where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<FoodListingTable>? orderBy,
    _is.OrderByListBuilder<FoodListingTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.updateWhere<FoodListing>(
      columnValues: columnValues(FoodListing.t.updateTable),
      where: where(FoodListing.t),
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(FoodListing.t),
      orderByList: orderByList?.call(FoodListing.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Deletes all [FoodListing]s in the list and returns the deleted rows.
  ///
  /// To specify the order of the returned rows use [orderBy] or [orderByList]
  /// when sorting by multiple columns.
  ///
  /// This is an atomic operation, meaning that if one of the rows fail to
  /// be deleted, none of the rows will be deleted.
  ///
  /// If [noReturn] is set to `true`, the deleted rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<FoodListing>> delete(
    _is.DatabaseSession session,
    List<FoodListing> rows, {
    _is.OrderByBuilder<FoodListingTable>? orderBy,
    _is.OrderByListBuilder<FoodListingTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.delete<FoodListing>(
      rows,
      orderBy: orderBy?.call(FoodListing.t),
      orderByList: orderByList?.call(FoodListing.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Deletes a single [FoodListing].
  Future<FoodListing> deleteRow(
    _is.DatabaseSession session,
    FoodListing row, {
    _is.Transaction? transaction,
  }) async {
    return session.db.deleteRow<FoodListing>(
      row,
      transaction: transaction,
    );
  }

  /// Deletes all rows matching the [where] expression.
  ///
  /// To specify the order of the returned rows use [orderBy] or [orderByList]
  /// when sorting by multiple columns.
  ///
  /// If [noReturn] is set to `true`, the deleted rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<FoodListing>> deleteWhere(
    _is.DatabaseSession session, {
    required _is.WhereExpressionBuilder<FoodListingTable> where,
    _is.OrderByBuilder<FoodListingTable>? orderBy,
    _is.OrderByListBuilder<FoodListingTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.deleteWhere<FoodListing>(
      where: where(FoodListing.t),
      orderBy: orderBy?.call(FoodListing.t),
      orderByList: orderByList?.call(FoodListing.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Counts the number of rows matching the [where] expression. If omitted,
  /// will return the count of all rows in the table.
  Future<int> count(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<FoodListingTable>? where,
    int? limit,
    _is.Transaction? transaction,
  }) async {
    return session.db.count<FoodListing>(
      where: where?.call(FoodListing.t),
      limit: limit,
      transaction: transaction,
    );
  }

  /// Acquires row-level locks on [FoodListing] rows matching the [where] expression.
  Future<void> lockRows(
    _is.DatabaseSession session, {
    required _is.WhereExpressionBuilder<FoodListingTable> where,
    required _is.LockMode lockMode,
    required _is.Transaction transaction,
    _is.LockBehavior lockBehavior = _is.LockBehavior.wait,
  }) async {
    return session.db.lockRows<FoodListing>(
      where: where(FoodListing.t),
      lockMode: lockMode,
      lockBehavior: lockBehavior,
      transaction: transaction,
    );
  }
}
