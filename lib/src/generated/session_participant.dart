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

abstract class SessionParticipant
    implements _is.TableRow<int?>, _is.ProtocolSerialization {
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
      joinedAt: _is.DateTimeJsonExtension.fromJson(
        jsonSerialization['joinedAt'],
      ),
      isOnline: _is.BoolJsonExtension.fromJson(jsonSerialization['isOnline']),
    );
  }

  static final t = SessionParticipantTable();

  static const db = SessionParticipantRepository._();

  @override
  int? id;

  int rescueSessionId;

  int userId;

  String userName;

  String role;

  DateTime joinedAt;

  bool isOnline;

  @override
  _is.Table<int?> get table => t;

  /// Returns a shallow copy of this [SessionParticipant]
  /// with some or all fields replaced by the given arguments.
  @_is.useResult
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

  static SessionParticipantInclude include() {
    return SessionParticipantInclude._();
  }

  static SessionParticipantIncludeList includeList({
    _is.WhereExpressionBuilder<SessionParticipantTable>? where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<SessionParticipantTable>? orderBy,
    _is.OrderByListBuilder<SessionParticipantTable>? orderByList,
    SessionParticipantInclude? include,
  }) {
    return SessionParticipantIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(SessionParticipant.t),
      orderByList: orderByList?.call(SessionParticipant.t),
      include: include,
    );
  }

  @override
  String toString() {
    return _is.SerializationManager.encode(this);
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
  @_is.useResult
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

class SessionParticipantUpdateTable
    extends _is.UpdateTable<SessionParticipantTable> {
  SessionParticipantUpdateTable(super.table);

  _is.ColumnValue<int, int> rescueSessionId(int value) => _is.ColumnValue(
    table.rescueSessionId,
    value,
  );

  _is.ColumnValue<int, int> userId(int value) => _is.ColumnValue(
    table.userId,
    value,
  );

  _is.ColumnValue<String, String> userName(String value) => _is.ColumnValue(
    table.userName,
    value,
  );

  _is.ColumnValue<String, String> role(String value) => _is.ColumnValue(
    table.role,
    value,
  );

  _is.ColumnValue<DateTime, DateTime> joinedAt(DateTime value) =>
      _is.ColumnValue(
        table.joinedAt,
        value,
      );

  _is.ColumnValue<bool, bool> isOnline(bool value) => _is.ColumnValue(
    table.isOnline,
    value,
  );
}

class SessionParticipantTable extends _is.Table<int?> {
  SessionParticipantTable({super.tableRelation})
    : super(tableName: 'session_participant') {
    updateTable = SessionParticipantUpdateTable(this);
    rescueSessionId = _is.ColumnInt(
      'rescueSessionId',
      this,
    );
    userId = _is.ColumnInt(
      'userId',
      this,
    );
    userName = _is.ColumnString(
      'userName',
      this,
    );
    role = _is.ColumnString(
      'role',
      this,
    );
    joinedAt = _is.ColumnDateTime(
      'joinedAt',
      this,
    );
    isOnline = _is.ColumnBool(
      'isOnline',
      this,
    );
  }

  late final SessionParticipantUpdateTable updateTable;

  late final _is.ColumnInt rescueSessionId;

  late final _is.ColumnInt userId;

  late final _is.ColumnString userName;

  late final _is.ColumnString role;

  late final _is.ColumnDateTime joinedAt;

  late final _is.ColumnBool isOnline;

  @override
  List<_is.Column> get columns => [
    id,
    rescueSessionId,
    userId,
    userName,
    role,
    joinedAt,
    isOnline,
  ];
}

class SessionParticipantInclude extends _is.IncludeObject {
  SessionParticipantInclude._();

  @override
  Map<String, _is.Include?> get includes => {};

  @override
  _is.Table<int?> get table => SessionParticipant.t;
}

class SessionParticipantIncludeList extends _is.IncludeList {
  SessionParticipantIncludeList._({
    _is.WhereExpressionBuilder<SessionParticipantTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(SessionParticipant.t);
  }

  @override
  Map<String, _is.Include?> get includes => include?.includes ?? {};

  @override
  _is.Table<int?> get table => SessionParticipant.t;
}

class SessionParticipantRepository {
  const SessionParticipantRepository._();

  /// Returns a list of [SessionParticipant]s matching the given query parameters.
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
  Future<List<SessionParticipant>> find(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<SessionParticipantTable>? where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<SessionParticipantTable>? orderBy,
    _is.OrderByListBuilder<SessionParticipantTable>? orderByList,
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.find<SessionParticipant>(
      where: where?.call(SessionParticipant.t),
      orderBy: orderBy?.call(SessionParticipant.t),
      orderByList: orderByList?.call(SessionParticipant.t),
      limit: limit,
      offset: offset,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Emits [SessionParticipant]s matching the given query parameters every time the
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
  /// to that set. Pass [Table] instances such as `SessionParticipant.t`.
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
  _ida.Stream<List<SessionParticipant>> watch(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<SessionParticipantTable>? where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<SessionParticipantTable>? orderBy,
    _is.OrderByListBuilder<SessionParticipantTable>? orderByList,
    Duration? throttle = const Duration(milliseconds: 30),
    Iterable<_is.Table>? alsoTriggerOnTables,
  }) {
    return session.db.watch<SessionParticipant>(
      where: where?.call(SessionParticipant.t),
      orderBy: orderBy?.call(SessionParticipant.t),
      orderByList: orderByList?.call(SessionParticipant.t),
      limit: limit,
      offset: offset,
      throttle: throttle,
      alsoTriggerOnTables: alsoTriggerOnTables,
    );
  }

  /// Returns the first matching [SessionParticipant] matching the given query parameters.
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
  Future<SessionParticipant?> findFirstRow(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<SessionParticipantTable>? where,
    int? offset,
    _is.OrderByBuilder<SessionParticipantTable>? orderBy,
    _is.OrderByListBuilder<SessionParticipantTable>? orderByList,
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.findFirstRow<SessionParticipant>(
      where: where?.call(SessionParticipant.t),
      orderBy: orderBy?.call(SessionParticipant.t),
      orderByList: orderByList?.call(SessionParticipant.t),
      offset: offset,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Finds a single [SessionParticipant] by its [id] or null if no such row exists.
  Future<SessionParticipant?> findById(
    _is.DatabaseSession session,
    int id, {
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.findById<SessionParticipant>(
      id,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Inserts all [SessionParticipant]s in the list and returns the inserted rows.
  ///
  /// The returned [SessionParticipant]s will have their `id` fields set.
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
  Future<List<SessionParticipant>> insert(
    _is.DatabaseSession session,
    List<SessionParticipant> rows, {
    _is.Transaction? transaction,
    bool ignoreConflicts = false,
    bool noReturn = false,
  }) async {
    return session.db.insert<SessionParticipant>(
      rows,
      transaction: transaction,
      ignoreConflicts: ignoreConflicts,
      noReturn: noReturn,
    );
  }

  /// Inserts a single [SessionParticipant] and returns the inserted row.
  ///
  /// The returned [SessionParticipant] will have its `id` field set.
  Future<SessionParticipant> insertRow(
    _is.DatabaseSession session,
    SessionParticipant row, {
    _is.Transaction? transaction,
  }) async {
    return session.db.insertRow<SessionParticipant>(
      row,
      transaction: transaction,
    );
  }

  /// Upserts all [SessionParticipant]s in the list and returns the resulting rows.
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
  /// The returned [SessionParticipant]s will have their `id` fields set.
  ///
  /// This is an atomic operation, meaning that if one of the rows fails,
  /// none of the rows will be affected.
  ///
  /// If [noReturn] is set to `true`, the resulting rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<SessionParticipant>> upsert(
    _is.DatabaseSession session,
    List<SessionParticipant> rows, {
    required _is.ColumnSelections<SessionParticipantTable> conflictColumns,
    _is.ColumnSelections<SessionParticipantTable>? updateColumns,
    _is.WhereExpressionBuilder<SessionParticipantTable>? updateWhere,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.upsert<SessionParticipant>(
      rows,
      conflictColumns: conflictColumns(SessionParticipant.t),
      updateColumns: updateColumns?.call(SessionParticipant.t),
      updateWhere: updateWhere?.call(SessionParticipant.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Upserts a single [SessionParticipant] and returns the resulting row.
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
  /// The returned [SessionParticipant] will have its `id` field set.
  Future<SessionParticipant?> upsertRow(
    _is.DatabaseSession session,
    SessionParticipant row, {
    required _is.ColumnSelections<SessionParticipantTable> conflictColumns,
    _is.ColumnSelections<SessionParticipantTable>? updateColumns,
    _is.WhereExpressionBuilder<SessionParticipantTable>? updateWhere,
    _is.Transaction? transaction,
  }) async {
    return session.db.upsertRow<SessionParticipant>(
      row,
      conflictColumns: conflictColumns(SessionParticipant.t),
      updateColumns: updateColumns?.call(SessionParticipant.t),
      updateWhere: updateWhere?.call(SessionParticipant.t),
      transaction: transaction,
    );
  }

  /// Updates all [SessionParticipant]s in the list and returns the updated rows. If
  /// [columns] is provided, only those columns will be updated. Defaults to
  /// all columns.
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// update, none of the rows will be updated.
  ///
  /// If [noReturn] is set to `true`, the updated rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<SessionParticipant>> update(
    _is.DatabaseSession session,
    List<SessionParticipant> rows, {
    _is.ColumnSelections<SessionParticipantTable>? columns,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.update<SessionParticipant>(
      rows,
      columns: columns?.call(SessionParticipant.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Updates a single [SessionParticipant]. The row needs to have its id set.
  /// Optionally, a list of [columns] can be provided to only update those
  /// columns. Defaults to all columns.
  Future<SessionParticipant> updateRow(
    _is.DatabaseSession session,
    SessionParticipant row, {
    _is.ColumnSelections<SessionParticipantTable>? columns,
    _is.Transaction? transaction,
  }) async {
    return session.db.updateRow<SessionParticipant>(
      row,
      columns: columns?.call(SessionParticipant.t),
      transaction: transaction,
    );
  }

  /// Updates a single [SessionParticipant] by its [id] with the specified [columnValues].
  /// Returns the updated row or null if no row with the given id exists.
  Future<SessionParticipant?> updateById(
    _is.DatabaseSession session,
    int id, {
    required _is.ColumnValueListBuilder<SessionParticipantUpdateTable>
    columnValues,
    _is.Transaction? transaction,
  }) async {
    return session.db.updateById<SessionParticipant>(
      id,
      columnValues: columnValues(SessionParticipant.t.updateTable),
      transaction: transaction,
    );
  }

  /// Updates all [SessionParticipant]s matching the [where] expression with the specified [columnValues].
  /// Returns the list of updated rows.
  ///
  /// If [noReturn] is set to `true`, the updated rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<SessionParticipant>> updateWhere(
    _is.DatabaseSession session, {
    required _is.ColumnValueListBuilder<SessionParticipantUpdateTable>
    columnValues,
    required _is.WhereExpressionBuilder<SessionParticipantTable> where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<SessionParticipantTable>? orderBy,
    _is.OrderByListBuilder<SessionParticipantTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.updateWhere<SessionParticipant>(
      columnValues: columnValues(SessionParticipant.t.updateTable),
      where: where(SessionParticipant.t),
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(SessionParticipant.t),
      orderByList: orderByList?.call(SessionParticipant.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Deletes all [SessionParticipant]s in the list and returns the deleted rows.
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
  Future<List<SessionParticipant>> delete(
    _is.DatabaseSession session,
    List<SessionParticipant> rows, {
    _is.OrderByBuilder<SessionParticipantTable>? orderBy,
    _is.OrderByListBuilder<SessionParticipantTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.delete<SessionParticipant>(
      rows,
      orderBy: orderBy?.call(SessionParticipant.t),
      orderByList: orderByList?.call(SessionParticipant.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Deletes a single [SessionParticipant].
  Future<SessionParticipant> deleteRow(
    _is.DatabaseSession session,
    SessionParticipant row, {
    _is.Transaction? transaction,
  }) async {
    return session.db.deleteRow<SessionParticipant>(
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
  Future<List<SessionParticipant>> deleteWhere(
    _is.DatabaseSession session, {
    required _is.WhereExpressionBuilder<SessionParticipantTable> where,
    _is.OrderByBuilder<SessionParticipantTable>? orderBy,
    _is.OrderByListBuilder<SessionParticipantTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.deleteWhere<SessionParticipant>(
      where: where(SessionParticipant.t),
      orderBy: orderBy?.call(SessionParticipant.t),
      orderByList: orderByList?.call(SessionParticipant.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Counts the number of rows matching the [where] expression. If omitted,
  /// will return the count of all rows in the table.
  Future<int> count(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<SessionParticipantTable>? where,
    int? limit,
    _is.Transaction? transaction,
  }) async {
    return session.db.count<SessionParticipant>(
      where: where?.call(SessionParticipant.t),
      limit: limit,
      transaction: transaction,
    );
  }

  /// Acquires row-level locks on [SessionParticipant] rows matching the [where] expression.
  Future<void> lockRows(
    _is.DatabaseSession session, {
    required _is.WhereExpressionBuilder<SessionParticipantTable> where,
    required _is.LockMode lockMode,
    required _is.Transaction transaction,
    _is.LockBehavior lockBehavior = _is.LockBehavior.wait,
  }) async {
    return session.db.lockRows<SessionParticipant>(
      where: where(SessionParticipant.t),
      lockMode: lockMode,
      lockBehavior: lockBehavior,
      transaction: transaction,
    );
  }
}
