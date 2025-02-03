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
import 'lounge_posts_comments.dart' as _i2;
import 'lounge_posts_likes.dart' as _i3;
import 'lounge_posts_reports.dart' as _i4;

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
    this.comments,
    this.likes,
    this.reports,
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
    List<_i2.LoungePostsComments>? comments,
    List<_i3.LoungePostsLikes>? likes,
    List<_i4.LoungePostsReports>? reports,
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
      comments: (jsonSerialization['comments'] as List?)
          ?.map((e) =>
              _i2.LoungePostsComments.fromJson((e as Map<String, dynamic>)))
          .toList(),
      likes: (jsonSerialization['likes'] as List?)
          ?.map(
              (e) => _i3.LoungePostsLikes.fromJson((e as Map<String, dynamic>)))
          .toList(),
      reports: (jsonSerialization['reports'] as List?)
          ?.map((e) =>
              _i4.LoungePostsReports.fromJson((e as Map<String, dynamic>)))
          .toList(),
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

  List<_i2.LoungePostsComments>? comments;

  List<_i3.LoungePostsLikes>? likes;

  List<_i4.LoungePostsReports>? reports;

  int? _usersLoungepostsUsersId;

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
    List<_i2.LoungePostsComments>? comments,
    List<_i3.LoungePostsLikes>? likes,
    List<_i4.LoungePostsReports>? reports,
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
      if (comments != null)
        'comments': comments?.toJson(valueToJson: (v) => v.toJson()),
      if (likes != null) 'likes': likes?.toJson(valueToJson: (v) => v.toJson()),
      if (reports != null)
        'reports': reports?.toJson(valueToJson: (v) => v.toJson()),
      if (_usersLoungepostsUsersId != null)
        '_usersLoungepostsUsersId': _usersLoungepostsUsersId,
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
      if (comments != null)
        'comments': comments?.toJson(valueToJson: (v) => v.toJsonForProtocol()),
      if (likes != null)
        'likes': likes?.toJson(valueToJson: (v) => v.toJsonForProtocol()),
      if (reports != null)
        'reports': reports?.toJson(valueToJson: (v) => v.toJsonForProtocol()),
    };
  }

  static LoungePostsInclude include({
    _i2.LoungePostsCommentsIncludeList? comments,
    _i3.LoungePostsLikesIncludeList? likes,
    _i4.LoungePostsReportsIncludeList? reports,
  }) {
    return LoungePostsInclude._(
      comments: comments,
      likes: likes,
      reports: reports,
    );
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
    List<_i2.LoungePostsComments>? comments,
    List<_i3.LoungePostsLikes>? likes,
    List<_i4.LoungePostsReports>? reports,
  }) : super._(
          id: id,
          userId: userId,
          content: content,
          likesCount: likesCount,
          reportsCount: reportsCount,
          isDeleted: isDeleted,
          createdAt: createdAt,
          updatedAt: updatedAt,
          comments: comments,
          likes: likes,
          reports: reports,
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
    Object? comments = _Undefined,
    Object? likes = _Undefined,
    Object? reports = _Undefined,
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
      comments: comments is List<_i2.LoungePostsComments>?
          ? comments
          : this.comments?.map((e0) => e0.copyWith()).toList(),
      likes: likes is List<_i3.LoungePostsLikes>?
          ? likes
          : this.likes?.map((e0) => e0.copyWith()).toList(),
      reports: reports is List<_i4.LoungePostsReports>?
          ? reports
          : this.reports?.map((e0) => e0.copyWith()).toList(),
    );
  }
}

class LoungePostsImplicit extends _LoungePostsImpl {
  LoungePostsImplicit._({
    int? id,
    required int userId,
    required String content,
    required int likesCount,
    required int reportsCount,
    required bool isDeleted,
    required DateTime createdAt,
    required DateTime updatedAt,
    List<_i2.LoungePostsComments>? comments,
    List<_i3.LoungePostsLikes>? likes,
    List<_i4.LoungePostsReports>? reports,
    this.$_usersLoungepostsUsersId,
  }) : super(
          id: id,
          userId: userId,
          content: content,
          likesCount: likesCount,
          reportsCount: reportsCount,
          isDeleted: isDeleted,
          createdAt: createdAt,
          updatedAt: updatedAt,
          comments: comments,
          likes: likes,
          reports: reports,
        );

  factory LoungePostsImplicit(
    LoungePosts loungePosts, {
    int? $_usersLoungepostsUsersId,
  }) {
    return LoungePostsImplicit._(
      id: loungePosts.id,
      userId: loungePosts.userId,
      content: loungePosts.content,
      likesCount: loungePosts.likesCount,
      reportsCount: loungePosts.reportsCount,
      isDeleted: loungePosts.isDeleted,
      createdAt: loungePosts.createdAt,
      updatedAt: loungePosts.updatedAt,
      comments: loungePosts.comments,
      likes: loungePosts.likes,
      reports: loungePosts.reports,
      $_usersLoungepostsUsersId: $_usersLoungepostsUsersId,
    );
  }

  int? $_usersLoungepostsUsersId;

  @override
  Map<String, dynamic> toJson() {
    var jsonMap = super.toJson();
    jsonMap.addAll({'_usersLoungepostsUsersId': $_usersLoungepostsUsersId});
    return jsonMap;
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
    $_usersLoungepostsUsersId = _i1.ColumnInt(
      '_usersLoungepostsUsersId',
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

  _i2.LoungePostsCommentsTable? ___comments;

  _i1.ManyRelation<_i2.LoungePostsCommentsTable>? _comments;

  _i3.LoungePostsLikesTable? ___likes;

  _i1.ManyRelation<_i3.LoungePostsLikesTable>? _likes;

  _i4.LoungePostsReportsTable? ___reports;

  _i1.ManyRelation<_i4.LoungePostsReportsTable>? _reports;

  late final _i1.ColumnInt $_usersLoungepostsUsersId;

  _i2.LoungePostsCommentsTable get __comments {
    if (___comments != null) return ___comments!;
    ___comments = _i1.createRelationTable(
      relationFieldName: '__comments',
      field: LoungePosts.t.id,
      foreignField:
          _i2.LoungePostsComments.t.$_loungePostsCommentsLoungePostsId,
      tableRelation: tableRelation,
      createTable: (foreignTableRelation) =>
          _i2.LoungePostsCommentsTable(tableRelation: foreignTableRelation),
    );
    return ___comments!;
  }

  _i3.LoungePostsLikesTable get __likes {
    if (___likes != null) return ___likes!;
    ___likes = _i1.createRelationTable(
      relationFieldName: '__likes',
      field: LoungePosts.t.id,
      foreignField: _i3.LoungePostsLikes.t.$_loungePostsLikesLoungePostsId,
      tableRelation: tableRelation,
      createTable: (foreignTableRelation) =>
          _i3.LoungePostsLikesTable(tableRelation: foreignTableRelation),
    );
    return ___likes!;
  }

  _i4.LoungePostsReportsTable get __reports {
    if (___reports != null) return ___reports!;
    ___reports = _i1.createRelationTable(
      relationFieldName: '__reports',
      field: LoungePosts.t.id,
      foreignField: _i4.LoungePostsReports.t.$_loungePostsReportsLoungePostsId,
      tableRelation: tableRelation,
      createTable: (foreignTableRelation) =>
          _i4.LoungePostsReportsTable(tableRelation: foreignTableRelation),
    );
    return ___reports!;
  }

  _i1.ManyRelation<_i2.LoungePostsCommentsTable> get comments {
    if (_comments != null) return _comments!;
    var relationTable = _i1.createRelationTable(
      relationFieldName: 'comments',
      field: LoungePosts.t.id,
      foreignField:
          _i2.LoungePostsComments.t.$_loungePostsCommentsLoungePostsId,
      tableRelation: tableRelation,
      createTable: (foreignTableRelation) =>
          _i2.LoungePostsCommentsTable(tableRelation: foreignTableRelation),
    );
    _comments = _i1.ManyRelation<_i2.LoungePostsCommentsTable>(
      tableWithRelations: relationTable,
      table: _i2.LoungePostsCommentsTable(
          tableRelation: relationTable.tableRelation!.lastRelation),
    );
    return _comments!;
  }

  _i1.ManyRelation<_i3.LoungePostsLikesTable> get likes {
    if (_likes != null) return _likes!;
    var relationTable = _i1.createRelationTable(
      relationFieldName: 'likes',
      field: LoungePosts.t.id,
      foreignField: _i3.LoungePostsLikes.t.$_loungePostsLikesLoungePostsId,
      tableRelation: tableRelation,
      createTable: (foreignTableRelation) =>
          _i3.LoungePostsLikesTable(tableRelation: foreignTableRelation),
    );
    _likes = _i1.ManyRelation<_i3.LoungePostsLikesTable>(
      tableWithRelations: relationTable,
      table: _i3.LoungePostsLikesTable(
          tableRelation: relationTable.tableRelation!.lastRelation),
    );
    return _likes!;
  }

  _i1.ManyRelation<_i4.LoungePostsReportsTable> get reports {
    if (_reports != null) return _reports!;
    var relationTable = _i1.createRelationTable(
      relationFieldName: 'reports',
      field: LoungePosts.t.id,
      foreignField: _i4.LoungePostsReports.t.$_loungePostsReportsLoungePostsId,
      tableRelation: tableRelation,
      createTable: (foreignTableRelation) =>
          _i4.LoungePostsReportsTable(tableRelation: foreignTableRelation),
    );
    _reports = _i1.ManyRelation<_i4.LoungePostsReportsTable>(
      tableWithRelations: relationTable,
      table: _i4.LoungePostsReportsTable(
          tableRelation: relationTable.tableRelation!.lastRelation),
    );
    return _reports!;
  }

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
        $_usersLoungepostsUsersId,
      ];

  @override
  _i1.Table? getRelationTable(String relationField) {
    if (relationField == 'comments') {
      return __comments;
    }
    if (relationField == 'likes') {
      return __likes;
    }
    if (relationField == 'reports') {
      return __reports;
    }
    return null;
  }
}

class LoungePostsInclude extends _i1.IncludeObject {
  LoungePostsInclude._({
    _i2.LoungePostsCommentsIncludeList? comments,
    _i3.LoungePostsLikesIncludeList? likes,
    _i4.LoungePostsReportsIncludeList? reports,
  }) {
    _comments = comments;
    _likes = likes;
    _reports = reports;
  }

  _i2.LoungePostsCommentsIncludeList? _comments;

  _i3.LoungePostsLikesIncludeList? _likes;

  _i4.LoungePostsReportsIncludeList? _reports;

  @override
  Map<String, _i1.Include?> get includes => {
        'comments': _comments,
        'likes': _likes,
        'reports': _reports,
      };

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

  final attach = const LoungePostsAttachRepository._();

  final attachRow = const LoungePostsAttachRowRepository._();

  final detach = const LoungePostsDetachRepository._();

  final detachRow = const LoungePostsDetachRowRepository._();

  Future<List<LoungePosts>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<LoungePostsTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<LoungePostsTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<LoungePostsTable>? orderByList,
    _i1.Transaction? transaction,
    LoungePostsInclude? include,
  }) async {
    return session.db.find<LoungePosts>(
      where: where?.call(LoungePosts.t),
      orderBy: orderBy?.call(LoungePosts.t),
      orderByList: orderByList?.call(LoungePosts.t),
      orderDescending: orderDescending,
      limit: limit,
      offset: offset,
      transaction: transaction,
      include: include,
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
    LoungePostsInclude? include,
  }) async {
    return session.db.findFirstRow<LoungePosts>(
      where: where?.call(LoungePosts.t),
      orderBy: orderBy?.call(LoungePosts.t),
      orderByList: orderByList?.call(LoungePosts.t),
      orderDescending: orderDescending,
      offset: offset,
      transaction: transaction,
      include: include,
    );
  }

  Future<LoungePosts?> findById(
    _i1.Session session,
    int id, {
    _i1.Transaction? transaction,
    LoungePostsInclude? include,
  }) async {
    return session.db.findById<LoungePosts>(
      id,
      transaction: transaction,
      include: include,
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

class LoungePostsAttachRepository {
  const LoungePostsAttachRepository._();

  Future<void> comments(
    _i1.Session session,
    LoungePosts loungePosts,
    List<_i2.LoungePostsComments> loungePostsComments, {
    _i1.Transaction? transaction,
  }) async {
    if (loungePostsComments.any((e) => e.id == null)) {
      throw ArgumentError.notNull('loungePostsComments.id');
    }
    if (loungePosts.id == null) {
      throw ArgumentError.notNull('loungePosts.id');
    }

    var $loungePostsComments = loungePostsComments
        .map((e) => _i2.LoungePostsCommentsImplicit(
              e,
              $_loungePostsCommentsLoungePostsId: loungePosts.id,
            ))
        .toList();
    await session.db.update<_i2.LoungePostsComments>(
      $loungePostsComments,
      columns: [_i2.LoungePostsComments.t.$_loungePostsCommentsLoungePostsId],
      transaction: transaction,
    );
  }

  Future<void> likes(
    _i1.Session session,
    LoungePosts loungePosts,
    List<_i3.LoungePostsLikes> loungePostsLikes, {
    _i1.Transaction? transaction,
  }) async {
    if (loungePostsLikes.any((e) => e.id == null)) {
      throw ArgumentError.notNull('loungePostsLikes.id');
    }
    if (loungePosts.id == null) {
      throw ArgumentError.notNull('loungePosts.id');
    }

    var $loungePostsLikes = loungePostsLikes
        .map((e) => _i3.LoungePostsLikesImplicit(
              e,
              $_loungePostsLikesLoungePostsId: loungePosts.id,
            ))
        .toList();
    await session.db.update<_i3.LoungePostsLikes>(
      $loungePostsLikes,
      columns: [_i3.LoungePostsLikes.t.$_loungePostsLikesLoungePostsId],
      transaction: transaction,
    );
  }

  Future<void> reports(
    _i1.Session session,
    LoungePosts loungePosts,
    List<_i4.LoungePostsReports> loungePostsReports, {
    _i1.Transaction? transaction,
  }) async {
    if (loungePostsReports.any((e) => e.id == null)) {
      throw ArgumentError.notNull('loungePostsReports.id');
    }
    if (loungePosts.id == null) {
      throw ArgumentError.notNull('loungePosts.id');
    }

    var $loungePostsReports = loungePostsReports
        .map((e) => _i4.LoungePostsReportsImplicit(
              e,
              $_loungePostsReportsLoungePostsId: loungePosts.id,
            ))
        .toList();
    await session.db.update<_i4.LoungePostsReports>(
      $loungePostsReports,
      columns: [_i4.LoungePostsReports.t.$_loungePostsReportsLoungePostsId],
      transaction: transaction,
    );
  }
}

class LoungePostsAttachRowRepository {
  const LoungePostsAttachRowRepository._();

  Future<void> comments(
    _i1.Session session,
    LoungePosts loungePosts,
    _i2.LoungePostsComments loungePostsComments, {
    _i1.Transaction? transaction,
  }) async {
    if (loungePostsComments.id == null) {
      throw ArgumentError.notNull('loungePostsComments.id');
    }
    if (loungePosts.id == null) {
      throw ArgumentError.notNull('loungePosts.id');
    }

    var $loungePostsComments = _i2.LoungePostsCommentsImplicit(
      loungePostsComments,
      $_loungePostsCommentsLoungePostsId: loungePosts.id,
    );
    await session.db.updateRow<_i2.LoungePostsComments>(
      $loungePostsComments,
      columns: [_i2.LoungePostsComments.t.$_loungePostsCommentsLoungePostsId],
      transaction: transaction,
    );
  }

  Future<void> likes(
    _i1.Session session,
    LoungePosts loungePosts,
    _i3.LoungePostsLikes loungePostsLikes, {
    _i1.Transaction? transaction,
  }) async {
    if (loungePostsLikes.id == null) {
      throw ArgumentError.notNull('loungePostsLikes.id');
    }
    if (loungePosts.id == null) {
      throw ArgumentError.notNull('loungePosts.id');
    }

    var $loungePostsLikes = _i3.LoungePostsLikesImplicit(
      loungePostsLikes,
      $_loungePostsLikesLoungePostsId: loungePosts.id,
    );
    await session.db.updateRow<_i3.LoungePostsLikes>(
      $loungePostsLikes,
      columns: [_i3.LoungePostsLikes.t.$_loungePostsLikesLoungePostsId],
      transaction: transaction,
    );
  }

  Future<void> reports(
    _i1.Session session,
    LoungePosts loungePosts,
    _i4.LoungePostsReports loungePostsReports, {
    _i1.Transaction? transaction,
  }) async {
    if (loungePostsReports.id == null) {
      throw ArgumentError.notNull('loungePostsReports.id');
    }
    if (loungePosts.id == null) {
      throw ArgumentError.notNull('loungePosts.id');
    }

    var $loungePostsReports = _i4.LoungePostsReportsImplicit(
      loungePostsReports,
      $_loungePostsReportsLoungePostsId: loungePosts.id,
    );
    await session.db.updateRow<_i4.LoungePostsReports>(
      $loungePostsReports,
      columns: [_i4.LoungePostsReports.t.$_loungePostsReportsLoungePostsId],
      transaction: transaction,
    );
  }
}

class LoungePostsDetachRepository {
  const LoungePostsDetachRepository._();

  Future<void> comments(
    _i1.Session session,
    List<_i2.LoungePostsComments> loungePostsComments, {
    _i1.Transaction? transaction,
  }) async {
    if (loungePostsComments.any((e) => e.id == null)) {
      throw ArgumentError.notNull('loungePostsComments.id');
    }

    var $loungePostsComments = loungePostsComments
        .map((e) => _i2.LoungePostsCommentsImplicit(
              e,
              $_loungePostsCommentsLoungePostsId: null,
            ))
        .toList();
    await session.db.update<_i2.LoungePostsComments>(
      $loungePostsComments,
      columns: [_i2.LoungePostsComments.t.$_loungePostsCommentsLoungePostsId],
      transaction: transaction,
    );
  }

  Future<void> likes(
    _i1.Session session,
    List<_i3.LoungePostsLikes> loungePostsLikes, {
    _i1.Transaction? transaction,
  }) async {
    if (loungePostsLikes.any((e) => e.id == null)) {
      throw ArgumentError.notNull('loungePostsLikes.id');
    }

    var $loungePostsLikes = loungePostsLikes
        .map((e) => _i3.LoungePostsLikesImplicit(
              e,
              $_loungePostsLikesLoungePostsId: null,
            ))
        .toList();
    await session.db.update<_i3.LoungePostsLikes>(
      $loungePostsLikes,
      columns: [_i3.LoungePostsLikes.t.$_loungePostsLikesLoungePostsId],
      transaction: transaction,
    );
  }

  Future<void> reports(
    _i1.Session session,
    List<_i4.LoungePostsReports> loungePostsReports, {
    _i1.Transaction? transaction,
  }) async {
    if (loungePostsReports.any((e) => e.id == null)) {
      throw ArgumentError.notNull('loungePostsReports.id');
    }

    var $loungePostsReports = loungePostsReports
        .map((e) => _i4.LoungePostsReportsImplicit(
              e,
              $_loungePostsReportsLoungePostsId: null,
            ))
        .toList();
    await session.db.update<_i4.LoungePostsReports>(
      $loungePostsReports,
      columns: [_i4.LoungePostsReports.t.$_loungePostsReportsLoungePostsId],
      transaction: transaction,
    );
  }
}

class LoungePostsDetachRowRepository {
  const LoungePostsDetachRowRepository._();

  Future<void> comments(
    _i1.Session session,
    _i2.LoungePostsComments loungePostsComments, {
    _i1.Transaction? transaction,
  }) async {
    if (loungePostsComments.id == null) {
      throw ArgumentError.notNull('loungePostsComments.id');
    }

    var $loungePostsComments = _i2.LoungePostsCommentsImplicit(
      loungePostsComments,
      $_loungePostsCommentsLoungePostsId: null,
    );
    await session.db.updateRow<_i2.LoungePostsComments>(
      $loungePostsComments,
      columns: [_i2.LoungePostsComments.t.$_loungePostsCommentsLoungePostsId],
      transaction: transaction,
    );
  }

  Future<void> likes(
    _i1.Session session,
    _i3.LoungePostsLikes loungePostsLikes, {
    _i1.Transaction? transaction,
  }) async {
    if (loungePostsLikes.id == null) {
      throw ArgumentError.notNull('loungePostsLikes.id');
    }

    var $loungePostsLikes = _i3.LoungePostsLikesImplicit(
      loungePostsLikes,
      $_loungePostsLikesLoungePostsId: null,
    );
    await session.db.updateRow<_i3.LoungePostsLikes>(
      $loungePostsLikes,
      columns: [_i3.LoungePostsLikes.t.$_loungePostsLikesLoungePostsId],
      transaction: transaction,
    );
  }

  Future<void> reports(
    _i1.Session session,
    _i4.LoungePostsReports loungePostsReports, {
    _i1.Transaction? transaction,
  }) async {
    if (loungePostsReports.id == null) {
      throw ArgumentError.notNull('loungePostsReports.id');
    }

    var $loungePostsReports = _i4.LoungePostsReportsImplicit(
      loungePostsReports,
      $_loungePostsReportsLoungePostsId: null,
    );
    await session.db.updateRow<_i4.LoungePostsReports>(
      $loungePostsReports,
      columns: [_i4.LoungePostsReports.t.$_loungePostsReportsLoungePostsId],
      transaction: transaction,
    );
  }
}
