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

abstract class Users implements _i1.TableRow, _i1.ProtocolSerialization {
  Users._({
    this.id,
    required this.socialId,
    required this.socialType,
    required this.name,
    required this.email,
    required this.userProfileUrl,
    required this.createdAt,
    required this.updatedAt,
  });

  factory Users({
    int? id,
    required String socialId,
    required String socialType,
    required String name,
    required String email,
    required String userProfileUrl,
    required DateTime createdAt,
    required DateTime updatedAt,
  }) = _UsersImpl;

  factory Users.fromJson(Map<String, dynamic> jsonSerialization) {
    return Users(
      id: jsonSerialization['id'] as int?,
      socialId: jsonSerialization['socialId'] as String,
      socialType: jsonSerialization['socialType'] as String,
      name: jsonSerialization['name'] as String,
      email: jsonSerialization['email'] as String,
      userProfileUrl: jsonSerialization['userProfileUrl'] as String,
      createdAt:
          _i1.DateTimeJsonExtension.fromJson(jsonSerialization['createdAt']),
      updatedAt:
          _i1.DateTimeJsonExtension.fromJson(jsonSerialization['updatedAt']),
    );
  }

  static final t = UsersTable();

  static const db = UsersRepository._();

  @override
  int? id;

  String socialId;

  String socialType;

  String name;

  String email;

  String userProfileUrl;

  DateTime createdAt;

  DateTime updatedAt;

  @override
  _i1.Table get table => t;

  Users copyWith({
    int? id,
    String? socialId,
    String? socialType,
    String? name,
    String? email,
    String? userProfileUrl,
    DateTime? createdAt,
    DateTime? updatedAt,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      if (id != null) 'id': id,
      'socialId': socialId,
      'socialType': socialType,
      'name': name,
      'email': email,
      'userProfileUrl': userProfileUrl,
      'createdAt': createdAt.toJson(),
      'updatedAt': updatedAt.toJson(),
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      if (id != null) 'id': id,
      'socialId': socialId,
      'socialType': socialType,
      'name': name,
      'email': email,
      'userProfileUrl': userProfileUrl,
      'createdAt': createdAt.toJson(),
      'updatedAt': updatedAt.toJson(),
    };
  }

  static UsersInclude include() {
    return UsersInclude._();
  }

  static UsersIncludeList includeList({
    _i1.WhereExpressionBuilder<UsersTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<UsersTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<UsersTable>? orderByList,
    UsersInclude? include,
  }) {
    return UsersIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(Users.t),
      orderDescending: orderDescending,
      orderByList: orderByList?.call(Users.t),
      include: include,
    );
  }

  @override
  String toString() {
    return _i1.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _UsersImpl extends Users {
  _UsersImpl({
    int? id,
    required String socialId,
    required String socialType,
    required String name,
    required String email,
    required String userProfileUrl,
    required DateTime createdAt,
    required DateTime updatedAt,
  }) : super._(
          id: id,
          socialId: socialId,
          socialType: socialType,
          name: name,
          email: email,
          userProfileUrl: userProfileUrl,
          createdAt: createdAt,
          updatedAt: updatedAt,
        );

  @override
  Users copyWith({
    Object? id = _Undefined,
    String? socialId,
    String? socialType,
    String? name,
    String? email,
    String? userProfileUrl,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) {
    return Users(
      id: id is int? ? id : this.id,
      socialId: socialId ?? this.socialId,
      socialType: socialType ?? this.socialType,
      name: name ?? this.name,
      email: email ?? this.email,
      userProfileUrl: userProfileUrl ?? this.userProfileUrl,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
    );
  }
}

class UsersTable extends _i1.Table {
  UsersTable({super.tableRelation}) : super(tableName: 'users') {
    socialId = _i1.ColumnString(
      'socialId',
      this,
    );
    socialType = _i1.ColumnString(
      'socialType',
      this,
    );
    name = _i1.ColumnString(
      'name',
      this,
    );
    email = _i1.ColumnString(
      'email',
      this,
    );
    userProfileUrl = _i1.ColumnString(
      'userProfileUrl',
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

  late final _i1.ColumnString socialId;

  late final _i1.ColumnString socialType;

  late final _i1.ColumnString name;

  late final _i1.ColumnString email;

  late final _i1.ColumnString userProfileUrl;

  late final _i1.ColumnDateTime createdAt;

  late final _i1.ColumnDateTime updatedAt;

  @override
  List<_i1.Column> get columns => [
        id,
        socialId,
        socialType,
        name,
        email,
        userProfileUrl,
        createdAt,
        updatedAt,
      ];
}

class UsersInclude extends _i1.IncludeObject {
  UsersInclude._();

  @override
  Map<String, _i1.Include?> get includes => {};

  @override
  _i1.Table get table => Users.t;
}

class UsersIncludeList extends _i1.IncludeList {
  UsersIncludeList._({
    _i1.WhereExpressionBuilder<UsersTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderDescending,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(Users.t);
  }

  @override
  Map<String, _i1.Include?> get includes => include?.includes ?? {};

  @override
  _i1.Table get table => Users.t;
}

class UsersRepository {
  const UsersRepository._();

  Future<List<Users>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<UsersTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<UsersTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<UsersTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return session.db.find<Users>(
      where: where?.call(Users.t),
      orderBy: orderBy?.call(Users.t),
      orderByList: orderByList?.call(Users.t),
      orderDescending: orderDescending,
      limit: limit,
      offset: offset,
      transaction: transaction,
    );
  }

  Future<Users?> findFirstRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<UsersTable>? where,
    int? offset,
    _i1.OrderByBuilder<UsersTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<UsersTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return session.db.findFirstRow<Users>(
      where: where?.call(Users.t),
      orderBy: orderBy?.call(Users.t),
      orderByList: orderByList?.call(Users.t),
      orderDescending: orderDescending,
      offset: offset,
      transaction: transaction,
    );
  }

  Future<Users?> findById(
    _i1.Session session,
    int id, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.findById<Users>(
      id,
      transaction: transaction,
    );
  }

  Future<List<Users>> insert(
    _i1.Session session,
    List<Users> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insert<Users>(
      rows,
      transaction: transaction,
    );
  }

  Future<Users> insertRow(
    _i1.Session session,
    Users row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insertRow<Users>(
      row,
      transaction: transaction,
    );
  }

  Future<List<Users>> update(
    _i1.Session session,
    List<Users> rows, {
    _i1.ColumnSelections<UsersTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.update<Users>(
      rows,
      columns: columns?.call(Users.t),
      transaction: transaction,
    );
  }

  Future<Users> updateRow(
    _i1.Session session,
    Users row, {
    _i1.ColumnSelections<UsersTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateRow<Users>(
      row,
      columns: columns?.call(Users.t),
      transaction: transaction,
    );
  }

  Future<List<Users>> delete(
    _i1.Session session,
    List<Users> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<Users>(
      rows,
      transaction: transaction,
    );
  }

  Future<Users> deleteRow(
    _i1.Session session,
    Users row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteRow<Users>(
      row,
      transaction: transaction,
    );
  }

  Future<List<Users>> deleteWhere(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<UsersTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteWhere<Users>(
      where: where(Users.t),
      transaction: transaction,
    );
  }

  Future<int> count(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<UsersTable>? where,
    int? limit,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<Users>(
      where: where?.call(Users.t),
      limit: limit,
      transaction: transaction,
    );
  }
}
