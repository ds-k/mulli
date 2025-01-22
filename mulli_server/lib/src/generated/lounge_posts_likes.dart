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

abstract class LoungePostsLikes
    implements _i1.TableRow, _i1.ProtocolSerialization {
  LoungePostsLikes._({
    this.id,
    required this.postId,
    required this.userId,
    required this.isDeleted,
    required this.createdAt,
    required this.updatedAt,
  });

  factory LoungePostsLikes({
    int? id,
    required int postId,
    required int userId,
    required bool isDeleted,
    required DateTime createdAt,
    required DateTime updatedAt,
  }) = _LoungePostsLikesImpl;

  factory LoungePostsLikes.fromJson(Map<String, dynamic> jsonSerialization) {
    return LoungePostsLikes(
      id: jsonSerialization['id'] as int?,
      postId: jsonSerialization['postId'] as int,
      userId: jsonSerialization['userId'] as int,
      isDeleted: jsonSerialization['isDeleted'] as bool,
      createdAt:
          _i1.DateTimeJsonExtension.fromJson(jsonSerialization['createdAt']),
      updatedAt:
          _i1.DateTimeJsonExtension.fromJson(jsonSerialization['updatedAt']),
    );
  }

  static final t = LoungePostsLikesTable();

  static const db = LoungePostsLikesRepository._();

  @override
  int? id;

  int postId;

  int userId;

  bool isDeleted;

  DateTime createdAt;

  DateTime updatedAt;

  @override
  _i1.Table get table => t;

  LoungePostsLikes copyWith({
    int? id,
    int? postId,
    int? userId,
    bool? isDeleted,
    DateTime? createdAt,
    DateTime? updatedAt,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      if (id != null) 'id': id,
      'postId': postId,
      'userId': userId,
      'isDeleted': isDeleted,
      'createdAt': createdAt.toJson(),
      'updatedAt': updatedAt.toJson(),
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      if (id != null) 'id': id,
      'postId': postId,
      'userId': userId,
      'isDeleted': isDeleted,
      'createdAt': createdAt.toJson(),
      'updatedAt': updatedAt.toJson(),
    };
  }

  static LoungePostsLikesInclude include() {
    return LoungePostsLikesInclude._();
  }

  static LoungePostsLikesIncludeList includeList({
    _i1.WhereExpressionBuilder<LoungePostsLikesTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<LoungePostsLikesTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<LoungePostsLikesTable>? orderByList,
    LoungePostsLikesInclude? include,
  }) {
    return LoungePostsLikesIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(LoungePostsLikes.t),
      orderDescending: orderDescending,
      orderByList: orderByList?.call(LoungePostsLikes.t),
      include: include,
    );
  }

  @override
  String toString() {
    return _i1.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _LoungePostsLikesImpl extends LoungePostsLikes {
  _LoungePostsLikesImpl({
    int? id,
    required int postId,
    required int userId,
    required bool isDeleted,
    required DateTime createdAt,
    required DateTime updatedAt,
  }) : super._(
          id: id,
          postId: postId,
          userId: userId,
          isDeleted: isDeleted,
          createdAt: createdAt,
          updatedAt: updatedAt,
        );

  @override
  LoungePostsLikes copyWith({
    Object? id = _Undefined,
    int? postId,
    int? userId,
    bool? isDeleted,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) {
    return LoungePostsLikes(
      id: id is int? ? id : this.id,
      postId: postId ?? this.postId,
      userId: userId ?? this.userId,
      isDeleted: isDeleted ?? this.isDeleted,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
    );
  }
}

class LoungePostsLikesTable extends _i1.Table {
  LoungePostsLikesTable({super.tableRelation})
      : super(tableName: 'lounge_posts_likes') {
    postId = _i1.ColumnInt(
      'postId',
      this,
    );
    userId = _i1.ColumnInt(
      'userId',
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

  late final _i1.ColumnInt postId;

  late final _i1.ColumnInt userId;

  late final _i1.ColumnBool isDeleted;

  late final _i1.ColumnDateTime createdAt;

  late final _i1.ColumnDateTime updatedAt;

  @override
  List<_i1.Column> get columns => [
        id,
        postId,
        userId,
        isDeleted,
        createdAt,
        updatedAt,
      ];
}

class LoungePostsLikesInclude extends _i1.IncludeObject {
  LoungePostsLikesInclude._();

  @override
  Map<String, _i1.Include?> get includes => {};

  @override
  _i1.Table get table => LoungePostsLikes.t;
}

class LoungePostsLikesIncludeList extends _i1.IncludeList {
  LoungePostsLikesIncludeList._({
    _i1.WhereExpressionBuilder<LoungePostsLikesTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderDescending,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(LoungePostsLikes.t);
  }

  @override
  Map<String, _i1.Include?> get includes => include?.includes ?? {};

  @override
  _i1.Table get table => LoungePostsLikes.t;
}

class LoungePostsLikesRepository {
  const LoungePostsLikesRepository._();

  Future<List<LoungePostsLikes>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<LoungePostsLikesTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<LoungePostsLikesTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<LoungePostsLikesTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return session.db.find<LoungePostsLikes>(
      where: where?.call(LoungePostsLikes.t),
      orderBy: orderBy?.call(LoungePostsLikes.t),
      orderByList: orderByList?.call(LoungePostsLikes.t),
      orderDescending: orderDescending,
      limit: limit,
      offset: offset,
      transaction: transaction,
    );
  }

  Future<LoungePostsLikes?> findFirstRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<LoungePostsLikesTable>? where,
    int? offset,
    _i1.OrderByBuilder<LoungePostsLikesTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<LoungePostsLikesTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return session.db.findFirstRow<LoungePostsLikes>(
      where: where?.call(LoungePostsLikes.t),
      orderBy: orderBy?.call(LoungePostsLikes.t),
      orderByList: orderByList?.call(LoungePostsLikes.t),
      orderDescending: orderDescending,
      offset: offset,
      transaction: transaction,
    );
  }

  Future<LoungePostsLikes?> findById(
    _i1.Session session,
    int id, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.findById<LoungePostsLikes>(
      id,
      transaction: transaction,
    );
  }

  Future<List<LoungePostsLikes>> insert(
    _i1.Session session,
    List<LoungePostsLikes> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insert<LoungePostsLikes>(
      rows,
      transaction: transaction,
    );
  }

  Future<LoungePostsLikes> insertRow(
    _i1.Session session,
    LoungePostsLikes row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insertRow<LoungePostsLikes>(
      row,
      transaction: transaction,
    );
  }

  Future<List<LoungePostsLikes>> update(
    _i1.Session session,
    List<LoungePostsLikes> rows, {
    _i1.ColumnSelections<LoungePostsLikesTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.update<LoungePostsLikes>(
      rows,
      columns: columns?.call(LoungePostsLikes.t),
      transaction: transaction,
    );
  }

  Future<LoungePostsLikes> updateRow(
    _i1.Session session,
    LoungePostsLikes row, {
    _i1.ColumnSelections<LoungePostsLikesTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateRow<LoungePostsLikes>(
      row,
      columns: columns?.call(LoungePostsLikes.t),
      transaction: transaction,
    );
  }

  Future<List<LoungePostsLikes>> delete(
    _i1.Session session,
    List<LoungePostsLikes> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<LoungePostsLikes>(
      rows,
      transaction: transaction,
    );
  }

  Future<LoungePostsLikes> deleteRow(
    _i1.Session session,
    LoungePostsLikes row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteRow<LoungePostsLikes>(
      row,
      transaction: transaction,
    );
  }

  Future<List<LoungePostsLikes>> deleteWhere(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<LoungePostsLikesTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteWhere<LoungePostsLikes>(
      where: where(LoungePostsLikes.t),
      transaction: transaction,
    );
  }

  Future<int> count(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<LoungePostsLikesTable>? where,
    int? limit,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<LoungePostsLikes>(
      where: where?.call(LoungePostsLikes.t),
      limit: limit,
      transaction: transaction,
    );
  }
}
