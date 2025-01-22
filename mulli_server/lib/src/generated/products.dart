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

abstract class Products implements _i1.TableRow, _i1.ProtocolSerialization {
  Products._({
    this.id,
    required this.userId,
    required this.title,
    required this.description,
    required this.price,
    required this.brandId,
    required this.clubType,
    required this.shaftType,
    required this.flexType,
    required this.year,
    required this.location,
    required this.likesCount,
    required this.reportsCount,
    required this.isDeleted,
    required this.createdAt,
    required this.updatedAt,
  });

  factory Products({
    int? id,
    required int userId,
    required String title,
    required String description,
    required double price,
    required int brandId,
    required String clubType,
    required String shaftType,
    required String flexType,
    required int year,
    required String location,
    required int likesCount,
    required int reportsCount,
    required bool isDeleted,
    required DateTime createdAt,
    required DateTime updatedAt,
  }) = _ProductsImpl;

  factory Products.fromJson(Map<String, dynamic> jsonSerialization) {
    return Products(
      id: jsonSerialization['id'] as int?,
      userId: jsonSerialization['userId'] as int,
      title: jsonSerialization['title'] as String,
      description: jsonSerialization['description'] as String,
      price: (jsonSerialization['price'] as num).toDouble(),
      brandId: jsonSerialization['brandId'] as int,
      clubType: jsonSerialization['clubType'] as String,
      shaftType: jsonSerialization['shaftType'] as String,
      flexType: jsonSerialization['flexType'] as String,
      year: jsonSerialization['year'] as int,
      location: jsonSerialization['location'] as String,
      likesCount: jsonSerialization['likesCount'] as int,
      reportsCount: jsonSerialization['reportsCount'] as int,
      isDeleted: jsonSerialization['isDeleted'] as bool,
      createdAt:
          _i1.DateTimeJsonExtension.fromJson(jsonSerialization['createdAt']),
      updatedAt:
          _i1.DateTimeJsonExtension.fromJson(jsonSerialization['updatedAt']),
    );
  }

  static final t = ProductsTable();

  static const db = ProductsRepository._();

  @override
  int? id;

  int userId;

  String title;

  String description;

  double price;

  int brandId;

  String clubType;

  String shaftType;

  String flexType;

  int year;

  String location;

  int likesCount;

  int reportsCount;

  bool isDeleted;

  DateTime createdAt;

  DateTime updatedAt;

  @override
  _i1.Table get table => t;

  Products copyWith({
    int? id,
    int? userId,
    String? title,
    String? description,
    double? price,
    int? brandId,
    String? clubType,
    String? shaftType,
    String? flexType,
    int? year,
    String? location,
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
      'title': title,
      'description': description,
      'price': price,
      'brandId': brandId,
      'clubType': clubType,
      'shaftType': shaftType,
      'flexType': flexType,
      'year': year,
      'location': location,
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
      'title': title,
      'description': description,
      'price': price,
      'brandId': brandId,
      'clubType': clubType,
      'shaftType': shaftType,
      'flexType': flexType,
      'year': year,
      'location': location,
      'likesCount': likesCount,
      'reportsCount': reportsCount,
      'isDeleted': isDeleted,
      'createdAt': createdAt.toJson(),
      'updatedAt': updatedAt.toJson(),
    };
  }

  static ProductsInclude include() {
    return ProductsInclude._();
  }

  static ProductsIncludeList includeList({
    _i1.WhereExpressionBuilder<ProductsTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<ProductsTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<ProductsTable>? orderByList,
    ProductsInclude? include,
  }) {
    return ProductsIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(Products.t),
      orderDescending: orderDescending,
      orderByList: orderByList?.call(Products.t),
      include: include,
    );
  }

  @override
  String toString() {
    return _i1.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _ProductsImpl extends Products {
  _ProductsImpl({
    int? id,
    required int userId,
    required String title,
    required String description,
    required double price,
    required int brandId,
    required String clubType,
    required String shaftType,
    required String flexType,
    required int year,
    required String location,
    required int likesCount,
    required int reportsCount,
    required bool isDeleted,
    required DateTime createdAt,
    required DateTime updatedAt,
  }) : super._(
          id: id,
          userId: userId,
          title: title,
          description: description,
          price: price,
          brandId: brandId,
          clubType: clubType,
          shaftType: shaftType,
          flexType: flexType,
          year: year,
          location: location,
          likesCount: likesCount,
          reportsCount: reportsCount,
          isDeleted: isDeleted,
          createdAt: createdAt,
          updatedAt: updatedAt,
        );

  @override
  Products copyWith({
    Object? id = _Undefined,
    int? userId,
    String? title,
    String? description,
    double? price,
    int? brandId,
    String? clubType,
    String? shaftType,
    String? flexType,
    int? year,
    String? location,
    int? likesCount,
    int? reportsCount,
    bool? isDeleted,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) {
    return Products(
      id: id is int? ? id : this.id,
      userId: userId ?? this.userId,
      title: title ?? this.title,
      description: description ?? this.description,
      price: price ?? this.price,
      brandId: brandId ?? this.brandId,
      clubType: clubType ?? this.clubType,
      shaftType: shaftType ?? this.shaftType,
      flexType: flexType ?? this.flexType,
      year: year ?? this.year,
      location: location ?? this.location,
      likesCount: likesCount ?? this.likesCount,
      reportsCount: reportsCount ?? this.reportsCount,
      isDeleted: isDeleted ?? this.isDeleted,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
    );
  }
}

class ProductsTable extends _i1.Table {
  ProductsTable({super.tableRelation}) : super(tableName: 'products') {
    userId = _i1.ColumnInt(
      'userId',
      this,
    );
    title = _i1.ColumnString(
      'title',
      this,
    );
    description = _i1.ColumnString(
      'description',
      this,
    );
    price = _i1.ColumnDouble(
      'price',
      this,
    );
    brandId = _i1.ColumnInt(
      'brandId',
      this,
    );
    clubType = _i1.ColumnString(
      'clubType',
      this,
    );
    shaftType = _i1.ColumnString(
      'shaftType',
      this,
    );
    flexType = _i1.ColumnString(
      'flexType',
      this,
    );
    year = _i1.ColumnInt(
      'year',
      this,
    );
    location = _i1.ColumnString(
      'location',
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

  late final _i1.ColumnString title;

  late final _i1.ColumnString description;

  late final _i1.ColumnDouble price;

  late final _i1.ColumnInt brandId;

  late final _i1.ColumnString clubType;

  late final _i1.ColumnString shaftType;

  late final _i1.ColumnString flexType;

  late final _i1.ColumnInt year;

  late final _i1.ColumnString location;

  late final _i1.ColumnInt likesCount;

  late final _i1.ColumnInt reportsCount;

  late final _i1.ColumnBool isDeleted;

  late final _i1.ColumnDateTime createdAt;

  late final _i1.ColumnDateTime updatedAt;

  @override
  List<_i1.Column> get columns => [
        id,
        userId,
        title,
        description,
        price,
        brandId,
        clubType,
        shaftType,
        flexType,
        year,
        location,
        likesCount,
        reportsCount,
        isDeleted,
        createdAt,
        updatedAt,
      ];
}

class ProductsInclude extends _i1.IncludeObject {
  ProductsInclude._();

  @override
  Map<String, _i1.Include?> get includes => {};

  @override
  _i1.Table get table => Products.t;
}

class ProductsIncludeList extends _i1.IncludeList {
  ProductsIncludeList._({
    _i1.WhereExpressionBuilder<ProductsTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderDescending,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(Products.t);
  }

  @override
  Map<String, _i1.Include?> get includes => include?.includes ?? {};

  @override
  _i1.Table get table => Products.t;
}

class ProductsRepository {
  const ProductsRepository._();

  Future<List<Products>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<ProductsTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<ProductsTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<ProductsTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return session.db.find<Products>(
      where: where?.call(Products.t),
      orderBy: orderBy?.call(Products.t),
      orderByList: orderByList?.call(Products.t),
      orderDescending: orderDescending,
      limit: limit,
      offset: offset,
      transaction: transaction,
    );
  }

  Future<Products?> findFirstRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<ProductsTable>? where,
    int? offset,
    _i1.OrderByBuilder<ProductsTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<ProductsTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return session.db.findFirstRow<Products>(
      where: where?.call(Products.t),
      orderBy: orderBy?.call(Products.t),
      orderByList: orderByList?.call(Products.t),
      orderDescending: orderDescending,
      offset: offset,
      transaction: transaction,
    );
  }

  Future<Products?> findById(
    _i1.Session session,
    int id, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.findById<Products>(
      id,
      transaction: transaction,
    );
  }

  Future<List<Products>> insert(
    _i1.Session session,
    List<Products> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insert<Products>(
      rows,
      transaction: transaction,
    );
  }

  Future<Products> insertRow(
    _i1.Session session,
    Products row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insertRow<Products>(
      row,
      transaction: transaction,
    );
  }

  Future<List<Products>> update(
    _i1.Session session,
    List<Products> rows, {
    _i1.ColumnSelections<ProductsTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.update<Products>(
      rows,
      columns: columns?.call(Products.t),
      transaction: transaction,
    );
  }

  Future<Products> updateRow(
    _i1.Session session,
    Products row, {
    _i1.ColumnSelections<ProductsTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateRow<Products>(
      row,
      columns: columns?.call(Products.t),
      transaction: transaction,
    );
  }

  Future<List<Products>> delete(
    _i1.Session session,
    List<Products> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<Products>(
      rows,
      transaction: transaction,
    );
  }

  Future<Products> deleteRow(
    _i1.Session session,
    Products row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteRow<Products>(
      row,
      transaction: transaction,
    );
  }

  Future<List<Products>> deleteWhere(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<ProductsTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteWhere<Products>(
      where: where(Products.t),
      transaction: transaction,
    );
  }

  Future<int> count(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<ProductsTable>? where,
    int? limit,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<Products>(
      where: where?.call(Products.t),
      limit: limit,
      transaction: transaction,
    );
  }
}
