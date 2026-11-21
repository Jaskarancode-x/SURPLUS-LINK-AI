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

abstract class Organisation
    implements _is.TableRow<int?>, _is.ProtocolSerialization {
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
      isVerified: _is.BoolJsonExtension.fromJson(
        jsonSerialization['isVerified'],
      ),
    );
  }

  static final t = OrganisationTable();

  static const db = OrganisationRepository._();

  @override
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

  @override
  _is.Table<int?> get table => t;

  /// Returns a shallow copy of this [Organisation]
  /// with some or all fields replaced by the given arguments.
  @_is.useResult
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

  static OrganisationInclude include() {
    return OrganisationInclude._();
  }

  static OrganisationIncludeList includeList({
    _is.WhereExpressionBuilder<OrganisationTable>? where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<OrganisationTable>? orderBy,
    _is.OrderByListBuilder<OrganisationTable>? orderByList,
    OrganisationInclude? include,
  }) {
    return OrganisationIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(Organisation.t),
      orderByList: orderByList?.call(Organisation.t),
      include: include,
    );
  }

  @override
  String toString() {
    return _is.SerializationManager.encode(this);
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
  @_is.useResult
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

class OrganisationUpdateTable extends _is.UpdateTable<OrganisationTable> {
  OrganisationUpdateTable(super.table);

  _is.ColumnValue<String, String> name(String value) => _is.ColumnValue(
    table.name,
    value,
  );

  _is.ColumnValue<String, String> type(String value) => _is.ColumnValue(
    table.type,
    value,
  );

  _is.ColumnValue<int, int> maxCapacityMeals(int value) => _is.ColumnValue(
    table.maxCapacityMeals,
    value,
  );

  _is.ColumnValue<double, double> serviceAreaKm(double value) =>
      _is.ColumnValue(
        table.serviceAreaKm,
        value,
      );

  _is.ColumnValue<double, double> latitude(double value) => _is.ColumnValue(
    table.latitude,
    value,
  );

  _is.ColumnValue<double, double> longitude(double value) => _is.ColumnValue(
    table.longitude,
    value,
  );

  _is.ColumnValue<String, String> address(String value) => _is.ColumnValue(
    table.address,
    value,
  );

  _is.ColumnValue<String, String> operatingHoursStart(String value) =>
      _is.ColumnValue(
        table.operatingHoursStart,
        value,
      );

  _is.ColumnValue<String, String> operatingHoursEnd(String value) =>
      _is.ColumnValue(
        table.operatingHoursEnd,
        value,
      );

  _is.ColumnValue<String, String> acceptedCategories(String value) =>
      _is.ColumnValue(
        table.acceptedCategories,
        value,
      );

  _is.ColumnValue<bool, bool> isVerified(bool value) => _is.ColumnValue(
    table.isVerified,
    value,
  );
}

class OrganisationTable extends _is.Table<int?> {
  OrganisationTable({super.tableRelation}) : super(tableName: 'organisation') {
    updateTable = OrganisationUpdateTable(this);
    name = _is.ColumnString(
      'name',
      this,
    );
    type = _is.ColumnString(
      'type',
      this,
    );
    maxCapacityMeals = _is.ColumnInt(
      'maxCapacityMeals',
      this,
    );
    serviceAreaKm = _is.ColumnDouble(
      'serviceAreaKm',
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
    address = _is.ColumnString(
      'address',
      this,
    );
    operatingHoursStart = _is.ColumnString(
      'operatingHoursStart',
      this,
    );
    operatingHoursEnd = _is.ColumnString(
      'operatingHoursEnd',
      this,
    );
    acceptedCategories = _is.ColumnString(
      'acceptedCategories',
      this,
    );
    isVerified = _is.ColumnBool(
      'isVerified',
      this,
    );
  }

  late final OrganisationUpdateTable updateTable;

  late final _is.ColumnString name;

  late final _is.ColumnString type;

  late final _is.ColumnInt maxCapacityMeals;

  late final _is.ColumnDouble serviceAreaKm;

  late final _is.ColumnDouble latitude;

  late final _is.ColumnDouble longitude;

  late final _is.ColumnString address;

  late final _is.ColumnString operatingHoursStart;

  late final _is.ColumnString operatingHoursEnd;

  late final _is.ColumnString acceptedCategories;

  late final _is.ColumnBool isVerified;

  @override
  List<_is.Column> get columns => [
    id,
    name,
    type,
    maxCapacityMeals,
    serviceAreaKm,
    latitude,
    longitude,
    address,
    operatingHoursStart,
    operatingHoursEnd,
    acceptedCategories,
    isVerified,
  ];
}

class OrganisationInclude extends _is.IncludeObject {
  OrganisationInclude._();

  @override
  Map<String, _is.Include?> get includes => {};

  @override
  _is.Table<int?> get table => Organisation.t;
}

class OrganisationIncludeList extends _is.IncludeList {
  OrganisationIncludeList._({
    _is.WhereExpressionBuilder<OrganisationTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(Organisation.t);
  }

  @override
  Map<String, _is.Include?> get includes => include?.includes ?? {};

  @override
  _is.Table<int?> get table => Organisation.t;
}

class OrganisationRepository {
  const OrganisationRepository._();

  /// Returns a list of [Organisation]s matching the given query parameters.
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
  Future<List<Organisation>> find(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<OrganisationTable>? where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<OrganisationTable>? orderBy,
    _is.OrderByListBuilder<OrganisationTable>? orderByList,
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.find<Organisation>(
      where: where?.call(Organisation.t),
      orderBy: orderBy?.call(Organisation.t),
      orderByList: orderByList?.call(Organisation.t),
      limit: limit,
      offset: offset,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Emits [Organisation]s matching the given query parameters every time the
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
  /// to that set. Pass [Table] instances such as `Organisation.t`.
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
  _ida.Stream<List<Organisation>> watch(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<OrganisationTable>? where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<OrganisationTable>? orderBy,
    _is.OrderByListBuilder<OrganisationTable>? orderByList,
    Duration? throttle = const Duration(milliseconds: 30),
    Iterable<_is.Table>? alsoTriggerOnTables,
  }) {
    return session.db.watch<Organisation>(
      where: where?.call(Organisation.t),
      orderBy: orderBy?.call(Organisation.t),
      orderByList: orderByList?.call(Organisation.t),
      limit: limit,
      offset: offset,
      throttle: throttle,
      alsoTriggerOnTables: alsoTriggerOnTables,
    );
  }

  /// Returns the first matching [Organisation] matching the given query parameters.
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
  Future<Organisation?> findFirstRow(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<OrganisationTable>? where,
    int? offset,
    _is.OrderByBuilder<OrganisationTable>? orderBy,
    _is.OrderByListBuilder<OrganisationTable>? orderByList,
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.findFirstRow<Organisation>(
      where: where?.call(Organisation.t),
      orderBy: orderBy?.call(Organisation.t),
      orderByList: orderByList?.call(Organisation.t),
      offset: offset,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Finds a single [Organisation] by its [id] or null if no such row exists.
  Future<Organisation?> findById(
    _is.DatabaseSession session,
    int id, {
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.findById<Organisation>(
      id,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Inserts all [Organisation]s in the list and returns the inserted rows.
  ///
  /// The returned [Organisation]s will have their `id` fields set.
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
  Future<List<Organisation>> insert(
    _is.DatabaseSession session,
    List<Organisation> rows, {
    _is.Transaction? transaction,
    bool ignoreConflicts = false,
    bool noReturn = false,
  }) async {
    return session.db.insert<Organisation>(
      rows,
      transaction: transaction,
      ignoreConflicts: ignoreConflicts,
      noReturn: noReturn,
    );
  }

  /// Inserts a single [Organisation] and returns the inserted row.
  ///
  /// The returned [Organisation] will have its `id` field set.
  Future<Organisation> insertRow(
    _is.DatabaseSession session,
    Organisation row, {
    _is.Transaction? transaction,
  }) async {
    return session.db.insertRow<Organisation>(
      row,
      transaction: transaction,
    );
  }

  /// Upserts all [Organisation]s in the list and returns the resulting rows.
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
  /// The returned [Organisation]s will have their `id` fields set.
  ///
  /// This is an atomic operation, meaning that if one of the rows fails,
  /// none of the rows will be affected.
  ///
  /// If [noReturn] is set to `true`, the resulting rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<Organisation>> upsert(
    _is.DatabaseSession session,
    List<Organisation> rows, {
    required _is.ColumnSelections<OrganisationTable> conflictColumns,
    _is.ColumnSelections<OrganisationTable>? updateColumns,
    _is.WhereExpressionBuilder<OrganisationTable>? updateWhere,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.upsert<Organisation>(
      rows,
      conflictColumns: conflictColumns(Organisation.t),
      updateColumns: updateColumns?.call(Organisation.t),
      updateWhere: updateWhere?.call(Organisation.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Upserts a single [Organisation] and returns the resulting row.
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
  /// The returned [Organisation] will have its `id` field set.
  Future<Organisation?> upsertRow(
    _is.DatabaseSession session,
    Organisation row, {
    required _is.ColumnSelections<OrganisationTable> conflictColumns,
    _is.ColumnSelections<OrganisationTable>? updateColumns,
    _is.WhereExpressionBuilder<OrganisationTable>? updateWhere,
    _is.Transaction? transaction,
  }) async {
    return session.db.upsertRow<Organisation>(
      row,
      conflictColumns: conflictColumns(Organisation.t),
      updateColumns: updateColumns?.call(Organisation.t),
      updateWhere: updateWhere?.call(Organisation.t),
      transaction: transaction,
    );
  }

  /// Updates all [Organisation]s in the list and returns the updated rows. If
  /// [columns] is provided, only those columns will be updated. Defaults to
  /// all columns.
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// update, none of the rows will be updated.
  ///
  /// If [noReturn] is set to `true`, the updated rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<Organisation>> update(
    _is.DatabaseSession session,
    List<Organisation> rows, {
    _is.ColumnSelections<OrganisationTable>? columns,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.update<Organisation>(
      rows,
      columns: columns?.call(Organisation.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Updates a single [Organisation]. The row needs to have its id set.
  /// Optionally, a list of [columns] can be provided to only update those
  /// columns. Defaults to all columns.
  Future<Organisation> updateRow(
    _is.DatabaseSession session,
    Organisation row, {
    _is.ColumnSelections<OrganisationTable>? columns,
    _is.Transaction? transaction,
  }) async {
    return session.db.updateRow<Organisation>(
      row,
      columns: columns?.call(Organisation.t),
      transaction: transaction,
    );
  }

  /// Updates a single [Organisation] by its [id] with the specified [columnValues].
  /// Returns the updated row or null if no row with the given id exists.
  Future<Organisation?> updateById(
    _is.DatabaseSession session,
    int id, {
    required _is.ColumnValueListBuilder<OrganisationUpdateTable> columnValues,
    _is.Transaction? transaction,
  }) async {
    return session.db.updateById<Organisation>(
      id,
      columnValues: columnValues(Organisation.t.updateTable),
      transaction: transaction,
    );
  }

  /// Updates all [Organisation]s matching the [where] expression with the specified [columnValues].
  /// Returns the list of updated rows.
  ///
  /// If [noReturn] is set to `true`, the updated rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<Organisation>> updateWhere(
    _is.DatabaseSession session, {
    required _is.ColumnValueListBuilder<OrganisationUpdateTable> columnValues,
    required _is.WhereExpressionBuilder<OrganisationTable> where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<OrganisationTable>? orderBy,
    _is.OrderByListBuilder<OrganisationTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.updateWhere<Organisation>(
      columnValues: columnValues(Organisation.t.updateTable),
      where: where(Organisation.t),
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(Organisation.t),
      orderByList: orderByList?.call(Organisation.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Deletes all [Organisation]s in the list and returns the deleted rows.
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
  Future<List<Organisation>> delete(
    _is.DatabaseSession session,
    List<Organisation> rows, {
    _is.OrderByBuilder<OrganisationTable>? orderBy,
    _is.OrderByListBuilder<OrganisationTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.delete<Organisation>(
      rows,
      orderBy: orderBy?.call(Organisation.t),
      orderByList: orderByList?.call(Organisation.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Deletes a single [Organisation].
  Future<Organisation> deleteRow(
    _is.DatabaseSession session,
    Organisation row, {
    _is.Transaction? transaction,
  }) async {
    return session.db.deleteRow<Organisation>(
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
  Future<List<Organisation>> deleteWhere(
    _is.DatabaseSession session, {
    required _is.WhereExpressionBuilder<OrganisationTable> where,
    _is.OrderByBuilder<OrganisationTable>? orderBy,
    _is.OrderByListBuilder<OrganisationTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.deleteWhere<Organisation>(
      where: where(Organisation.t),
      orderBy: orderBy?.call(Organisation.t),
      orderByList: orderByList?.call(Organisation.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Counts the number of rows matching the [where] expression. If omitted,
  /// will return the count of all rows in the table.
  Future<int> count(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<OrganisationTable>? where,
    int? limit,
    _is.Transaction? transaction,
  }) async {
    return session.db.count<Organisation>(
      where: where?.call(Organisation.t),
      limit: limit,
      transaction: transaction,
    );
  }

  /// Acquires row-level locks on [Organisation] rows matching the [where] expression.
  Future<void> lockRows(
    _is.DatabaseSession session, {
    required _is.WhereExpressionBuilder<OrganisationTable> where,
    required _is.LockMode lockMode,
    required _is.Transaction transaction,
    _is.LockBehavior lockBehavior = _is.LockBehavior.wait,
  }) async {
    return session.db.lockRows<Organisation>(
      where: where(Organisation.t),
      lockMode: lockMode,
      lockBehavior: lockBehavior,
      transaction: transaction,
    );
  }
}
