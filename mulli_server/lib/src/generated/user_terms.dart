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

abstract class UserTerms implements _i1.TableRow, _i1.ProtocolSerialization {
  UserTerms._({
    this.id,
    required this.userId,
    required this.termId,
    required this.isAgreed,
    required this.agreedAt,
    required this.createdAt,
  });

  factory UserTerms({
    int? id,
    required int userId,
    required int termId,
    required bool isAgreed,
    required DateTime agreedAt,
    required DateTime createdAt,
  }) = _UserTermsImpl;

  factory UserTerms.fromJson(Map<String, dynamic> jsonSerialization) {
    return UserTerms(
      id: jsonSerialization['id'] as int?,
      userId: jsonSerialization['userId'] as int,
      termId: jsonSerialization['termId'] as int,
      isAgreed: jsonSerialization['isAgreed'] as bool,
      agreedAt:
          _i1.DateTimeJsonExtension.fromJson(jsonSerialization['agreedAt']),
      createdAt:
          _i1.DateTimeJsonExtension.fromJson(jsonSerialization['createdAt']),
    );
  }

  static final t = UserTermsTable();

  static const db = UserTermsRepository._();

  @override
  int? id;

  int userId;

  int termId;

  bool isAgreed;

  DateTime agreedAt;

  DateTime createdAt;

  int? _termsAndConditionsUsertermsTermsAndConditionsId;

  int? _usersUsertermsUsersId;

  @override
  _i1.Table get table => t;

  UserTerms copyWith({
    int? id,
    int? userId,
    int? termId,
    bool? isAgreed,
    DateTime? agreedAt,
    DateTime? createdAt,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      if (id != null) 'id': id,
      'userId': userId,
      'termId': termId,
      'isAgreed': isAgreed,
      'agreedAt': agreedAt.toJson(),
      'createdAt': createdAt.toJson(),
      if (_termsAndConditionsUsertermsTermsAndConditionsId != null)
        '_termsAndConditionsUsertermsTermsAndConditionsId':
            _termsAndConditionsUsertermsTermsAndConditionsId,
      if (_usersUsertermsUsersId != null)
        '_usersUsertermsUsersId': _usersUsertermsUsersId,
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      if (id != null) 'id': id,
      'userId': userId,
      'termId': termId,
      'isAgreed': isAgreed,
      'agreedAt': agreedAt.toJson(),
      'createdAt': createdAt.toJson(),
    };
  }

  static UserTermsInclude include() {
    return UserTermsInclude._();
  }

  static UserTermsIncludeList includeList({
    _i1.WhereExpressionBuilder<UserTermsTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<UserTermsTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<UserTermsTable>? orderByList,
    UserTermsInclude? include,
  }) {
    return UserTermsIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(UserTerms.t),
      orderDescending: orderDescending,
      orderByList: orderByList?.call(UserTerms.t),
      include: include,
    );
  }

  @override
  String toString() {
    return _i1.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _UserTermsImpl extends UserTerms {
  _UserTermsImpl({
    int? id,
    required int userId,
    required int termId,
    required bool isAgreed,
    required DateTime agreedAt,
    required DateTime createdAt,
  }) : super._(
          id: id,
          userId: userId,
          termId: termId,
          isAgreed: isAgreed,
          agreedAt: agreedAt,
          createdAt: createdAt,
        );

  @override
  UserTerms copyWith({
    Object? id = _Undefined,
    int? userId,
    int? termId,
    bool? isAgreed,
    DateTime? agreedAt,
    DateTime? createdAt,
  }) {
    return UserTerms(
      id: id is int? ? id : this.id,
      userId: userId ?? this.userId,
      termId: termId ?? this.termId,
      isAgreed: isAgreed ?? this.isAgreed,
      agreedAt: agreedAt ?? this.agreedAt,
      createdAt: createdAt ?? this.createdAt,
    );
  }
}

class UserTermsImplicit extends _UserTermsImpl {
  UserTermsImplicit._({
    int? id,
    required int userId,
    required int termId,
    required bool isAgreed,
    required DateTime agreedAt,
    required DateTime createdAt,
    this.$_termsAndConditionsUsertermsTermsAndConditionsId,
    this.$_usersUsertermsUsersId,
  }) : super(
          id: id,
          userId: userId,
          termId: termId,
          isAgreed: isAgreed,
          agreedAt: agreedAt,
          createdAt: createdAt,
        );

  factory UserTermsImplicit(
    UserTerms userTerms, {
    int? $_termsAndConditionsUsertermsTermsAndConditionsId,
    int? $_usersUsertermsUsersId,
  }) {
    return UserTermsImplicit._(
      id: userTerms.id,
      userId: userTerms.userId,
      termId: userTerms.termId,
      isAgreed: userTerms.isAgreed,
      agreedAt: userTerms.agreedAt,
      createdAt: userTerms.createdAt,
      $_termsAndConditionsUsertermsTermsAndConditionsId:
          $_termsAndConditionsUsertermsTermsAndConditionsId,
      $_usersUsertermsUsersId: $_usersUsertermsUsersId,
    );
  }

  int? $_termsAndConditionsUsertermsTermsAndConditionsId;

  int? $_usersUsertermsUsersId;

  @override
  Map<String, dynamic> toJson() {
    var jsonMap = super.toJson();
    jsonMap.addAll({
      '_termsAndConditionsUsertermsTermsAndConditionsId':
          $_termsAndConditionsUsertermsTermsAndConditionsId,
      '_usersUsertermsUsersId': $_usersUsertermsUsersId
    });
    return jsonMap;
  }
}

class UserTermsTable extends _i1.Table {
  UserTermsTable({super.tableRelation}) : super(tableName: 'user_terms') {
    userId = _i1.ColumnInt(
      'userId',
      this,
    );
    termId = _i1.ColumnInt(
      'termId',
      this,
    );
    isAgreed = _i1.ColumnBool(
      'isAgreed',
      this,
    );
    agreedAt = _i1.ColumnDateTime(
      'agreedAt',
      this,
    );
    createdAt = _i1.ColumnDateTime(
      'createdAt',
      this,
    );
    $_termsAndConditionsUsertermsTermsAndConditionsId = _i1.ColumnInt(
      '_termsAndConditionsUsertermsTermsAndConditionsId',
      this,
    );
    $_usersUsertermsUsersId = _i1.ColumnInt(
      '_usersUsertermsUsersId',
      this,
    );
  }

  late final _i1.ColumnInt userId;

  late final _i1.ColumnInt termId;

  late final _i1.ColumnBool isAgreed;

  late final _i1.ColumnDateTime agreedAt;

  late final _i1.ColumnDateTime createdAt;

  late final _i1.ColumnInt $_termsAndConditionsUsertermsTermsAndConditionsId;

  late final _i1.ColumnInt $_usersUsertermsUsersId;

  @override
  List<_i1.Column> get columns => [
        id,
        userId,
        termId,
        isAgreed,
        agreedAt,
        createdAt,
        $_termsAndConditionsUsertermsTermsAndConditionsId,
        $_usersUsertermsUsersId,
      ];
}

class UserTermsInclude extends _i1.IncludeObject {
  UserTermsInclude._();

  @override
  Map<String, _i1.Include?> get includes => {};

  @override
  _i1.Table get table => UserTerms.t;
}

class UserTermsIncludeList extends _i1.IncludeList {
  UserTermsIncludeList._({
    _i1.WhereExpressionBuilder<UserTermsTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderDescending,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(UserTerms.t);
  }

  @override
  Map<String, _i1.Include?> get includes => include?.includes ?? {};

  @override
  _i1.Table get table => UserTerms.t;
}

class UserTermsRepository {
  const UserTermsRepository._();

  Future<List<UserTerms>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<UserTermsTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<UserTermsTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<UserTermsTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return session.db.find<UserTerms>(
      where: where?.call(UserTerms.t),
      orderBy: orderBy?.call(UserTerms.t),
      orderByList: orderByList?.call(UserTerms.t),
      orderDescending: orderDescending,
      limit: limit,
      offset: offset,
      transaction: transaction,
    );
  }

  Future<UserTerms?> findFirstRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<UserTermsTable>? where,
    int? offset,
    _i1.OrderByBuilder<UserTermsTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<UserTermsTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return session.db.findFirstRow<UserTerms>(
      where: where?.call(UserTerms.t),
      orderBy: orderBy?.call(UserTerms.t),
      orderByList: orderByList?.call(UserTerms.t),
      orderDescending: orderDescending,
      offset: offset,
      transaction: transaction,
    );
  }

  Future<UserTerms?> findById(
    _i1.Session session,
    int id, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.findById<UserTerms>(
      id,
      transaction: transaction,
    );
  }

  Future<List<UserTerms>> insert(
    _i1.Session session,
    List<UserTerms> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insert<UserTerms>(
      rows,
      transaction: transaction,
    );
  }

  Future<UserTerms> insertRow(
    _i1.Session session,
    UserTerms row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insertRow<UserTerms>(
      row,
      transaction: transaction,
    );
  }

  Future<List<UserTerms>> update(
    _i1.Session session,
    List<UserTerms> rows, {
    _i1.ColumnSelections<UserTermsTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.update<UserTerms>(
      rows,
      columns: columns?.call(UserTerms.t),
      transaction: transaction,
    );
  }

  Future<UserTerms> updateRow(
    _i1.Session session,
    UserTerms row, {
    _i1.ColumnSelections<UserTermsTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateRow<UserTerms>(
      row,
      columns: columns?.call(UserTerms.t),
      transaction: transaction,
    );
  }

  Future<List<UserTerms>> delete(
    _i1.Session session,
    List<UserTerms> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<UserTerms>(
      rows,
      transaction: transaction,
    );
  }

  Future<UserTerms> deleteRow(
    _i1.Session session,
    UserTerms row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteRow<UserTerms>(
      row,
      transaction: transaction,
    );
  }

  Future<List<UserTerms>> deleteWhere(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<UserTermsTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteWhere<UserTerms>(
      where: where(UserTerms.t),
      transaction: transaction,
    );
  }

  Future<int> count(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<UserTermsTable>? where,
    int? limit,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<UserTerms>(
      where: where?.call(UserTerms.t),
      limit: limit,
      transaction: transaction,
    );
  }
}
