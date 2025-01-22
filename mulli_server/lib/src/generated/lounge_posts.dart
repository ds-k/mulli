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

abstract class LoungePosts implements _i1.TableRow, _i1.ProtocolSerialization {
  LoungePosts._({
    this.id,
    required this.userId,
    required this.content,
    required this.likesCount,
    required this.reportsCount,
    required this.isDeleted,
    required this.createdAt,
    required this.updatedAt,
  });

  factory LoungePosts({
    int? id,
    required int userId,
    required String content,
    required int likesCount,
    required int reportsCount,
    required bool isDeleted,
    required DateTime createdAt,
    required DateTime updatedAt,
  }) = _LoungePostsImpl;

  factory LoungePosts.fromJson(Map<String, dynamic> jsonSerialization) {
    return LoungePosts(
      id: jsonSerialization['id'] as int?,
      userId: jsonSerialization['userId'] as int,
      content: jsonSerialization['content'] as String,
      likesCount: jsonSerialization['likesCount'] as int,
      reportsCount: jsonSerialization['reportsCount'] as int,
      isDeleted: jsonSerialization['isDeleted'] as bool,
      createdAt:
          _i1.DateTimeJsonExtension.fromJson(jsonSerialization['createdAt']),
      updatedAt:
          _i1.DateTimeJsonExtension.fromJson(jsonSerialization['updatedAt']),
    );
  }

  static final t = LoungePostsTable();

  static const db = LoungePostsRepository._();

  @override
  int? id;

  int userId;

  String content;

  int likesCount;

  int reportsCount;

  bool isDeleted;

  DateTime createdAt;

  DateTime updatedAt;

  @override
  _i1.Table get table => t;

  LoungePosts copyWith({
    int? id,
    int? userId,
    String? content,
    int? likesCount,
    int? reportsCount,
    bool? isDeleted,
    DateTime? createdAt,
    DateTime? updatedAt,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      if (id != null) 'id': id,
      'userId': userId,
      'content': content,
      'likesCount': likesCount,
      'reportsCount': reportsCount,
      'isDeleted': isDeleted,
      'createdAt': createdAt.toJson(),
      'updatedAt': updatedAt.toJson(),
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      if (id != null) 'id': id,
      'userId': userId,
      'content': content,
      'likesCount': likesCount,
      'reportsCount': reportsCount,
      'isDeleted': isDeleted,
      'createdAt': createdAt.toJson(),
      'updatedAt': updatedAt.toJson(),
    };
  }

  static LoungePostsInclude include() {
    return LoungePostsInclude._();
  }

  static LoungePostsIncludeList includeList({
    _i1.WhereExpressionBuilder<LoungePostsTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<LoungePostsTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<LoungePostsTable>? orderByList,
    LoungePostsInclude? include,
  }) {
    return LoungePostsIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(LoungePosts.t),
      orderDescending: orderDescending,
      orderByList: orderByList?.call(LoungePosts.t),
      include: include,
    );
  }

  @override
  String toString() {
    return _i1.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _LoungePostsImpl extends LoungePosts {
  _LoungePostsImpl({
    int? id,
    required int userId,
    required String content,
    required int likesCount,
    required int reportsCount,
    required bool isDeleted,
    required DateTime createdAt,
    required DateTime updatedAt,
  }) : super._(
          id: id,
          userId: userId,
          content: content,
          likesCount: likesCount,
          reportsCount: reportsCount,
          isDeleted: isDeleted,
          createdAt: createdAt,
          updatedAt: updatedAt,
        );

  @override
  LoungePosts copyWith({
    Object? id = _Undefined,
    int? userId,
    String? content,
    int? likesCount,
    int? reportsCount,
    bool? isDeleted,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) {
    return LoungePosts(
      id: id is int? ? id : this.id,
      userId: userId ?? this.userId,
      content: content ?? this.content,
      likesCount: likesCount ?? this.likesCount,
      reportsCount: reportsCount ?? this.reportsCount,
      isDeleted: isDeleted ?? this.isDeleted,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
    );
  }
}

class LoungePostsTable extends _i1.Table {
  LoungePostsTable({super.tableRelation}) : super(tableName: 'lounge_posts') {
    userId = _i1.ColumnInt(
      'userId',
      this,
    );
    content = _i1.ColumnString(
      'content',
      this,
    );
    likesCount = _i1.ColumnInt(
      'likesCount',
      this,
    );
    reportsCount = _i1.ColumnInt(
      'reportsCount',
      this,
    );
    isDeleted = _i1.ColumnBool(
      'isDeleted',
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
  }

  late final _i1.ColumnInt userId;

  late final _i1.ColumnString content;

  late final _i1.ColumnInt likesCount;

  late final _i1.ColumnInt reportsCount;

  late final _i1.ColumnBool isDeleted;

  late final _i1.ColumnDateTime createdAt;

  late final _i1.ColumnDateTime updatedAt;

  @override
  List<_i1.Column> get columns => [
        id,
        userId,
        content,
        likesCount,
        reportsCount,
        isDeleted,
        createdAt,
        updatedAt,
      ];
}

class LoungePostsInclude extends _i1.IncludeObject {
  LoungePostsInclude._();

  @override
  Map<String, _i1.Include?> get includes => {};

  @override
  _i1.Table get table => LoungePosts.t;
}

class LoungePostsIncludeList extends _i1.IncludeList {
  LoungePostsIncludeList._({
    _i1.WhereExpressionBuilder<LoungePostsTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderDescending,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(LoungePosts.t);
  }

  @override
  Map<String, _i1.Include?> get includes => include?.includes ?? {};

  @override
  _i1.Table get table => LoungePosts.t;
}

class LoungePostsRepository {
  const LoungePostsRepository._();

  Future<List<LoungePosts>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<LoungePostsTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<LoungePostsTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<LoungePostsTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return session.db.find<LoungePosts>(
      where: where?.call(LoungePosts.t),
      orderBy: orderBy?.call(LoungePosts.t),
      orderByList: orderByList?.call(LoungePosts.t),
      orderDescending: orderDescending,
      limit: limit,
      offset: offset,
      transaction: transaction,
    );
  }

  Future<LoungePosts?> findFirstRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<LoungePostsTable>? where,
    int? offset,
    _i1.OrderByBuilder<LoungePostsTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<LoungePostsTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return session.db.findFirstRow<LoungePosts>(
      where: where?.call(LoungePosts.t),
      orderBy: orderBy?.call(LoungePosts.t),
      orderByList: orderByList?.call(LoungePosts.t),
      orderDescending: orderDescending,
      offset: offset,
      transaction: transaction,
    );
  }

  Future<LoungePosts?> findById(
    _i1.Session session,
    int id, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.findById<LoungePosts>(
      id,
      transaction: transaction,
    );
  }

  Future<List<LoungePosts>> insert(
    _i1.Session session,
    List<LoungePosts> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insert<LoungePosts>(
      rows,
      transaction: transaction,
    );
  }

  Future<LoungePosts> insertRow(
    _i1.Session session,
    LoungePosts row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insertRow<LoungePosts>(
      row,
      transaction: transaction,
    );
  }

  Future<List<LoungePosts>> update(
    _i1.Session session,
    List<LoungePosts> rows, {
    _i1.ColumnSelections<LoungePostsTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.update<LoungePosts>(
      rows,
      columns: columns?.call(LoungePosts.t),
      transaction: transaction,
    );
  }

  Future<LoungePosts> updateRow(
    _i1.Session session,
    LoungePosts row, {
    _i1.ColumnSelections<LoungePostsTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateRow<LoungePosts>(
      row,
      columns: columns?.call(LoungePosts.t),
      transaction: transaction,
    );
  }

  Future<List<LoungePosts>> delete(
    _i1.Session session,
    List<LoungePosts> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<LoungePosts>(
      rows,
      transaction: transaction,
    );
  }

  Future<LoungePosts> deleteRow(
    _i1.Session session,
    LoungePosts row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteRow<LoungePosts>(
      row,
      transaction: transaction,
    );
  }

  Future<List<LoungePosts>> deleteWhere(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<LoungePostsTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteWhere<LoungePosts>(
      where: where(LoungePosts.t),
      transaction: transaction,
    );
  }

  Future<int> count(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<LoungePostsTable>? where,
    int? limit,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<LoungePosts>(
      where: where?.call(LoungePosts.t),
      limit: limit,
      transaction: transaction,
    );
  }
}
