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

abstract class LoungePostsComments
    implements _i1.TableRow, _i1.ProtocolSerialization {
  LoungePostsComments._({
    this.id,
    required this.userId,
    required this.postId,
    required this.content,
    required this.likesCount,
    required this.reportsCount,
    required this.isDeleted,
    required this.createdAt,
    required this.updatedAt,
  });

  factory LoungePostsComments({
    int? id,
    required int userId,
    required int postId,
    required String content,
    required int likesCount,
    required int reportsCount,
    required bool isDeleted,
    required DateTime createdAt,
    required DateTime updatedAt,
  }) = _LoungePostsCommentsImpl;

  factory LoungePostsComments.fromJson(Map<String, dynamic> jsonSerialization) {
    return LoungePostsComments(
      id: jsonSerialization['id'] as int?,
      userId: jsonSerialization['userId'] as int,
      postId: jsonSerialization['postId'] as int,
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

  static final t = LoungePostsCommentsTable();

  static const db = LoungePostsCommentsRepository._();

  @override
  int? id;

  int userId;

  int postId;

  String content;

  int likesCount;

  int reportsCount;

  bool isDeleted;

  DateTime createdAt;

  DateTime updatedAt;

  int? _loungePostsCommentsLoungePostsId;

  int? _usersLoungecommentsUsersId;

  @override
  _i1.Table get table => t;

  LoungePostsComments copyWith({
    int? id,
    int? userId,
    int? postId,
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
      'postId': postId,
      'content': content,
      'likesCount': likesCount,
      'reportsCount': reportsCount,
      'isDeleted': isDeleted,
      'createdAt': createdAt.toJson(),
      'updatedAt': updatedAt.toJson(),
      if (_loungePostsCommentsLoungePostsId != null)
        '_loungePostsCommentsLoungePostsId': _loungePostsCommentsLoungePostsId,
      if (_usersLoungecommentsUsersId != null)
        '_usersLoungecommentsUsersId': _usersLoungecommentsUsersId,
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      if (id != null) 'id': id,
      'userId': userId,
      'postId': postId,
      'content': content,
      'likesCount': likesCount,
      'reportsCount': reportsCount,
      'isDeleted': isDeleted,
      'createdAt': createdAt.toJson(),
      'updatedAt': updatedAt.toJson(),
    };
  }

  static LoungePostsCommentsInclude include() {
    return LoungePostsCommentsInclude._();
  }

  static LoungePostsCommentsIncludeList includeList({
    _i1.WhereExpressionBuilder<LoungePostsCommentsTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<LoungePostsCommentsTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<LoungePostsCommentsTable>? orderByList,
    LoungePostsCommentsInclude? include,
  }) {
    return LoungePostsCommentsIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(LoungePostsComments.t),
      orderDescending: orderDescending,
      orderByList: orderByList?.call(LoungePostsComments.t),
      include: include,
    );
  }

  @override
  String toString() {
    return _i1.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _LoungePostsCommentsImpl extends LoungePostsComments {
  _LoungePostsCommentsImpl({
    int? id,
    required int userId,
    required int postId,
    required String content,
    required int likesCount,
    required int reportsCount,
    required bool isDeleted,
    required DateTime createdAt,
    required DateTime updatedAt,
  }) : super._(
          id: id,
          userId: userId,
          postId: postId,
          content: content,
          likesCount: likesCount,
          reportsCount: reportsCount,
          isDeleted: isDeleted,
          createdAt: createdAt,
          updatedAt: updatedAt,
        );

  @override
  LoungePostsComments copyWith({
    Object? id = _Undefined,
    int? userId,
    int? postId,
    String? content,
    int? likesCount,
    int? reportsCount,
    bool? isDeleted,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) {
    return LoungePostsComments(
      id: id is int? ? id : this.id,
      userId: userId ?? this.userId,
      postId: postId ?? this.postId,
      content: content ?? this.content,
      likesCount: likesCount ?? this.likesCount,
      reportsCount: reportsCount ?? this.reportsCount,
      isDeleted: isDeleted ?? this.isDeleted,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
    );
  }
}

class LoungePostsCommentsImplicit extends _LoungePostsCommentsImpl {
  LoungePostsCommentsImplicit._({
    int? id,
    required int userId,
    required int postId,
    required String content,
    required int likesCount,
    required int reportsCount,
    required bool isDeleted,
    required DateTime createdAt,
    required DateTime updatedAt,
    this.$_loungePostsCommentsLoungePostsId,
    this.$_usersLoungecommentsUsersId,
  }) : super(
          id: id,
          userId: userId,
          postId: postId,
          content: content,
          likesCount: likesCount,
          reportsCount: reportsCount,
          isDeleted: isDeleted,
          createdAt: createdAt,
          updatedAt: updatedAt,
        );

  factory LoungePostsCommentsImplicit(
    LoungePostsComments loungePostsComments, {
    int? $_loungePostsCommentsLoungePostsId,
    int? $_usersLoungecommentsUsersId,
  }) {
    return LoungePostsCommentsImplicit._(
      id: loungePostsComments.id,
      userId: loungePostsComments.userId,
      postId: loungePostsComments.postId,
      content: loungePostsComments.content,
      likesCount: loungePostsComments.likesCount,
      reportsCount: loungePostsComments.reportsCount,
      isDeleted: loungePostsComments.isDeleted,
      createdAt: loungePostsComments.createdAt,
      updatedAt: loungePostsComments.updatedAt,
      $_loungePostsCommentsLoungePostsId: $_loungePostsCommentsLoungePostsId,
      $_usersLoungecommentsUsersId: $_usersLoungecommentsUsersId,
    );
  }

  int? $_loungePostsCommentsLoungePostsId;

  int? $_usersLoungecommentsUsersId;

  @override
  Map<String, dynamic> toJson() {
    var jsonMap = super.toJson();
    jsonMap.addAll({
      '_loungePostsCommentsLoungePostsId': $_loungePostsCommentsLoungePostsId,
      '_usersLoungecommentsUsersId': $_usersLoungecommentsUsersId
    });
    return jsonMap;
  }
}

class LoungePostsCommentsTable extends _i1.Table {
  LoungePostsCommentsTable({super.tableRelation})
      : super(tableName: 'lounge_posts_comments') {
    userId = _i1.ColumnInt(
      'userId',
      this,
    );
    postId = _i1.ColumnInt(
      'postId',
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
    $_loungePostsCommentsLoungePostsId = _i1.ColumnInt(
      '_loungePostsCommentsLoungePostsId',
      this,
    );
    $_usersLoungecommentsUsersId = _i1.ColumnInt(
      '_usersLoungecommentsUsersId',
      this,
    );
  }

  late final _i1.ColumnInt userId;

  late final _i1.ColumnInt postId;

  late final _i1.ColumnString content;

  late final _i1.ColumnInt likesCount;

  late final _i1.ColumnInt reportsCount;

  late final _i1.ColumnBool isDeleted;

  late final _i1.ColumnDateTime createdAt;

  late final _i1.ColumnDateTime updatedAt;

  late final _i1.ColumnInt $_loungePostsCommentsLoungePostsId;

  late final _i1.ColumnInt $_usersLoungecommentsUsersId;

  @override
  List<_i1.Column> get columns => [
        id,
        userId,
        postId,
        content,
        likesCount,
        reportsCount,
        isDeleted,
        createdAt,
        updatedAt,
        $_loungePostsCommentsLoungePostsId,
        $_usersLoungecommentsUsersId,
      ];
}

class LoungePostsCommentsInclude extends _i1.IncludeObject {
  LoungePostsCommentsInclude._();

  @override
  Map<String, _i1.Include?> get includes => {};

  @override
  _i1.Table get table => LoungePostsComments.t;
}

class LoungePostsCommentsIncludeList extends _i1.IncludeList {
  LoungePostsCommentsIncludeList._({
    _i1.WhereExpressionBuilder<LoungePostsCommentsTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderDescending,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(LoungePostsComments.t);
  }

  @override
  Map<String, _i1.Include?> get includes => include?.includes ?? {};

  @override
  _i1.Table get table => LoungePostsComments.t;
}

class LoungePostsCommentsRepository {
  const LoungePostsCommentsRepository._();

  Future<List<LoungePostsComments>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<LoungePostsCommentsTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<LoungePostsCommentsTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<LoungePostsCommentsTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return session.db.find<LoungePostsComments>(
      where: where?.call(LoungePostsComments.t),
      orderBy: orderBy?.call(LoungePostsComments.t),
      orderByList: orderByList?.call(LoungePostsComments.t),
      orderDescending: orderDescending,
      limit: limit,
      offset: offset,
      transaction: transaction,
    );
  }

  Future<LoungePostsComments?> findFirstRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<LoungePostsCommentsTable>? where,
    int? offset,
    _i1.OrderByBuilder<LoungePostsCommentsTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<LoungePostsCommentsTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return session.db.findFirstRow<LoungePostsComments>(
      where: where?.call(LoungePostsComments.t),
      orderBy: orderBy?.call(LoungePostsComments.t),
      orderByList: orderByList?.call(LoungePostsComments.t),
      orderDescending: orderDescending,
      offset: offset,
      transaction: transaction,
    );
  }

  Future<LoungePostsComments?> findById(
    _i1.Session session,
    int id, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.findById<LoungePostsComments>(
      id,
      transaction: transaction,
    );
  }

  Future<List<LoungePostsComments>> insert(
    _i1.Session session,
    List<LoungePostsComments> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insert<LoungePostsComments>(
      rows,
      transaction: transaction,
    );
  }

  Future<LoungePostsComments> insertRow(
    _i1.Session session,
    LoungePostsComments row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insertRow<LoungePostsComments>(
      row,
      transaction: transaction,
    );
  }

  Future<List<LoungePostsComments>> update(
    _i1.Session session,
    List<LoungePostsComments> rows, {
    _i1.ColumnSelections<LoungePostsCommentsTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.update<LoungePostsComments>(
      rows,
      columns: columns?.call(LoungePostsComments.t),
      transaction: transaction,
    );
  }

  Future<LoungePostsComments> updateRow(
    _i1.Session session,
    LoungePostsComments row, {
    _i1.ColumnSelections<LoungePostsCommentsTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateRow<LoungePostsComments>(
      row,
      columns: columns?.call(LoungePostsComments.t),
      transaction: transaction,
    );
  }

  Future<List<LoungePostsComments>> delete(
    _i1.Session session,
    List<LoungePostsComments> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<LoungePostsComments>(
      rows,
      transaction: transaction,
    );
  }

  Future<LoungePostsComments> deleteRow(
    _i1.Session session,
    LoungePostsComments row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteRow<LoungePostsComments>(
      row,
      transaction: transaction,
    );
  }

  Future<List<LoungePostsComments>> deleteWhere(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<LoungePostsCommentsTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteWhere<LoungePostsComments>(
      where: where(LoungePostsComments.t),
      transaction: transaction,
    );
  }

  Future<int> count(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<LoungePostsCommentsTable>? where,
    int? limit,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<LoungePostsComments>(
      where: where?.call(LoungePostsComments.t),
      limit: limit,
      transaction: transaction,
    );
  }
}
