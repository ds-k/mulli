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

abstract class ProductsImages
    implements _i1.TableRow, _i1.ProtocolSerialization {
  ProductsImages._({
    this.id,
    required this.productId,
    required this.s3Url,
    required this.isThumbnail,
    required this.createdAt,
    required this.updatedAt,
  });

  factory ProductsImages({
    int? id,
    required int productId,
    required String s3Url,
    required bool isThumbnail,
    required DateTime createdAt,
    required DateTime updatedAt,
  }) = _ProductsImagesImpl;

  factory ProductsImages.fromJson(Map<String, dynamic> jsonSerialization) {
    return ProductsImages(
      id: jsonSerialization['id'] as int?,
      productId: jsonSerialization['productId'] as int,
      s3Url: jsonSerialization['s3Url'] as String,
      isThumbnail: jsonSerialization['isThumbnail'] as bool,
      createdAt:
          _i1.DateTimeJsonExtension.fromJson(jsonSerialization['createdAt']),
      updatedAt:
          _i1.DateTimeJsonExtension.fromJson(jsonSerialization['updatedAt']),
    );
  }

  static final t = ProductsImagesTable();

  static const db = ProductsImagesRepository._();

  @override
  int? id;

  int productId;

  String s3Url;

  bool isThumbnail;

  DateTime createdAt;

  DateTime updatedAt;

  int? _productsImagesProductsId;

  @override
  _i1.Table get table => t;

  ProductsImages copyWith({
    int? id,
    int? productId,
    String? s3Url,
    bool? isThumbnail,
    DateTime? createdAt,
    DateTime? updatedAt,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      if (id != null) 'id': id,
      'productId': productId,
      's3Url': s3Url,
      'isThumbnail': isThumbnail,
      'createdAt': createdAt.toJson(),
      'updatedAt': updatedAt.toJson(),
      if (_productsImagesProductsId != null)
        '_productsImagesProductsId': _productsImagesProductsId,
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      if (id != null) 'id': id,
      'productId': productId,
      's3Url': s3Url,
      'isThumbnail': isThumbnail,
      'createdAt': createdAt.toJson(),
      'updatedAt': updatedAt.toJson(),
    };
  }

  static ProductsImagesInclude include() {
    return ProductsImagesInclude._();
  }

  static ProductsImagesIncludeList includeList({
    _i1.WhereExpressionBuilder<ProductsImagesTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<ProductsImagesTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<ProductsImagesTable>? orderByList,
    ProductsImagesInclude? include,
  }) {
    return ProductsImagesIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(ProductsImages.t),
      orderDescending: orderDescending,
      orderByList: orderByList?.call(ProductsImages.t),
      include: include,
    );
  }

  @override
  String toString() {
    return _i1.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _ProductsImagesImpl extends ProductsImages {
  _ProductsImagesImpl({
    int? id,
    required int productId,
    required String s3Url,
    required bool isThumbnail,
    required DateTime createdAt,
    required DateTime updatedAt,
  }) : super._(
          id: id,
          productId: productId,
          s3Url: s3Url,
          isThumbnail: isThumbnail,
          createdAt: createdAt,
          updatedAt: updatedAt,
        );

  @override
  ProductsImages copyWith({
    Object? id = _Undefined,
    int? productId,
    String? s3Url,
    bool? isThumbnail,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) {
    return ProductsImages(
      id: id is int? ? id : this.id,
      productId: productId ?? this.productId,
      s3Url: s3Url ?? this.s3Url,
      isThumbnail: isThumbnail ?? this.isThumbnail,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
    );
  }
}

class ProductsImagesImplicit extends _ProductsImagesImpl {
  ProductsImagesImplicit._({
    int? id,
    required int productId,
    required String s3Url,
    required bool isThumbnail,
    required DateTime createdAt,
    required DateTime updatedAt,
    this.$_productsImagesProductsId,
  }) : super(
          id: id,
          productId: productId,
          s3Url: s3Url,
          isThumbnail: isThumbnail,
          createdAt: createdAt,
          updatedAt: updatedAt,
        );

  factory ProductsImagesImplicit(
    ProductsImages productsImages, {
    int? $_productsImagesProductsId,
  }) {
    return ProductsImagesImplicit._(
      id: productsImages.id,
      productId: productsImages.productId,
      s3Url: productsImages.s3Url,
      isThumbnail: productsImages.isThumbnail,
      createdAt: productsImages.createdAt,
      updatedAt: productsImages.updatedAt,
      $_productsImagesProductsId: $_productsImagesProductsId,
    );
  }

  int? $_productsImagesProductsId;

  @override
  Map<String, dynamic> toJson() {
    var jsonMap = super.toJson();
    jsonMap.addAll({'_productsImagesProductsId': $_productsImagesProductsId});
    return jsonMap;
  }
}

class ProductsImagesTable extends _i1.Table {
  ProductsImagesTable({super.tableRelation})
      : super(tableName: 'products_images') {
    productId = _i1.ColumnInt(
      'productId',
      this,
    );
    s3Url = _i1.ColumnString(
      's3Url',
      this,
    );
    isThumbnail = _i1.ColumnBool(
      'isThumbnail',
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
    $_productsImagesProductsId = _i1.ColumnInt(
      '_productsImagesProductsId',
      this,
    );
  }

  late final _i1.ColumnInt productId;

  late final _i1.ColumnString s3Url;

  late final _i1.ColumnBool isThumbnail;

  late final _i1.ColumnDateTime createdAt;

  late final _i1.ColumnDateTime updatedAt;

  late final _i1.ColumnInt $_productsImagesProductsId;

  @override
  List<_i1.Column> get columns => [
        id,
        productId,
        s3Url,
        isThumbnail,
        createdAt,
        updatedAt,
        $_productsImagesProductsId,
      ];
}

class ProductsImagesInclude extends _i1.IncludeObject {
  ProductsImagesInclude._();

  @override
  Map<String, _i1.Include?> get includes => {};

  @override
  _i1.Table get table => ProductsImages.t;
}

class ProductsImagesIncludeList extends _i1.IncludeList {
  ProductsImagesIncludeList._({
    _i1.WhereExpressionBuilder<ProductsImagesTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderDescending,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(ProductsImages.t);
  }

  @override
  Map<String, _i1.Include?> get includes => include?.includes ?? {};

  @override
  _i1.Table get table => ProductsImages.t;
}

class ProductsImagesRepository {
  const ProductsImagesRepository._();

  Future<List<ProductsImages>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<ProductsImagesTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<ProductsImagesTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<ProductsImagesTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return session.db.find<ProductsImages>(
      where: where?.call(ProductsImages.t),
      orderBy: orderBy?.call(ProductsImages.t),
      orderByList: orderByList?.call(ProductsImages.t),
      orderDescending: orderDescending,
      limit: limit,
      offset: offset,
      transaction: transaction,
    );
  }

  Future<ProductsImages?> findFirstRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<ProductsImagesTable>? where,
    int? offset,
    _i1.OrderByBuilder<ProductsImagesTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<ProductsImagesTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return session.db.findFirstRow<ProductsImages>(
      where: where?.call(ProductsImages.t),
      orderBy: orderBy?.call(ProductsImages.t),
      orderByList: orderByList?.call(ProductsImages.t),
      orderDescending: orderDescending,
      offset: offset,
      transaction: transaction,
    );
  }

  Future<ProductsImages?> findById(
    _i1.Session session,
    int id, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.findById<ProductsImages>(
      id,
      transaction: transaction,
    );
  }

  Future<List<ProductsImages>> insert(
    _i1.Session session,
    List<ProductsImages> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insert<ProductsImages>(
      rows,
      transaction: transaction,
    );
  }

  Future<ProductsImages> insertRow(
    _i1.Session session,
    ProductsImages row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insertRow<ProductsImages>(
      row,
      transaction: transaction,
    );
  }

  Future<List<ProductsImages>> update(
    _i1.Session session,
    List<ProductsImages> rows, {
    _i1.ColumnSelections<ProductsImagesTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.update<ProductsImages>(
      rows,
      columns: columns?.call(ProductsImages.t),
      transaction: transaction,
    );
  }

  Future<ProductsImages> updateRow(
    _i1.Session session,
    ProductsImages row, {
    _i1.ColumnSelections<ProductsImagesTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateRow<ProductsImages>(
      row,
      columns: columns?.call(ProductsImages.t),
      transaction: transaction,
    );
  }

  Future<List<ProductsImages>> delete(
    _i1.Session session,
    List<ProductsImages> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<ProductsImages>(
      rows,
      transaction: transaction,
    );
  }

  Future<ProductsImages> deleteRow(
    _i1.Session session,
    ProductsImages row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteRow<ProductsImages>(
      row,
      transaction: transaction,
    );
  }

  Future<List<ProductsImages>> deleteWhere(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<ProductsImagesTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteWhere<ProductsImages>(
      where: where(ProductsImages.t),
      transaction: transaction,
    );
  }

  Future<int> count(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<ProductsImagesTable>? where,
    int? limit,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<ProductsImages>(
      where: where?.call(ProductsImages.t),
      limit: limit,
      transaction: transaction,
    );
  }
}
