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

abstract class PickupAssignment
    implements _is.TableRow<int?>, _is.ProtocolSerialization {
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
      assignedAt: _is.DateTimeJsonExtension.fromJson(
        jsonSerialization['assignedAt'],
      ),
      updatedAt: _is.DateTimeJsonExtension.fromJson(
        jsonSerialization['updatedAt'],
      ),
    );
  }

  static final t = PickupAssignmentTable();

  static const db = PickupAssignmentRepository._();

  @override
  int? id;

  int rescueSessionId;

  int foodListingId;

  int volunteerUserId;

  String pickupStatus;

  String? pickupInstructions;

  DateTime assignedAt;

  DateTime updatedAt;

  @override
  _is.Table<int?> get table => t;

  /// Returns a shallow copy of this [PickupAssignment]
  /// with some or all fields replaced by the given arguments.
  @_is.useResult
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

  static PickupAssignmentInclude include() {
    return PickupAssignmentInclude._();
  }

  static PickupAssignmentIncludeList includeList({
    _is.WhereExpressionBuilder<PickupAssignmentTable>? where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<PickupAssignmentTable>? orderBy,
    _is.OrderByListBuilder<PickupAssignmentTable>? orderByList,
    PickupAssignmentInclude? include,
  }) {
    return PickupAssignmentIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(PickupAssignment.t),
      orderByList: orderByList?.call(PickupAssignment.t),
      include: include,
    );
  }

  @override
  String toString() {
    return _is.SerializationManager.encode(this);
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
  @_is.useResult
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

class PickupAssignmentUpdateTable
    extends _is.UpdateTable<PickupAssignmentTable> {
  PickupAssignmentUpdateTable(super.table);

  _is.ColumnValue<int, int> rescueSessionId(int value) => _is.ColumnValue(
    table.rescueSessionId,
    value,
  );

  _is.ColumnValue<int, int> foodListingId(int value) => _is.ColumnValue(
    table.foodListingId,
    value,
  );

  _is.ColumnValue<int, int> volunteerUserId(int value) => _is.ColumnValue(
    table.volunteerUserId,
    value,
  );

  _is.ColumnValue<String, String> pickupStatus(String value) => _is.ColumnValue(
    table.pickupStatus,
    value,
  );

  _is.ColumnValue<String, String> pickupInstructions(String? value) =>
      _is.ColumnValue(
        table.pickupInstructions,
        value,
      );

  _is.ColumnValue<DateTime, DateTime> assignedAt(DateTime value) =>
      _is.ColumnValue(
        table.assignedAt,
        value,
      );

  _is.ColumnValue<DateTime, DateTime> updatedAt(DateTime value) =>
      _is.ColumnValue(
        table.updatedAt,
        value,
      );
}

class PickupAssignmentTable extends _is.Table<int?> {
  PickupAssignmentTable({super.tableRelation})
    : super(tableName: 'pickup_assignment') {
    updateTable = PickupAssignmentUpdateTable(this);
    rescueSessionId = _is.ColumnInt(
      'rescueSessionId',
      this,
    );
    foodListingId = _is.ColumnInt(
      'foodListingId',
      this,
    );
    volunteerUserId = _is.ColumnInt(
      'volunteerUserId',
      this,
    );
    pickupStatus = _is.ColumnString(
      'pickupStatus',
      this,
    );
    pickupInstructions = _is.ColumnString(
      'pickupInstructions',
      this,
    );
    assignedAt = _is.ColumnDateTime(
      'assignedAt',
      this,
    );
    updatedAt = _is.ColumnDateTime(
      'updatedAt',
      this,
    );
  }

  late final PickupAssignmentUpdateTable updateTable;

  late final _is.ColumnInt rescueSessionId;

  late final _is.ColumnInt foodListingId;

  late final _is.ColumnInt volunteerUserId;

  late final _is.ColumnString pickupStatus;

  late final _is.ColumnString pickupInstructions;

  late final _is.ColumnDateTime assignedAt;

  late final _is.ColumnDateTime updatedAt;

  @override
  List<_is.Column> get columns => [
    id,
    rescueSessionId,
    foodListingId,
    volunteerUserId,
    pickupStatus,
    pickupInstructions,
    assignedAt,
    updatedAt,
  ];
}

class PickupAssignmentInclude extends _is.IncludeObject {
  PickupAssignmentInclude._();

  @override
  Map<String, _is.Include?> get includes => {};

  @override
  _is.Table<int?> get table => PickupAssignment.t;
}

class PickupAssignmentIncludeList extends _is.IncludeList {
  PickupAssignmentIncludeList._({
    _is.WhereExpressionBuilder<PickupAssignmentTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(PickupAssignment.t);
  }

  @override
  Map<String, _is.Include?> get includes => include?.includes ?? {};

  @override
  _is.Table<int?> get table => PickupAssignment.t;
}

class PickupAssignmentRepository {
  const PickupAssignmentRepository._();

  /// Returns a list of [PickupAssignment]s matching the given query parameters.
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
  Future<List<PickupAssignment>> find(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<PickupAssignmentTable>? where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<PickupAssignmentTable>? orderBy,
    _is.OrderByListBuilder<PickupAssignmentTable>? orderByList,
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.find<PickupAssignment>(
      where: where?.call(PickupAssignment.t),
      orderBy: orderBy?.call(PickupAssignment.t),
      orderByList: orderByList?.call(PickupAssignment.t),
      limit: limit,
      offset: offset,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Emits [PickupAssignment]s matching the given query parameters every time the
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
  /// to that set. Pass [Table] instances such as `PickupAssignment.t`.
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
  _ida.Stream<List<PickupAssignment>> watch(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<PickupAssignmentTable>? where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<PickupAssignmentTable>? orderBy,
    _is.OrderByListBuilder<PickupAssignmentTable>? orderByList,
    Duration? throttle = const Duration(milliseconds: 30),
    Iterable<_is.Table>? alsoTriggerOnTables,
  }) {
    return session.db.watch<PickupAssignment>(
      where: where?.call(PickupAssignment.t),
      orderBy: orderBy?.call(PickupAssignment.t),
      orderByList: orderByList?.call(PickupAssignment.t),
      limit: limit,
      offset: offset,
      throttle: throttle,
      alsoTriggerOnTables: alsoTriggerOnTables,
    );
  }

  /// Returns the first matching [PickupAssignment] matching the given query parameters.
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
  Future<PickupAssignment?> findFirstRow(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<PickupAssignmentTable>? where,
    int? offset,
    _is.OrderByBuilder<PickupAssignmentTable>? orderBy,
    _is.OrderByListBuilder<PickupAssignmentTable>? orderByList,
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.findFirstRow<PickupAssignment>(
      where: where?.call(PickupAssignment.t),
      orderBy: orderBy?.call(PickupAssignment.t),
      orderByList: orderByList?.call(PickupAssignment.t),
      offset: offset,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Finds a single [PickupAssignment] by its [id] or null if no such row exists.
  Future<PickupAssignment?> findById(
    _is.DatabaseSession session,
    int id, {
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.findById<PickupAssignment>(
      id,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Inserts all [PickupAssignment]s in the list and returns the inserted rows.
  ///
  /// The returned [PickupAssignment]s will have their `id` fields set.
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
  Future<List<PickupAssignment>> insert(
    _is.DatabaseSession session,
    List<PickupAssignment> rows, {
    _is.Transaction? transaction,
    bool ignoreConflicts = false,
    bool noReturn = false,
  }) async {
    return session.db.insert<PickupAssignment>(
      rows,
      transaction: transaction,
      ignoreConflicts: ignoreConflicts,
      noReturn: noReturn,
    );
  }

  /// Inserts a single [PickupAssignment] and returns the inserted row.
  ///
  /// The returned [PickupAssignment] will have its `id` field set.
  Future<PickupAssignment> insertRow(
    _is.DatabaseSession session,
    PickupAssignment row, {
    _is.Transaction? transaction,
  }) async {
    return session.db.insertRow<PickupAssignment>(
      row,
      transaction: transaction,
    );
  }

  /// Upserts all [PickupAssignment]s in the list and returns the resulting rows.
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
  /// The returned [PickupAssignment]s will have their `id` fields set.
  ///
  /// This is an atomic operation, meaning that if one of the rows fails,
  /// none of the rows will be affected.
  ///
  /// If [noReturn] is set to `true`, the resulting rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<PickupAssignment>> upsert(
    _is.DatabaseSession session,
    List<PickupAssignment> rows, {
    required _is.ColumnSelections<PickupAssignmentTable> conflictColumns,
    _is.ColumnSelections<PickupAssignmentTable>? updateColumns,
    _is.WhereExpressionBuilder<PickupAssignmentTable>? updateWhere,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.upsert<PickupAssignment>(
      rows,
      conflictColumns: conflictColumns(PickupAssignment.t),
      updateColumns: updateColumns?.call(PickupAssignment.t),
      updateWhere: updateWhere?.call(PickupAssignment.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Upserts a single [PickupAssignment] and returns the resulting row.
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
  /// The returned [PickupAssignment] will have its `id` field set.
  Future<PickupAssignment?> upsertRow(
    _is.DatabaseSession session,
    PickupAssignment row, {
    required _is.ColumnSelections<PickupAssignmentTable> conflictColumns,
    _is.ColumnSelections<PickupAssignmentTable>? updateColumns,
    _is.WhereExpressionBuilder<PickupAssignmentTable>? updateWhere,
    _is.Transaction? transaction,
  }) async {
    return session.db.upsertRow<PickupAssignment>(
      row,
      conflictColumns: conflictColumns(PickupAssignment.t),
      updateColumns: updateColumns?.call(PickupAssignment.t),
      updateWhere: updateWhere?.call(PickupAssignment.t),
      transaction: transaction,
    );
  }

  /// Updates all [PickupAssignment]s in the list and returns the updated rows. If
  /// [columns] is provided, only those columns will be updated. Defaults to
  /// all columns.
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// update, none of the rows will be updated.
  ///
  /// If [noReturn] is set to `true`, the updated rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<PickupAssignment>> update(
    _is.DatabaseSession session,
    List<PickupAssignment> rows, {
    _is.ColumnSelections<PickupAssignmentTable>? columns,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.update<PickupAssignment>(
      rows,
      columns: columns?.call(PickupAssignment.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Updates a single [PickupAssignment]. The row needs to have its id set.
  /// Optionally, a list of [columns] can be provided to only update those
  /// columns. Defaults to all columns.
  Future<PickupAssignment> updateRow(
    _is.DatabaseSession session,
    PickupAssignment row, {
    _is.ColumnSelections<PickupAssignmentTable>? columns,
    _is.Transaction? transaction,
  }) async {
    return session.db.updateRow<PickupAssignment>(
      row,
      columns: columns?.call(PickupAssignment.t),
      transaction: transaction,
    );
  }

  /// Updates a single [PickupAssignment] by its [id] with the specified [columnValues].
  /// Returns the updated row or null if no row with the given id exists.
  Future<PickupAssignment?> updateById(
    _is.DatabaseSession session,
    int id, {
    required _is.ColumnValueListBuilder<PickupAssignmentUpdateTable>
    columnValues,
    _is.Transaction? transaction,
  }) async {
    return session.db.updateById<PickupAssignment>(
      id,
      columnValues: columnValues(PickupAssignment.t.updateTable),
      transaction: transaction,
    );
  }

  /// Updates all [PickupAssignment]s matching the [where] expression with the specified [columnValues].
  /// Returns the list of updated rows.
  ///
  /// If [noReturn] is set to `true`, the updated rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<PickupAssignment>> updateWhere(
    _is.DatabaseSession session, {
    required _is.ColumnValueListBuilder<PickupAssignmentUpdateTable>
    columnValues,
    required _is.WhereExpressionBuilder<PickupAssignmentTable> where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<PickupAssignmentTable>? orderBy,
    _is.OrderByListBuilder<PickupAssignmentTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.updateWhere<PickupAssignment>(
      columnValues: columnValues(PickupAssignment.t.updateTable),
      where: where(PickupAssignment.t),
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(PickupAssignment.t),
      orderByList: orderByList?.call(PickupAssignment.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Deletes all [PickupAssignment]s in the list and returns the deleted rows.
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
  Future<List<PickupAssignment>> delete(
    _is.DatabaseSession session,
    List<PickupAssignment> rows, {
    _is.OrderByBuilder<PickupAssignmentTable>? orderBy,
    _is.OrderByListBuilder<PickupAssignmentTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.delete<PickupAssignment>(
      rows,
      orderBy: orderBy?.call(PickupAssignment.t),
      orderByList: orderByList?.call(PickupAssignment.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Deletes a single [PickupAssignment].
  Future<PickupAssignment> deleteRow(
    _is.DatabaseSession session,
    PickupAssignment row, {
    _is.Transaction? transaction,
  }) async {
    return session.db.deleteRow<PickupAssignment>(
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
  Future<List<PickupAssignment>> deleteWhere(
    _is.DatabaseSession session, {
    required _is.WhereExpressionBuilder<PickupAssignmentTable> where,
    _is.OrderByBuilder<PickupAssignmentTable>? orderBy,
    _is.OrderByListBuilder<PickupAssignmentTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.deleteWhere<PickupAssignment>(
      where: where(PickupAssignment.t),
      orderBy: orderBy?.call(PickupAssignment.t),
      orderByList: orderByList?.call(PickupAssignment.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Counts the number of rows matching the [where] expression. If omitted,
  /// will return the count of all rows in the table.
  Future<int> count(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<PickupAssignmentTable>? where,
    int? limit,
    _is.Transaction? transaction,
  }) async {
    return session.db.count<PickupAssignment>(
      where: where?.call(PickupAssignment.t),
      limit: limit,
      transaction: transaction,
    );
  }

  /// Acquires row-level locks on [PickupAssignment] rows matching the [where] expression.
  Future<void> lockRows(
    _is.DatabaseSession session, {
    required _is.WhereExpressionBuilder<PickupAssignmentTable> where,
    required _is.LockMode lockMode,
    required _is.Transaction transaction,
    _is.LockBehavior lockBehavior = _is.LockBehavior.wait,
  }) async {
    return session.db.lockRows<PickupAssignment>(
      where: where(PickupAssignment.t),
      lockMode: lockMode,
      lockBehavior: lockBehavior,
      transaction: transaction,
    );
  }
}
