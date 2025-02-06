/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: implementation_imports
// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: non_constant_identifier_names
// ignore_for_file: public_member_api_docs
// ignore_for_file: type_literal_in_constant_pattern
// ignore_for_file: use_super_parameters

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod/serverpod.dart' as _i1;

abstract class LoungePostsReports
    implements _i1.TableRow, _i1.ProtocolSerialization {
  LoungePostsReports._({
    this.id,
    required this.userId,
    required this.postId,
    required this.reason,
    required this.createdAt,
    required this.updatedAt,
  });

  factory LoungePostsReports({
    int? id,
    required int userId,
    required int postId,
    required String reason,
    required DateTime createdAt,
    required DateTime updatedAt,
  }) = _LoungePostsReportsImpl;

  factory LoungePostsReports.fromJson(Map<String, dynamic> jsonSerialization) {
    return LoungePostsReports(
      id: jsonSerialization['id'] as int?,
      userId: jsonSerialization['userId'] as int,
      postId: jsonSerialization['postId'] as int,
      reason: jsonSerialization['reason'] as String,
      createdAt:
          _i1.DateTimeJsonExtension.fromJson(jsonSerialization['createdAt']),
      updatedAt:
          _i1.DateTimeJsonExtension.fromJson(jsonSerialization['updatedAt']),
    );
  }

  static final t = LoungePostsReportsTable();

  static const db = LoungePostsReportsRepository._();

  @override
  int? id;

  int userId;

  int postId;

  String reason;

  DateTime createdAt;

  DateTime updatedAt;

  int? _loungePostsReportsLoungePostsId;

  int? _usersPostreportsUsersId;

  @override
  _i1.Table get table => t;

  LoungePostsReports copyWith({
    int? id,
    int? userId,
    int? postId,
    String? reason,
    DateTime? createdAt,
    DateTime? updatedAt,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      if (id != null) 'id': id,
      'userId': userId,
      'postId': postId,
      'reason': reason,
      'createdAt': createdAt.toJson(),
      'updatedAt': updatedAt.toJson(),
      if (_loungePostsReportsLoungePostsId != null)
        '_loungePostsReportsLoungePostsId': _loungePostsReportsLoungePostsId,
      if (_usersPostreportsUsersId != null)
        '_usersPostreportsUsersId': _usersPostreportsUsersId,
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      if (id != null) 'id': id,
      'userId': userId,
      'postId': postId,
      'reason': reason,
      'createdAt': createdAt.toJson(),
      'updatedAt': updatedAt.toJson(),
    };
  }

  static LoungePostsReportsInclude include() {
    return LoungePostsReportsInclude._();
  }

  static LoungePostsReportsIncludeList includeList({
    _i1.WhereExpressionBuilder<LoungePostsReportsTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<LoungePostsReportsTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<LoungePostsReportsTable>? orderByList,
    LoungePostsReportsInclude? include,
  }) {
    return LoungePostsReportsIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(LoungePostsReports.t),
      orderDescending: orderDescending,
      orderByList: orderByList?.call(LoungePostsReports.t),
      include: include,
    );
  }

  @override
  String toString() {
    return _i1.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _LoungePostsReportsImpl extends LoungePostsReports {
  _LoungePostsReportsImpl({
    int? id,
    required int userId,
    required int postId,
    required String reason,
    required DateTime createdAt,
    required DateTime updatedAt,
  }) : super._(
          id: id,
          userId: userId,
          postId: postId,
          reason: reason,
          createdAt: createdAt,
          updatedAt: updatedAt,
        );

  @override
  LoungePostsReports copyWith({
    Object? id = _Undefined,
    int? userId,
    int? postId,
    String? reason,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) {
    return LoungePostsReports(
      id: id is int? ? id : this.id,
      userId: userId ?? this.userId,
      postId: postId ?? this.postId,
      reason: reason ?? this.reason,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
    );
  }
}

class LoungePostsReportsImplicit extends _LoungePostsReportsImpl {
  LoungePostsReportsImplicit._({
    int? id,
    required int userId,
    required int postId,
    required String reason,
    required DateTime createdAt,
    required DateTime updatedAt,
    this.$_loungePostsReportsLoungePostsId,
    this.$_usersPostreportsUsersId,
  }) : super(
          id: id,
          userId: userId,
          postId: postId,
          reason: reason,
          createdAt: createdAt,
          updatedAt: updatedAt,
        );

  factory LoungePostsReportsImplicit(
    LoungePostsReports loungePostsReports, {
    int? $_loungePostsReportsLoungePostsId,
    int? $_usersPostreportsUsersId,
  }) {
    return LoungePostsReportsImplicit._(
      id: loungePostsReports.id,
      userId: loungePostsReports.userId,
      postId: loungePostsReports.postId,
      reason: loungePostsReports.reason,
      createdAt: loungePostsReports.createdAt,
      updatedAt: loungePostsReports.updatedAt,
      $_loungePostsReportsLoungePostsId: $_loungePostsReportsLoungePostsId,
      $_usersPostreportsUsersId: $_usersPostreportsUsersId,
    );
  }

  int? $_loungePostsReportsLoungePostsId;

  int? $_usersPostreportsUsersId;

  @override
  Map<String, dynamic> toJson() {
    var jsonMap = super.toJson();
    jsonMap.addAll({
      '_loungePostsReportsLoungePostsId': $_loungePostsReportsLoungePostsId,
      '_usersPostreportsUsersId': $_usersPostreportsUsersId
    });
    return jsonMap;
  }
}

class LoungePostsReportsTable extends _i1.Table {
  LoungePostsReportsTable({super.tableRelation})
      : super(tableName: 'lounge_posts_reports') {
    userId = _i1.ColumnInt(
      'userId',
      this,
    );
    postId = _i1.ColumnInt(
      'postId',
      this,
    );
    reason = _i1.ColumnString(
      'reason',
      this,
    );
    createdAt = _i1.ColumnDateTime(
      'createdAt',
      this,
    );
    updatedAt = _i1.ColumnDateTime(
      'updatedAt',
      this,
    );
    $_loungePostsReportsLoungePostsId = _i1.ColumnInt(
      '_loungePostsReportsLoungePostsId',
      this,
    );
    $_usersPostreportsUsersId = _i1.ColumnInt(
      '_usersPostreportsUsersId',
      this,
    );
  }

  late final _i1.ColumnInt userId;

  late final _i1.ColumnInt postId;

  late final _i1.ColumnString reason;

  late final _i1.ColumnDateTime createdAt;

  late final _i1.ColumnDateTime updatedAt;

  late final _i1.ColumnInt $_loungePostsReportsLoungePostsId;

  late final _i1.ColumnInt $_usersPostreportsUsersId;

  @override
  List<_i1.Column> get columns => [
        id,
        userId,
        postId,
        reason,
        createdAt,
        updatedAt,
        $_loungePostsReportsLoungePostsId,
        $_usersPostreportsUsersId,
      ];
}

class LoungePostsReportsInclude extends _i1.IncludeObject {
  LoungePostsReportsInclude._();

  @override
  Map<String, _i1.Include?> get includes => {};

  @override
  _i1.Table get table => LoungePostsReports.t;
}

class LoungePostsReportsIncludeList extends _i1.IncludeList {
  LoungePostsReportsIncludeList._({
    _i1.WhereExpressionBuilder<LoungePostsReportsTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderDescending,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(LoungePostsReports.t);
  }

  @override
  Map<String, _i1.Include?> get includes => include?.includes ?? {};

  @override
  _i1.Table get table => LoungePostsReports.t;
}

class LoungePostsReportsRepository {
  const LoungePostsReportsRepository._();

  Future<List<LoungePostsReports>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<LoungePostsReportsTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<LoungePostsReportsTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<LoungePostsReportsTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return session.db.find<LoungePostsReports>(
      where: where?.call(LoungePostsReports.t),
      orderBy: orderBy?.call(LoungePostsReports.t),
      orderByList: orderByList?.call(LoungePostsReports.t),
      orderDescending: orderDescending,
      limit: limit,
      offset: offset,
      transaction: transaction,
    );
  }

  Future<LoungePostsReports?> findFirstRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<LoungePostsReportsTable>? where,
    int? offset,
    _i1.OrderByBuilder<LoungePostsReportsTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<LoungePostsReportsTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return session.db.findFirstRow<LoungePostsReports>(
      where: where?.call(LoungePostsReports.t),
      orderBy: orderBy?.call(LoungePostsReports.t),
      orderByList: orderByList?.call(LoungePostsReports.t),
      orderDescending: orderDescending,
      offset: offset,
      transaction: transaction,
    );
  }

  Future<LoungePostsReports?> findById(
    _i1.Session session,
    int id, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.findById<LoungePostsReports>(
      id,
      transaction: transaction,
    );
  }

  Future<List<LoungePostsReports>> insert(
    _i1.Session session,
    List<LoungePostsReports> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insert<LoungePostsReports>(
      rows,
      transaction: transaction,
    );
  }

  Future<LoungePostsReports> insertRow(
    _i1.Session session,
    LoungePostsReports row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insertRow<LoungePostsReports>(
      row,
      transaction: transaction,
    );
  }

  Future<List<LoungePostsReports>> update(
    _i1.Session session,
    List<LoungePostsReports> rows, {
    _i1.ColumnSelections<LoungePostsReportsTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.update<LoungePostsReports>(
      rows,
      columns: columns?.call(LoungePostsReports.t),
      transaction: transaction,
    );
  }

  Future<LoungePostsReports> updateRow(
    _i1.Session session,
    LoungePostsReports row, {
    _i1.ColumnSelections<LoungePostsReportsTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateRow<LoungePostsReports>(
      row,
      columns: columns?.call(LoungePostsReports.t),
      transaction: transaction,
    );
  }

  Future<List<LoungePostsReports>> delete(
    _i1.Session session,
    List<LoungePostsReports> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<LoungePostsReports>(
      rows,
      transaction: transaction,
    );
  }

  Future<LoungePostsReports> deleteRow(
    _i1.Session session,
    LoungePostsReports row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteRow<LoungePostsReports>(
      row,
      transaction: transaction,
    );
  }

  Future<List<LoungePostsReports>> deleteWhere(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<LoungePostsReportsTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteWhere<LoungePostsReports>(
      where: where(LoungePostsReports.t),
      transaction: transaction,
    );
  }

  Future<int> count(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<LoungePostsReportsTable>? where,
    int? limit,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<LoungePostsReports>(
      where: where?.call(LoungePostsReports.t),
      limit: limit,
      transaction: transaction,
    );
  }
}
