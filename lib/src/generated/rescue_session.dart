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

abstract class RescueSession
    implements _is.TableRow<int?>, _is.ProtocolSerialization {
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
      createdAt: _is.DateTimeJsonExtension.fromJson(
        jsonSerialization['createdAt'],
      ),
      updatedAt: _is.DateTimeJsonExtension.fromJson(
        jsonSerialization['updatedAt'],
      ),
    );
  }

  static final t = RescueSessionTable();

  static const db = RescueSessionRepository._();

  @override
  int? id;

  String joinCode;

  int foodListingId;

  int hostDonorId;

  int? acceptedNgoId;

  int? assignedVolunteerId;

  String status;

  DateTime createdAt;

  DateTime updatedAt;

  @override
  _is.Table<int?> get table => t;

  /// Returns a shallow copy of this [RescueSession]
  /// with some or all fields replaced by the given arguments.
  @_is.useResult
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

  static RescueSessionInclude include() {
    return RescueSessionInclude._();
  }

  static RescueSessionIncludeList includeList({
    _is.WhereExpressionBuilder<RescueSessionTable>? where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<RescueSessionTable>? orderBy,
    _is.OrderByListBuilder<RescueSessionTable>? orderByList,
    RescueSessionInclude? include,
  }) {
    return RescueSessionIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(RescueSession.t),
      orderByList: orderByList?.call(RescueSession.t),
      include: include,
    );
  }

  @override
  String toString() {
    return _is.SerializationManager.encode(this);
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
  @_is.useResult
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

class RescueSessionUpdateTable extends _is.UpdateTable<RescueSessionTable> {
  RescueSessionUpdateTable(super.table);

  _is.ColumnValue<String, String> joinCode(String value) => _is.ColumnValue(
    table.joinCode,
    value,
  );

  _is.ColumnValue<int, int> foodListingId(int value) => _is.ColumnValue(
    table.foodListingId,
    value,
  );

  _is.ColumnValue<int, int> hostDonorId(int value) => _is.ColumnValue(
    table.hostDonorId,
    value,
  );

  _is.ColumnValue<int, int> acceptedNgoId(int? value) => _is.ColumnValue(
    table.acceptedNgoId,
    value,
  );

  _is.ColumnValue<int, int> assignedVolunteerId(int? value) => _is.ColumnValue(
    table.assignedVolunteerId,
    value,
  );

  _is.ColumnValue<String, String> status(String value) => _is.ColumnValue(
    table.status,
    value,
  );

  _is.ColumnValue<DateTime, DateTime> createdAt(DateTime value) =>
      _is.ColumnValue(
        table.createdAt,
        value,
      );

  _is.ColumnValue<DateTime, DateTime> updatedAt(DateTime value) =>
      _is.ColumnValue(
        table.updatedAt,
        value,
      );
}

class RescueSessionTable extends _is.Table<int?> {
  RescueSessionTable({super.tableRelation})
    : super(tableName: 'rescue_session') {
    updateTable = RescueSessionUpdateTable(this);
    joinCode = _is.ColumnString(
      'joinCode',
      this,
    );
    foodListingId = _is.ColumnInt(
      'foodListingId',
      this,
    );
    hostDonorId = _is.ColumnInt(
      'hostDonorId',
      this,
    );
    acceptedNgoId = _is.ColumnInt(
      'acceptedNgoId',
      this,
    );
    assignedVolunteerId = _is.ColumnInt(
      'assignedVolunteerId',
      this,
    );
    status = _is.ColumnString(
      'status',
      this,
    );
    createdAt = _is.ColumnDateTime(
      'createdAt',
      this,
    );
    updatedAt = _is.ColumnDateTime(
      'updatedAt',
      this,
    );
  }

  late final RescueSessionUpdateTable updateTable;

  late final _is.ColumnString joinCode;

  late final _is.ColumnInt foodListingId;

  late final _is.ColumnInt hostDonorId;

  late final _is.ColumnInt acceptedNgoId;

  late final _is.ColumnInt assignedVolunteerId;

  late final _is.ColumnString status;

  late final _is.ColumnDateTime createdAt;

  late final _is.ColumnDateTime updatedAt;

  @override
  List<_is.Column> get columns => [
    id,
    joinCode,
    foodListingId,
    hostDonorId,
    acceptedNgoId,
    assignedVolunteerId,
    status,
    createdAt,
    updatedAt,
  ];
}

class RescueSessionInclude extends _is.IncludeObject {
  RescueSessionInclude._();

  @override
  Map<String, _is.Include?> get includes => {};

  @override
  _is.Table<int?> get table => RescueSession.t;
}

class RescueSessionIncludeList extends _is.IncludeList {
  RescueSessionIncludeList._({
    _is.WhereExpressionBuilder<RescueSessionTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(RescueSession.t);
  }

  @override
  Map<String, _is.Include?> get includes => include?.includes ?? {};

  @override
  _is.Table<int?> get table => RescueSession.t;
}

class RescueSessionRepository {
  const RescueSessionRepository._();

  /// Returns a list of [RescueSession]s matching the given query parameters.
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
  Future<List<RescueSession>> find(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<RescueSessionTable>? where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<RescueSessionTable>? orderBy,
    _is.OrderByListBuilder<RescueSessionTable>? orderByList,
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.find<RescueSession>(
      where: where?.call(RescueSession.t),
      orderBy: orderBy?.call(RescueSession.t),
      orderByList: orderByList?.call(RescueSession.t),
      limit: limit,
      offset: offset,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Emits [RescueSession]s matching the given query parameters every time the
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
  /// to that set. Pass [Table] instances such as `RescueSession.t`.
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
  _ida.Stream<List<RescueSession>> watch(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<RescueSessionTable>? where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<RescueSessionTable>? orderBy,
    _is.OrderByListBuilder<RescueSessionTable>? orderByList,
    Duration? throttle = const Duration(milliseconds: 30),
    Iterable<_is.Table>? alsoTriggerOnTables,
  }) {
    return session.db.watch<RescueSession>(
      where: where?.call(RescueSession.t),
      orderBy: orderBy?.call(RescueSession.t),
      orderByList: orderByList?.call(RescueSession.t),
      limit: limit,
      offset: offset,
      throttle: throttle,
      alsoTriggerOnTables: alsoTriggerOnTables,
    );
  }

  /// Returns the first matching [RescueSession] matching the given query parameters.
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
  Future<RescueSession?> findFirstRow(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<RescueSessionTable>? where,
    int? offset,
    _is.OrderByBuilder<RescueSessionTable>? orderBy,
    _is.OrderByListBuilder<RescueSessionTable>? orderByList,
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.findFirstRow<RescueSession>(
      where: where?.call(RescueSession.t),
      orderBy: orderBy?.call(RescueSession.t),
      orderByList: orderByList?.call(RescueSession.t),
      offset: offset,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Finds a single [RescueSession] by its [id] or null if no such row exists.
  Future<RescueSession?> findById(
    _is.DatabaseSession session,
    int id, {
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.findById<RescueSession>(
      id,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Inserts all [RescueSession]s in the list and returns the inserted rows.
  ///
  /// The returned [RescueSession]s will have their `id` fields set.
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
  Future<List<RescueSession>> insert(
    _is.DatabaseSession session,
    List<RescueSession> rows, {
    _is.Transaction? transaction,
    bool ignoreConflicts = false,
    bool noReturn = false,
  }) async {
    return session.db.insert<RescueSession>(
      rows,
      transaction: transaction,
      ignoreConflicts: ignoreConflicts,
      noReturn: noReturn,
    );
  }

  /// Inserts a single [RescueSession] and returns the inserted row.
  ///
  /// The returned [RescueSession] will have its `id` field set.
  Future<RescueSession> insertRow(
    _is.DatabaseSession session,
    RescueSession row, {
    _is.Transaction? transaction,
  }) async {
    return session.db.insertRow<RescueSession>(
      row,
      transaction: transaction,
    );
  }

  /// Upserts all [RescueSession]s in the list and returns the resulting rows.
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
  /// The returned [RescueSession]s will have their `id` fields set.
  ///
  /// This is an atomic operation, meaning that if one of the rows fails,
  /// none of the rows will be affected.
  ///
  /// If [noReturn] is set to `true`, the resulting rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<RescueSession>> upsert(
    _is.DatabaseSession session,
    List<RescueSession> rows, {
    required _is.ColumnSelections<RescueSessionTable> conflictColumns,
    _is.ColumnSelections<RescueSessionTable>? updateColumns,
    _is.WhereExpressionBuilder<RescueSessionTable>? updateWhere,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.upsert<RescueSession>(
      rows,
      conflictColumns: conflictColumns(RescueSession.t),
      updateColumns: updateColumns?.call(RescueSession.t),
      updateWhere: updateWhere?.call(RescueSession.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Upserts a single [RescueSession] and returns the resulting row.
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
  /// The returned [RescueSession] will have its `id` field set.
  Future<RescueSession?> upsertRow(
    _is.DatabaseSession session,
    RescueSession row, {
    required _is.ColumnSelections<RescueSessionTable> conflictColumns,
    _is.ColumnSelections<RescueSessionTable>? updateColumns,
    _is.WhereExpressionBuilder<RescueSessionTable>? updateWhere,
    _is.Transaction? transaction,
  }) async {
    return session.db.upsertRow<RescueSession>(
      row,
      conflictColumns: conflictColumns(RescueSession.t),
      updateColumns: updateColumns?.call(RescueSession.t),
      updateWhere: updateWhere?.call(RescueSession.t),
      transaction: transaction,
    );
  }

  /// Updates all [RescueSession]s in the list and returns the updated rows. If
  /// [columns] is provided, only those columns will be updated. Defaults to
  /// all columns.
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// update, none of the rows will be updated.
  ///
  /// If [noReturn] is set to `true`, the updated rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<RescueSession>> update(
    _is.DatabaseSession session,
    List<RescueSession> rows, {
    _is.ColumnSelections<RescueSessionTable>? columns,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.update<RescueSession>(
      rows,
      columns: columns?.call(RescueSession.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Updates a single [RescueSession]. The row needs to have its id set.
  /// Optionally, a list of [columns] can be provided to only update those
  /// columns. Defaults to all columns.
  Future<RescueSession> updateRow(
    _is.DatabaseSession session,
    RescueSession row, {
    _is.ColumnSelections<RescueSessionTable>? columns,
    _is.Transaction? transaction,
  }) async {
    return session.db.updateRow<RescueSession>(
      row,
      columns: columns?.call(RescueSession.t),
      transaction: transaction,
    );
  }

  /// Updates a single [RescueSession] by its [id] with the specified [columnValues].
  /// Returns the updated row or null if no row with the given id exists.
  Future<RescueSession?> updateById(
    _is.DatabaseSession session,
    int id, {
    required _is.ColumnValueListBuilder<RescueSessionUpdateTable> columnValues,
    _is.Transaction? transaction,
  }) async {
    return session.db.updateById<RescueSession>(
      id,
      columnValues: columnValues(RescueSession.t.updateTable),
      transaction: transaction,
    );
  }

  /// Updates all [RescueSession]s matching the [where] expression with the specified [columnValues].
  /// Returns the list of updated rows.
  ///
  /// If [noReturn] is set to `true`, the updated rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<RescueSession>> updateWhere(
    _is.DatabaseSession session, {
    required _is.ColumnValueListBuilder<RescueSessionUpdateTable> columnValues,
    required _is.WhereExpressionBuilder<RescueSessionTable> where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<RescueSessionTable>? orderBy,
    _is.OrderByListBuilder<RescueSessionTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.updateWhere<RescueSession>(
      columnValues: columnValues(RescueSession.t.updateTable),
      where: where(RescueSession.t),
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(RescueSession.t),
      orderByList: orderByList?.call(RescueSession.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Deletes all [RescueSession]s in the list and returns the deleted rows.
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
  Future<List<RescueSession>> delete(
    _is.DatabaseSession session,
    List<RescueSession> rows, {
    _is.OrderByBuilder<RescueSessionTable>? orderBy,
    _is.OrderByListBuilder<RescueSessionTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.delete<RescueSession>(
      rows,
      orderBy: orderBy?.call(RescueSession.t),
      orderByList: orderByList?.call(RescueSession.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Deletes a single [RescueSession].
  Future<RescueSession> deleteRow(
    _is.DatabaseSession session,
    RescueSession row, {
    _is.Transaction? transaction,
  }) async {
    return session.db.deleteRow<RescueSession>(
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
  Future<List<RescueSession>> deleteWhere(
    _is.DatabaseSession session, {
    required _is.WhereExpressionBuilder<RescueSessionTable> where,
    _is.OrderByBuilder<RescueSessionTable>? orderBy,
    _is.OrderByListBuilder<RescueSessionTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.deleteWhere<RescueSession>(
      where: where(RescueSession.t),
      orderBy: orderBy?.call(RescueSession.t),
      orderByList: orderByList?.call(RescueSession.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Counts the number of rows matching the [where] expression. If omitted,
  /// will return the count of all rows in the table.
  Future<int> count(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<RescueSessionTable>? where,
    int? limit,
    _is.Transaction? transaction,
  }) async {
    return session.db.count<RescueSession>(
      where: where?.call(RescueSession.t),
      limit: limit,
      transaction: transaction,
    );
  }

  /// Acquires row-level locks on [RescueSession] rows matching the [where] expression.
  Future<void> lockRows(
    _is.DatabaseSession session, {
    required _is.WhereExpressionBuilder<RescueSessionTable> where,
    required _is.LockMode lockMode,
    required _is.Transaction transaction,
    _is.LockBehavior lockBehavior = _is.LockBehavior.wait,
  }) async {
    return session.db.lockRows<RescueSession>(
      where: where(RescueSession.t),
      lockMode: lockMode,
      lockBehavior: lockBehavior,
      transaction: transaction,
    );
  }
}
