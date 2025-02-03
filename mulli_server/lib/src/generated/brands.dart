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
import 'products.dart' as _i2;

abstract class Brands implements _i1.TableRow, _i1.ProtocolSerialization {
  Brands._({
    this.id,
    required this.name,
    required this.englishName,
    required this.logoImageUrl,
    required this.createdAt,
    required this.updatedAt,
    this.products,
  });

  factory Brands({
    int? id,
    required String name,
    required String englishName,
    required String logoImageUrl,
    required DateTime createdAt,
    required DateTime updatedAt,
    List<_i2.Products>? products,
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
      products: (jsonSerialization['products'] as List?)
          ?.map((e) => _i2.Products.fromJson((e as Map<String, dynamic>)))
          .toList(),
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

  List<_i2.Products>? products;

  @override
  _i1.Table get table => t;

  Brands copyWith({
    int? id,
    String? name,
    String? englishName,
    String? logoImageUrl,
    DateTime? createdAt,
    DateTime? updatedAt,
    List<_i2.Products>? products,
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
      if (products != null)
        'products': products?.toJson(valueToJson: (v) => v.toJson()),
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
      if (products != null)
        'products': products?.toJson(valueToJson: (v) => v.toJsonForProtocol()),
    };
  }

  static BrandsInclude include({_i2.ProductsIncludeList? products}) {
    return BrandsInclude._(products: products);
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
    List<_i2.Products>? products,
  }) : super._(
          id: id,
          name: name,
          englishName: englishName,
          logoImageUrl: logoImageUrl,
          createdAt: createdAt,
          updatedAt: updatedAt,
          products: products,
        );

  @override
  Brands copyWith({
    Object? id = _Undefined,
    String? name,
    String? englishName,
    String? logoImageUrl,
    DateTime? createdAt,
    DateTime? updatedAt,
    Object? products = _Undefined,
  }) {
    return Brands(
      id: id is int? ? id : this.id,
      name: name ?? this.name,
      englishName: englishName ?? this.englishName,
      logoImageUrl: logoImageUrl ?? this.logoImageUrl,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
      products: products is List<_i2.Products>?
          ? products
          : this.products?.map((e0) => e0.copyWith()).toList(),
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

  _i2.ProductsTable? ___products;

  _i1.ManyRelation<_i2.ProductsTable>? _products;

  _i2.ProductsTable get __products {
    if (___products != null) return ___products!;
    ___products = _i1.createRelationTable(
      relationFieldName: '__products',
      field: Brands.t.id,
      foreignField: _i2.Products.t.$_brandsProductsBrandsId,
      tableRelation: tableRelation,
      createTable: (foreignTableRelation) =>
          _i2.ProductsTable(tableRelation: foreignTableRelation),
    );
    return ___products!;
  }

  _i1.ManyRelation<_i2.ProductsTable> get products {
    if (_products != null) return _products!;
    var relationTable = _i1.createRelationTable(
      relationFieldName: 'products',
      field: Brands.t.id,
      foreignField: _i2.Products.t.$_brandsProductsBrandsId,
      tableRelation: tableRelation,
      createTable: (foreignTableRelation) =>
          _i2.ProductsTable(tableRelation: foreignTableRelation),
    );
    _products = _i1.ManyRelation<_i2.ProductsTable>(
      tableWithRelations: relationTable,
      table: _i2.ProductsTable(
          tableRelation: relationTable.tableRelation!.lastRelation),
    );
    return _products!;
  }

  @override
  List<_i1.Column> get columns => [
        id,
        name,
        englishName,
        logoImageUrl,
        createdAt,
        updatedAt,
      ];

  @override
  _i1.Table? getRelationTable(String relationField) {
    if (relationField == 'products') {
      return __products;
    }
    return null;
  }
}

class BrandsInclude extends _i1.IncludeObject {
  BrandsInclude._({_i2.ProductsIncludeList? products}) {
    _products = products;
  }

  _i2.ProductsIncludeList? _products;

  @override
  Map<String, _i1.Include?> get includes => {'products': _products};

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

  final attach = const BrandsAttachRepository._();

  final attachRow = const BrandsAttachRowRepository._();

  final detach = const BrandsDetachRepository._();

  final detachRow = const BrandsDetachRowRepository._();

  Future<List<Brands>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<BrandsTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<BrandsTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<BrandsTable>? orderByList,
    _i1.Transaction? transaction,
    BrandsInclude? include,
  }) async {
    return session.db.find<Brands>(
      where: where?.call(Brands.t),
      orderBy: orderBy?.call(Brands.t),
      orderByList: orderByList?.call(Brands.t),
      orderDescending: orderDescending,
      limit: limit,
      offset: offset,
      transaction: transaction,
      include: include,
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
    BrandsInclude? include,
  }) async {
    return session.db.findFirstRow<Brands>(
      where: where?.call(Brands.t),
      orderBy: orderBy?.call(Brands.t),
      orderByList: orderByList?.call(Brands.t),
      orderDescending: orderDescending,
      offset: offset,
      transaction: transaction,
      include: include,
    );
  }

  Future<Brands?> findById(
    _i1.Session session,
    int id, {
    _i1.Transaction? transaction,
    BrandsInclude? include,
  }) async {
    return session.db.findById<Brands>(
      id,
      transaction: transaction,
      include: include,
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

class BrandsAttachRepository {
  const BrandsAttachRepository._();

  Future<void> products(
    _i1.Session session,
    Brands brands,
    List<_i2.Products> products, {
    _i1.Transaction? transaction,
  }) async {
    if (products.any((e) => e.id == null)) {
      throw ArgumentError.notNull('products.id');
    }
    if (brands.id == null) {
      throw ArgumentError.notNull('brands.id');
    }

    var $products = products
        .map((e) => _i2.ProductsImplicit(
              e,
              $_brandsProductsBrandsId: brands.id,
            ))
        .toList();
    await session.db.update<_i2.Products>(
      $products,
      columns: [_i2.Products.t.$_brandsProductsBrandsId],
      transaction: transaction,
    );
  }
}

class BrandsAttachRowRepository {
  const BrandsAttachRowRepository._();

  Future<void> products(
    _i1.Session session,
    Brands brands,
    _i2.Products products, {
    _i1.Transaction? transaction,
  }) async {
    if (products.id == null) {
      throw ArgumentError.notNull('products.id');
    }
    if (brands.id == null) {
      throw ArgumentError.notNull('brands.id');
    }

    var $products = _i2.ProductsImplicit(
      products,
      $_brandsProductsBrandsId: brands.id,
    );
    await session.db.updateRow<_i2.Products>(
      $products,
      columns: [_i2.Products.t.$_brandsProductsBrandsId],
      transaction: transaction,
    );
  }
}

class BrandsDetachRepository {
  const BrandsDetachRepository._();

  Future<void> products(
    _i1.Session session,
    List<_i2.Products> products, {
    _i1.Transaction? transaction,
  }) async {
    if (products.any((e) => e.id == null)) {
      throw ArgumentError.notNull('products.id');
    }

    var $products = products
        .map((e) => _i2.ProductsImplicit(
              e,
              $_brandsProductsBrandsId: null,
            ))
        .toList();
    await session.db.update<_i2.Products>(
      $products,
      columns: [_i2.Products.t.$_brandsProductsBrandsId],
      transaction: transaction,
    );
  }
}

class BrandsDetachRowRepository {
  const BrandsDetachRowRepository._();

  Future<void> products(
    _i1.Session session,
    _i2.Products products, {
    _i1.Transaction? transaction,
  }) async {
    if (products.id == null) {
      throw ArgumentError.notNull('products.id');
    }

    var $products = _i2.ProductsImplicit(
      products,
      $_brandsProductsBrandsId: null,
    );
    await session.db.updateRow<_i2.Products>(
      $products,
      columns: [_i2.Products.t.$_brandsProductsBrandsId],
      transaction: transaction,
    );
  }
}
