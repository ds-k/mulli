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

abstract class ProductsLikes
    implements _i1.TableRow, _i1.ProtocolSerialization {
  ProductsLikes._({
    this.id,
    required this.productId,
    required this.userId,
    required this.isDeleted,
    required this.createdAt,
    required this.updatedAt,
  });

  factory ProductsLikes({
    int? id,
    required int productId,
    required int userId,
    required bool isDeleted,
    required DateTime createdAt,
    required DateTime updatedAt,
  }) = _ProductsLikesImpl;

  factory ProductsLikes.fromJson(Map<String, dynamic> jsonSerialization) {
    return ProductsLikes(
      id: jsonSerialization['id'] as int?,
      productId: jsonSerialization['productId'] as int,
      userId: jsonSerialization['userId'] as int,
      isDeleted: jsonSerialization['isDeleted'] as bool,
      createdAt:
          _i1.DateTimeJsonExtension.fromJson(jsonSerialization['createdAt']),
      updatedAt:
          _i1.DateTimeJsonExtension.fromJson(jsonSerialization['updatedAt']),
    );
  }

  static final t = ProductsLikesTable();

  static const db = ProductsLikesRepository._();

  @override
  int? id;

  int productId;

  int userId;

  bool isDeleted;

  DateTime createdAt;

  DateTime updatedAt;

  int? _productsLikesProductsId;

  int? _usersProductlikesUsersId;

  @override
  _i1.Table get table => t;

  ProductsLikes copyWith({
    int? id,
    int? productId,
    int? userId,
    bool? isDeleted,
    DateTime? createdAt,
    DateTime? updatedAt,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      if (id != null) 'id': id,
      'productId': productId,
      'userId': userId,
      'isDeleted': isDeleted,
      'createdAt': createdAt.toJson(),
      'updatedAt': updatedAt.toJson(),
      if (_productsLikesProductsId != null)
        '_productsLikesProductsId': _productsLikesProductsId,
      if (_usersProductlikesUsersId != null)
        '_usersProductlikesUsersId': _usersProductlikesUsersId,
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      if (id != null) 'id': id,
      'productId': productId,
      'userId': userId,
      'isDeleted': isDeleted,
      'createdAt': createdAt.toJson(),
      'updatedAt': updatedAt.toJson(),
    };
  }

  static ProductsLikesInclude include() {
    return ProductsLikesInclude._();
  }

  static ProductsLikesIncludeList includeList({
    _i1.WhereExpressionBuilder<ProductsLikesTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<ProductsLikesTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<ProductsLikesTable>? orderByList,
    ProductsLikesInclude? include,
  }) {
    return ProductsLikesIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(ProductsLikes.t),
      orderDescending: orderDescending,
      orderByList: orderByList?.call(ProductsLikes.t),
      include: include,
    );
  }

  @override
  String toString() {
    return _i1.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _ProductsLikesImpl extends ProductsLikes {
  _ProductsLikesImpl({
    int? id,
    required int productId,
    required int userId,
    required bool isDeleted,
    required DateTime createdAt,
    required DateTime updatedAt,
  }) : super._(
          id: id,
          productId: productId,
          userId: userId,
          isDeleted: isDeleted,
          createdAt: createdAt,
          updatedAt: updatedAt,
        );

  @override
  ProductsLikes copyWith({
    Object? id = _Undefined,
    int? productId,
    int? userId,
    bool? isDeleted,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) {
    return ProductsLikes(
      id: id is int? ? id : this.id,
      productId: productId ?? this.productId,
      userId: userId ?? this.userId,
      isDeleted: isDeleted ?? this.isDeleted,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
    );
  }
}

class ProductsLikesImplicit extends _ProductsLikesImpl {
  ProductsLikesImplicit._({
    int? id,
    required int productId,
    required int userId,
    required bool isDeleted,
    required DateTime createdAt,
    required DateTime updatedAt,
    this.$_productsLikesProductsId,
    this.$_usersProductlikesUsersId,
  }) : super(
          id: id,
          productId: productId,
          userId: userId,
          isDeleted: isDeleted,
          createdAt: createdAt,
          updatedAt: updatedAt,
        );

  factory ProductsLikesImplicit(
    ProductsLikes productsLikes, {
    int? $_productsLikesProductsId,
    int? $_usersProductlikesUsersId,
  }) {
    return ProductsLikesImplicit._(
      id: productsLikes.id,
      productId: productsLikes.productId,
      userId: productsLikes.userId,
      isDeleted: productsLikes.isDeleted,
      createdAt: productsLikes.createdAt,
      updatedAt: productsLikes.updatedAt,
      $_productsLikesProductsId: $_productsLikesProductsId,
      $_usersProductlikesUsersId: $_usersProductlikesUsersId,
    );
  }

  int? $_productsLikesProductsId;

  int? $_usersProductlikesUsersId;

  @override
  Map<String, dynamic> toJson() {
    var jsonMap = super.toJson();
    jsonMap.addAll({
      '_productsLikesProductsId': $_productsLikesProductsId,
      '_usersProductlikesUsersId': $_usersProductlikesUsersId
    });
    return jsonMap;
  }
}

class ProductsLikesTable extends _i1.Table {
  ProductsLikesTable({super.tableRelation})
      : super(tableName: 'products_likes') {
    productId = _i1.ColumnInt(
      'productId',
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
    $_productsLikesProductsId = _i1.ColumnInt(
      '_productsLikesProductsId',
      this,
    );
    $_usersProductlikesUsersId = _i1.ColumnInt(
      '_usersProductlikesUsersId',
      this,
    );
  }

  late final _i1.ColumnInt productId;

  late final _i1.ColumnInt userId;

  late final _i1.ColumnBool isDeleted;

  late final _i1.ColumnDateTime createdAt;

  late final _i1.ColumnDateTime updatedAt;

  late final _i1.ColumnInt $_productsLikesProductsId;

  late final _i1.ColumnInt $_usersProductlikesUsersId;

  @override
  List<_i1.Column> get columns => [
        id,
        productId,
        userId,
        isDeleted,
        createdAt,
        updatedAt,
        $_productsLikesProductsId,
        $_usersProductlikesUsersId,
      ];
}

class ProductsLikesInclude extends _i1.IncludeObject {
  ProductsLikesInclude._();

  @override
  Map<String, _i1.Include?> get includes => {};

  @override
  _i1.Table get table => ProductsLikes.t;
}

class ProductsLikesIncludeList extends _i1.IncludeList {
  ProductsLikesIncludeList._({
    _i1.WhereExpressionBuilder<ProductsLikesTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderDescending,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(ProductsLikes.t);
  }

  @override
  Map<String, _i1.Include?> get includes => include?.includes ?? {};

  @override
  _i1.Table get table => ProductsLikes.t;
}

class ProductsLikesRepository {
  const ProductsLikesRepository._();

  Future<List<ProductsLikes>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<ProductsLikesTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<ProductsLikesTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<ProductsLikesTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return session.db.find<ProductsLikes>(
      where: where?.call(ProductsLikes.t),
      orderBy: orderBy?.call(ProductsLikes.t),
      orderByList: orderByList?.call(ProductsLikes.t),
      orderDescending: orderDescending,
      limit: limit,
      offset: offset,
      transaction: transaction,
    );
  }

  Future<ProductsLikes?> findFirstRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<ProductsLikesTable>? where,
    int? offset,
    _i1.OrderByBuilder<ProductsLikesTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<ProductsLikesTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return session.db.findFirstRow<ProductsLikes>(
      where: where?.call(ProductsLikes.t),
      orderBy: orderBy?.call(ProductsLikes.t),
      orderByList: orderByList?.call(ProductsLikes.t),
      orderDescending: orderDescending,
      offset: offset,
      transaction: transaction,
    );
  }

  Future<ProductsLikes?> findById(
    _i1.Session session,
    int id, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.findById<ProductsLikes>(
      id,
      transaction: transaction,
    );
  }

  Future<List<ProductsLikes>> insert(
    _i1.Session session,
    List<ProductsLikes> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insert<ProductsLikes>(
      rows,
      transaction: transaction,
    );
  }

  Future<ProductsLikes> insertRow(
    _i1.Session session,
    ProductsLikes row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insertRow<ProductsLikes>(
      row,
      transaction: transaction,
    );
  }

  Future<List<ProductsLikes>> update(
    _i1.Session session,
    List<ProductsLikes> rows, {
    _i1.ColumnSelections<ProductsLikesTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.update<ProductsLikes>(
      rows,
      columns: columns?.call(ProductsLikes.t),
      transaction: transaction,
    );
  }

  Future<ProductsLikes> updateRow(
    _i1.Session session,
    ProductsLikes row, {
    _i1.ColumnSelections<ProductsLikesTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateRow<ProductsLikes>(
      row,
      columns: columns?.call(ProductsLikes.t),
      transaction: transaction,
    );
  }

  Future<List<ProductsLikes>> delete(
    _i1.Session session,
    List<ProductsLikes> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<ProductsLikes>(
      rows,
      transaction: transaction,
    );
  }

  Future<ProductsLikes> deleteRow(
    _i1.Session session,
    ProductsLikes row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteRow<ProductsLikes>(
      row,
      transaction: transaction,
    );
  }

  Future<List<ProductsLikes>> deleteWhere(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<ProductsLikesTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteWhere<ProductsLikes>(
      where: where(ProductsLikes.t),
      transaction: transaction,
    );
  }

  Future<int> count(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<ProductsLikesTable>? where,
    int? limit,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<ProductsLikes>(
      where: where?.call(ProductsLikes.t),
      limit: limit,
      transaction: transaction,
    );
  }
}
