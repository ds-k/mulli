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

abstract class Brands implements _i1.TableRow, _i1.ProtocolSerialization {
  Brands._({
    this.id,
    required this.name,
    required this.englishName,
    required this.logoImageUrl,
    required this.createdAt,
    required this.updatedAt,
  });

  factory Brands({
    int? id,
    required String name,
    required String englishName,
    required String logoImageUrl,
    required DateTime createdAt,
    required DateTime updatedAt,
  }) = _BrandsImpl;

  factory Brands.fromJson(Map<String, dynamic> jsonSerialization) {
    return Brands(
      id: jsonSerialization['id'] as int?,
      name: jsonSerialization['name'] as String,
      englishName: jsonSerialization['englishName'] as String,
      logoImageUrl: jsonSerialization['logoImageUrl'] as String,
      createdAt:
          _i1.DateTimeJsonExtension.fromJson(jsonSerialization['createdAt']),
      updatedAt:
          _i1.DateTimeJsonExtension.fromJson(jsonSerialization['updatedAt']),
    );
  }

  static final t = BrandsTable();

  static const db = BrandsRepository._();

  @override
  int? id;

  String name;

  String englishName;

  String logoImageUrl;

  DateTime createdAt;

  DateTime updatedAt;

  @override
  _i1.Table get table => t;

  Brands copyWith({
    int? id,
    String? name,
    String? englishName,
    String? logoImageUrl,
    DateTime? createdAt,
    DateTime? updatedAt,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      if (id != null) 'id': id,
      'name': name,
      'englishName': englishName,
      'logoImageUrl': logoImageUrl,
      'createdAt': createdAt.toJson(),
      'updatedAt': updatedAt.toJson(),
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      if (id != null) 'id': id,
      'name': name,
      'englishName': englishName,
      'logoImageUrl': logoImageUrl,
      'createdAt': createdAt.toJson(),
      'updatedAt': updatedAt.toJson(),
    };
  }

  static BrandsInclude include() {
    return BrandsInclude._();
  }

  static BrandsIncludeList includeList({
    _i1.WhereExpressionBuilder<BrandsTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<BrandsTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<BrandsTable>? orderByList,
    BrandsInclude? include,
  }) {
    return BrandsIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(Brands.t),
      orderDescending: orderDescending,
      orderByList: orderByList?.call(Brands.t),
      include: include,
    );
  }

  @override
  String toString() {
    return _i1.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _BrandsImpl extends Brands {
  _BrandsImpl({
    int? id,
    required String name,
    required String englishName,
    required String logoImageUrl,
    required DateTime createdAt,
    required DateTime updatedAt,
  }) : super._(
          id: id,
          name: name,
          englishName: englishName,
          logoImageUrl: logoImageUrl,
          createdAt: createdAt,
          updatedAt: updatedAt,
        );

  @override
  Brands copyWith({
    Object? id = _Undefined,
    String? name,
    String? englishName,
    String? logoImageUrl,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) {
    return Brands(
      id: id is int? ? id : this.id,
      name: name ?? this.name,
      englishName: englishName ?? this.englishName,
      logoImageUrl: logoImageUrl ?? this.logoImageUrl,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
    );
  }
}

class BrandsTable extends _i1.Table {
  BrandsTable({super.tableRelation}) : super(tableName: 'brands') {
    name = _i1.ColumnString(
      'name',
      this,
    );
    englishName = _i1.ColumnString(
      'englishName',
      this,
    );
    logoImageUrl = _i1.ColumnString(
      'logoImageUrl',
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

  late final _i1.ColumnString name;

  late final _i1.ColumnString englishName;

  late final _i1.ColumnString logoImageUrl;

  late final _i1.ColumnDateTime createdAt;

  late final _i1.ColumnDateTime updatedAt;

  @override
  List<_i1.Column> get columns => [
        id,
        name,
        englishName,
        logoImageUrl,
        createdAt,
        updatedAt,
      ];
}

class BrandsInclude extends _i1.IncludeObject {
  BrandsInclude._();

  @override
  Map<String, _i1.Include?> get includes => {};

  @override
  _i1.Table get table => Brands.t;
}

class BrandsIncludeList extends _i1.IncludeList {
  BrandsIncludeList._({
    _i1.WhereExpressionBuilder<BrandsTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderDescending,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(Brands.t);
  }

  @override
  Map<String, _i1.Include?> get includes => include?.includes ?? {};

  @override
  _i1.Table get table => Brands.t;
}

class BrandsRepository {
  const BrandsRepository._();

  Future<List<Brands>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<BrandsTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<BrandsTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<BrandsTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return session.db.find<Brands>(
      where: where?.call(Brands.t),
      orderBy: orderBy?.call(Brands.t),
      orderByList: orderByList?.call(Brands.t),
      orderDescending: orderDescending,
      limit: limit,
      offset: offset,
      transaction: transaction,
    );
  }

  Future<Brands?> findFirstRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<BrandsTable>? where,
    int? offset,
    _i1.OrderByBuilder<BrandsTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<BrandsTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return session.db.findFirstRow<Brands>(
      where: where?.call(Brands.t),
      orderBy: orderBy?.call(Brands.t),
      orderByList: orderByList?.call(Brands.t),
      orderDescending: orderDescending,
      offset: offset,
      transaction: transaction,
    );
  }

  Future<Brands?> findById(
    _i1.Session session,
    int id, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.findById<Brands>(
      id,
      transaction: transaction,
    );
  }

  Future<List<Brands>> insert(
    _i1.Session session,
    List<Brands> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insert<Brands>(
      rows,
      transaction: transaction,
    );
  }

  Future<Brands> insertRow(
    _i1.Session session,
    Brands row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insertRow<Brands>(
      row,
      transaction: transaction,
    );
  }

  Future<List<Brands>> update(
    _i1.Session session,
    List<Brands> rows, {
    _i1.ColumnSelections<BrandsTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.update<Brands>(
      rows,
      columns: columns?.call(Brands.t),
      transaction: transaction,
    );
  }

  Future<Brands> updateRow(
    _i1.Session session,
    Brands row, {
    _i1.ColumnSelections<BrandsTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateRow<Brands>(
      row,
      columns: columns?.call(Brands.t),
      transaction: transaction,
    );
  }

  Future<List<Brands>> delete(
    _i1.Session session,
    List<Brands> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<Brands>(
      rows,
      transaction: transaction,
    );
  }

  Future<Brands> deleteRow(
    _i1.Session session,
    Brands row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteRow<Brands>(
      row,
      transaction: transaction,
    );
  }

  Future<List<Brands>> deleteWhere(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<BrandsTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteWhere<Brands>(
      where: where(Brands.t),
      transaction: transaction,
    );
  }

  Future<int> count(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<BrandsTable>? where,
    int? limit,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<Brands>(
      where: where?.call(Brands.t),
      limit: limit,
      transaction: transaction,
    );
  }
}
