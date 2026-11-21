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

abstract class HandoverVerification
    implements _is.TableRow<int?>, _is.ProtocolSerialization {
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
      isUsed: _is.BoolJsonExtension.fromJson(jsonSerialization['isUsed']),
      generatedByUserId: jsonSerialization['generatedByUserId'] as int,
      verifiedByUserId: jsonSerialization['verifiedByUserId'] as int?,
      expiresAt: _is.DateTimeJsonExtension.fromJson(
        jsonSerialization['expiresAt'],
      ),
      verifiedAt: jsonSerialization['verifiedAt'] == null
          ? null
          : _is.DateTimeJsonExtension.fromJson(jsonSerialization['verifiedAt']),
    );
  }

  static final t = HandoverVerificationTable();

  static const db = HandoverVerificationRepository._();

  @override
  int? id;

  int rescueSessionId;

  int foodListingId;

  String handoverToken;

  bool isUsed;

  int generatedByUserId;

  int? verifiedByUserId;

  DateTime expiresAt;

  DateTime? verifiedAt;

  @override
  _is.Table<int?> get table => t;

  /// Returns a shallow copy of this [HandoverVerification]
  /// with some or all fields replaced by the given arguments.
  @_is.useResult
  HandoverVerification copyWith({
    int? id,
    int? rescueSessionId,
    int? foodListingId,
    String? handoverToken,
    bool? isUsed,
    int? generatedByUserId,
    int? verifiedByUserId,
    DateTime? expiresAt,
    DateTime? verifiedAt = const _is.$UndefinedDateTime(),
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

  static HandoverVerificationInclude include() {
    return HandoverVerificationInclude._();
  }

  static HandoverVerificationIncludeList includeList({
    _is.WhereExpressionBuilder<HandoverVerificationTable>? where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<HandoverVerificationTable>? orderBy,
    _is.OrderByListBuilder<HandoverVerificationTable>? orderByList,
    HandoverVerificationInclude? include,
  }) {
    return HandoverVerificationIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(HandoverVerification.t),
      orderByList: orderByList?.call(HandoverVerification.t),
      include: include,
    );
  }

  @override
  String toString() {
    return _is.SerializationManager.encode(this);
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
  @_is.useResult
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
    DateTime? verifiedAt = const _is.$UndefinedDateTime(),
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
      verifiedAt: verifiedAt is _is.UndefinedSentinel
          ? this.verifiedAt
          : verifiedAt,
    );
  }
}

class HandoverVerificationUpdateTable
    extends _is.UpdateTable<HandoverVerificationTable> {
  HandoverVerificationUpdateTable(super.table);

  _is.ColumnValue<int, int> rescueSessionId(int value) => _is.ColumnValue(
    table.rescueSessionId,
    value,
  );

  _is.ColumnValue<int, int> foodListingId(int value) => _is.ColumnValue(
    table.foodListingId,
    value,
  );

  _is.ColumnValue<String, String> handoverToken(String value) =>
      _is.ColumnValue(
        table.handoverToken,
        value,
      );

  _is.ColumnValue<bool, bool> isUsed(bool value) => _is.ColumnValue(
    table.isUsed,
    value,
  );

  _is.ColumnValue<int, int> generatedByUserId(int value) => _is.ColumnValue(
    table.generatedByUserId,
    value,
  );

  _is.ColumnValue<int, int> verifiedByUserId(int? value) => _is.ColumnValue(
    table.verifiedByUserId,
    value,
  );

  _is.ColumnValue<DateTime, DateTime> expiresAt(DateTime value) =>
      _is.ColumnValue(
        table.expiresAt,
        value,
      );

  _is.ColumnValue<DateTime, DateTime> verifiedAt(DateTime? value) =>
      _is.ColumnValue(
        table.verifiedAt,
        value,
      );
}

class HandoverVerificationTable extends _is.Table<int?> {
  HandoverVerificationTable({super.tableRelation})
    : super(tableName: 'handover_verification') {
    updateTable = HandoverVerificationUpdateTable(this);
    rescueSessionId = _is.ColumnInt(
      'rescueSessionId',
      this,
    );
    foodListingId = _is.ColumnInt(
      'foodListingId',
      this,
    );
    handoverToken = _is.ColumnString(
      'handoverToken',
      this,
    );
    isUsed = _is.ColumnBool(
      'isUsed',
      this,
    );
    generatedByUserId = _is.ColumnInt(
      'generatedByUserId',
      this,
    );
    verifiedByUserId = _is.ColumnInt(
      'verifiedByUserId',
      this,
    );
    expiresAt = _is.ColumnDateTime(
      'expiresAt',
      this,
    );
    verifiedAt = _is.ColumnDateTime(
      'verifiedAt',
      this,
    );
  }

  late final HandoverVerificationUpdateTable updateTable;

  late final _is.ColumnInt rescueSessionId;

  late final _is.ColumnInt foodListingId;

  late final _is.ColumnString handoverToken;

  late final _is.ColumnBool isUsed;

  late final _is.ColumnInt generatedByUserId;

  late final _is.ColumnInt verifiedByUserId;

  late final _is.ColumnDateTime expiresAt;

  late final _is.ColumnDateTime verifiedAt;

  @override
  List<_is.Column> get columns => [
    id,
    rescueSessionId,
    foodListingId,
    handoverToken,
    isUsed,
    generatedByUserId,
    verifiedByUserId,
    expiresAt,
    verifiedAt,
  ];
}

class HandoverVerificationInclude extends _is.IncludeObject {
  HandoverVerificationInclude._();

  @override
  Map<String, _is.Include?> get includes => {};

  @override
  _is.Table<int?> get table => HandoverVerification.t;
}

class HandoverVerificationIncludeList extends _is.IncludeList {
  HandoverVerificationIncludeList._({
    _is.WhereExpressionBuilder<HandoverVerificationTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(HandoverVerification.t);
  }

  @override
  Map<String, _is.Include?> get includes => include?.includes ?? {};

  @override
  _is.Table<int?> get table => HandoverVerification.t;
}

class HandoverVerificationRepository {
  const HandoverVerificationRepository._();

  /// Returns a list of [HandoverVerification]s matching the given query parameters.
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
  Future<List<HandoverVerification>> find(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<HandoverVerificationTable>? where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<HandoverVerificationTable>? orderBy,
    _is.OrderByListBuilder<HandoverVerificationTable>? orderByList,
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.find<HandoverVerification>(
      where: where?.call(HandoverVerification.t),
      orderBy: orderBy?.call(HandoverVerification.t),
      orderByList: orderByList?.call(HandoverVerification.t),
      limit: limit,
      offset: offset,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Emits [HandoverVerification]s matching the given query parameters every time the
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
  /// to that set. Pass [Table] instances such as `HandoverVerification.t`.
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
  _ida.Stream<List<HandoverVerification>> watch(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<HandoverVerificationTable>? where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<HandoverVerificationTable>? orderBy,
    _is.OrderByListBuilder<HandoverVerificationTable>? orderByList,
    Duration? throttle = const Duration(milliseconds: 30),
    Iterable<_is.Table>? alsoTriggerOnTables,
  }) {
    return session.db.watch<HandoverVerification>(
      where: where?.call(HandoverVerification.t),
      orderBy: orderBy?.call(HandoverVerification.t),
      orderByList: orderByList?.call(HandoverVerification.t),
      limit: limit,
      offset: offset,
      throttle: throttle,
      alsoTriggerOnTables: alsoTriggerOnTables,
    );
  }

  /// Returns the first matching [HandoverVerification] matching the given query parameters.
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
  Future<HandoverVerification?> findFirstRow(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<HandoverVerificationTable>? where,
    int? offset,
    _is.OrderByBuilder<HandoverVerificationTable>? orderBy,
    _is.OrderByListBuilder<HandoverVerificationTable>? orderByList,
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.findFirstRow<HandoverVerification>(
      where: where?.call(HandoverVerification.t),
      orderBy: orderBy?.call(HandoverVerification.t),
      orderByList: orderByList?.call(HandoverVerification.t),
      offset: offset,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Finds a single [HandoverVerification] by its [id] or null if no such row exists.
  Future<HandoverVerification?> findById(
    _is.DatabaseSession session,
    int id, {
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.findById<HandoverVerification>(
      id,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Inserts all [HandoverVerification]s in the list and returns the inserted rows.
  ///
  /// The returned [HandoverVerification]s will have their `id` fields set.
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
  Future<List<HandoverVerification>> insert(
    _is.DatabaseSession session,
    List<HandoverVerification> rows, {
    _is.Transaction? transaction,
    bool ignoreConflicts = false,
    bool noReturn = false,
  }) async {
    return session.db.insert<HandoverVerification>(
      rows,
      transaction: transaction,
      ignoreConflicts: ignoreConflicts,
      noReturn: noReturn,
    );
  }

  /// Inserts a single [HandoverVerification] and returns the inserted row.
  ///
  /// The returned [HandoverVerification] will have its `id` field set.
  Future<HandoverVerification> insertRow(
    _is.DatabaseSession session,
    HandoverVerification row, {
    _is.Transaction? transaction,
  }) async {
    return session.db.insertRow<HandoverVerification>(
      row,
      transaction: transaction,
    );
  }

  /// Upserts all [HandoverVerification]s in the list and returns the resulting rows.
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
  /// The returned [HandoverVerification]s will have their `id` fields set.
  ///
  /// This is an atomic operation, meaning that if one of the rows fails,
  /// none of the rows will be affected.
  ///
  /// If [noReturn] is set to `true`, the resulting rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<HandoverVerification>> upsert(
    _is.DatabaseSession session,
    List<HandoverVerification> rows, {
    required _is.ColumnSelections<HandoverVerificationTable> conflictColumns,
    _is.ColumnSelections<HandoverVerificationTable>? updateColumns,
    _is.WhereExpressionBuilder<HandoverVerificationTable>? updateWhere,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.upsert<HandoverVerification>(
      rows,
      conflictColumns: conflictColumns(HandoverVerification.t),
      updateColumns: updateColumns?.call(HandoverVerification.t),
      updateWhere: updateWhere?.call(HandoverVerification.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Upserts a single [HandoverVerification] and returns the resulting row.
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
  /// The returned [HandoverVerification] will have its `id` field set.
  Future<HandoverVerification?> upsertRow(
    _is.DatabaseSession session,
    HandoverVerification row, {
    required _is.ColumnSelections<HandoverVerificationTable> conflictColumns,
    _is.ColumnSelections<HandoverVerificationTable>? updateColumns,
    _is.WhereExpressionBuilder<HandoverVerificationTable>? updateWhere,
    _is.Transaction? transaction,
  }) async {
    return session.db.upsertRow<HandoverVerification>(
      row,
      conflictColumns: conflictColumns(HandoverVerification.t),
      updateColumns: updateColumns?.call(HandoverVerification.t),
      updateWhere: updateWhere?.call(HandoverVerification.t),
      transaction: transaction,
    );
  }

  /// Updates all [HandoverVerification]s in the list and returns the updated rows. If
  /// [columns] is provided, only those columns will be updated. Defaults to
  /// all columns.
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// update, none of the rows will be updated.
  ///
  /// If [noReturn] is set to `true`, the updated rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<HandoverVerification>> update(
    _is.DatabaseSession session,
    List<HandoverVerification> rows, {
    _is.ColumnSelections<HandoverVerificationTable>? columns,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.update<HandoverVerification>(
      rows,
      columns: columns?.call(HandoverVerification.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Updates a single [HandoverVerification]. The row needs to have its id set.
  /// Optionally, a list of [columns] can be provided to only update those
  /// columns. Defaults to all columns.
  Future<HandoverVerification> updateRow(
    _is.DatabaseSession session,
    HandoverVerification row, {
    _is.ColumnSelections<HandoverVerificationTable>? columns,
    _is.Transaction? transaction,
  }) async {
    return session.db.updateRow<HandoverVerification>(
      row,
      columns: columns?.call(HandoverVerification.t),
      transaction: transaction,
    );
  }

  /// Updates a single [HandoverVerification] by its [id] with the specified [columnValues].
  /// Returns the updated row or null if no row with the given id exists.
  Future<HandoverVerification?> updateById(
    _is.DatabaseSession session,
    int id, {
    required _is.ColumnValueListBuilder<HandoverVerificationUpdateTable>
    columnValues,
    _is.Transaction? transaction,
  }) async {
    return session.db.updateById<HandoverVerification>(
      id,
      columnValues: columnValues(HandoverVerification.t.updateTable),
      transaction: transaction,
    );
  }

  /// Updates all [HandoverVerification]s matching the [where] expression with the specified [columnValues].
  /// Returns the list of updated rows.
  ///
  /// If [noReturn] is set to `true`, the updated rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<HandoverVerification>> updateWhere(
    _is.DatabaseSession session, {
    required _is.ColumnValueListBuilder<HandoverVerificationUpdateTable>
    columnValues,
    required _is.WhereExpressionBuilder<HandoverVerificationTable> where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<HandoverVerificationTable>? orderBy,
    _is.OrderByListBuilder<HandoverVerificationTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.updateWhere<HandoverVerification>(
      columnValues: columnValues(HandoverVerification.t.updateTable),
      where: where(HandoverVerification.t),
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(HandoverVerification.t),
      orderByList: orderByList?.call(HandoverVerification.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Deletes all [HandoverVerification]s in the list and returns the deleted rows.
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
  Future<List<HandoverVerification>> delete(
    _is.DatabaseSession session,
    List<HandoverVerification> rows, {
    _is.OrderByBuilder<HandoverVerificationTable>? orderBy,
    _is.OrderByListBuilder<HandoverVerificationTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.delete<HandoverVerification>(
      rows,
      orderBy: orderBy?.call(HandoverVerification.t),
      orderByList: orderByList?.call(HandoverVerification.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Deletes a single [HandoverVerification].
  Future<HandoverVerification> deleteRow(
    _is.DatabaseSession session,
    HandoverVerification row, {
    _is.Transaction? transaction,
  }) async {
    return session.db.deleteRow<HandoverVerification>(
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
  Future<List<HandoverVerification>> deleteWhere(
    _is.DatabaseSession session, {
    required _is.WhereExpressionBuilder<HandoverVerificationTable> where,
    _is.OrderByBuilder<HandoverVerificationTable>? orderBy,
    _is.OrderByListBuilder<HandoverVerificationTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.deleteWhere<HandoverVerification>(
      where: where(HandoverVerification.t),
      orderBy: orderBy?.call(HandoverVerification.t),
      orderByList: orderByList?.call(HandoverVerification.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Counts the number of rows matching the [where] expression. If omitted,
  /// will return the count of all rows in the table.
  Future<int> count(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<HandoverVerificationTable>? where,
    int? limit,
    _is.Transaction? transaction,
  }) async {
    return session.db.count<HandoverVerification>(
      where: where?.call(HandoverVerification.t),
      limit: limit,
      transaction: transaction,
    );
  }

  /// Acquires row-level locks on [HandoverVerification] rows matching the [where] expression.
  Future<void> lockRows(
    _is.DatabaseSession session, {
    required _is.WhereExpressionBuilder<HandoverVerificationTable> where,
    required _is.LockMode lockMode,
    required _is.Transaction transaction,
    _is.LockBehavior lockBehavior = _is.LockBehavior.wait,
  }) async {
    return session.db.lockRows<HandoverVerification>(
      where: where(HandoverVerification.t),
      lockMode: lockMode,
      lockBehavior: lockBehavior,
      transaction: transaction,
    );
  }
}
