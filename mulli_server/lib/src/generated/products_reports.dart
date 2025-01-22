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

abstract class ProductsReports
    implements _i1.TableRow, _i1.ProtocolSerialization {
  ProductsReports._({
    this.id,
    required this.userId,
    required this.productId,
    required this.reason,
    required this.createdAt,
    required this.updatedAt,
  });

  factory ProductsReports({
    int? id,
    required int userId,
    required int productId,
    required String reason,
    required DateTime createdAt,
    required DateTime updatedAt,
  }) = _ProductsReportsImpl;

  factory ProductsReports.fromJson(Map<String, dynamic> jsonSerialization) {
    return ProductsReports(
      id: jsonSerialization['id'] as int?,
      userId: jsonSerialization['userId'] as int,
      productId: jsonSerialization['productId'] as int,
      reason: jsonSerialization['reason'] as String,
      createdAt:
          _i1.DateTimeJsonExtension.fromJson(jsonSerialization['createdAt']),
      updatedAt:
          _i1.DateTimeJsonExtension.fromJson(jsonSerialization['updatedAt']),
    );
  }

  static final t = ProductsReportsTable();

  static const db = ProductsReportsRepository._();

  @override
  int? id;

  int userId;

  int productId;

  String reason;

  DateTime createdAt;

  DateTime updatedAt;

  @override
  _i1.Table get table => t;

  ProductsReports copyWith({
    int? id,
    int? userId,
    int? productId,
    String? reason,
    DateTime? createdAt,
    DateTime? updatedAt,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      if (id != null) 'id': id,
      'userId': userId,
      'productId': productId,
      'reason': reason,
      'createdAt': createdAt.toJson(),
      'updatedAt': updatedAt.toJson(),
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      if (id != null) 'id': id,
      'userId': userId,
      'productId': productId,
      'reason': reason,
      'createdAt': createdAt.toJson(),
      'updatedAt': updatedAt.toJson(),
    };
  }

  static ProductsReportsInclude include() {
    return ProductsReportsInclude._();
  }

  static ProductsReportsIncludeList includeList({
    _i1.WhereExpressionBuilder<ProductsReportsTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<ProductsReportsTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<ProductsReportsTable>? orderByList,
    ProductsReportsInclude? include,
  }) {
    return ProductsReportsIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(ProductsReports.t),
      orderDescending: orderDescending,
      orderByList: orderByList?.call(ProductsReports.t),
      include: include,
    );
  }

  @override
  String toString() {
    return _i1.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _ProductsReportsImpl extends ProductsReports {
  _ProductsReportsImpl({
    int? id,
    required int userId,
    required int productId,
    required String reason,
    required DateTime createdAt,
    required DateTime updatedAt,
  }) : super._(
          id: id,
          userId: userId,
          productId: productId,
          reason: reason,
          createdAt: createdAt,
          updatedAt: updatedAt,
        );

  @override
  ProductsReports copyWith({
    Object? id = _Undefined,
    int? userId,
    int? productId,
    String? reason,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) {
    return ProductsReports(
      id: id is int? ? id : this.id,
      userId: userId ?? this.userId,
      productId: productId ?? this.productId,
      reason: reason ?? this.reason,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
    );
  }
}

class ProductsReportsTable extends _i1.Table {
  ProductsReportsTable({super.tableRelation})
      : super(tableName: 'products_reports') {
    userId = _i1.ColumnInt(
      'userId',
      this,
    );
    productId = _i1.ColumnInt(
      'productId',
      this,
    );
    reason = _i1.ColumnString(
      'reason',
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

  late final _i1.ColumnInt productId;

  late final _i1.ColumnString reason;

  late final _i1.ColumnDateTime createdAt;

  late final _i1.ColumnDateTime updatedAt;

  @override
  List<_i1.Column> get columns => [
        id,
        userId,
        productId,
        reason,
        createdAt,
        updatedAt,
      ];
}

class ProductsReportsInclude extends _i1.IncludeObject {
  ProductsReportsInclude._();

  @override
  Map<String, _i1.Include?> get includes => {};

  @override
  _i1.Table get table => ProductsReports.t;
}

class ProductsReportsIncludeList extends _i1.IncludeList {
  ProductsReportsIncludeList._({
    _i1.WhereExpressionBuilder<ProductsReportsTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderDescending,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(ProductsReports.t);
  }

  @override
  Map<String, _i1.Include?> get includes => include?.includes ?? {};

  @override
  _i1.Table get table => ProductsReports.t;
}

class ProductsReportsRepository {
  const ProductsReportsRepository._();

  Future<List<ProductsReports>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<ProductsReportsTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<ProductsReportsTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<ProductsReportsTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return session.db.find<ProductsReports>(
      where: where?.call(ProductsReports.t),
      orderBy: orderBy?.call(ProductsReports.t),
      orderByList: orderByList?.call(ProductsReports.t),
      orderDescending: orderDescending,
      limit: limit,
      offset: offset,
      transaction: transaction,
    );
  }

  Future<ProductsReports?> findFirstRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<ProductsReportsTable>? where,
    int? offset,
    _i1.OrderByBuilder<ProductsReportsTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<ProductsReportsTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return session.db.findFirstRow<ProductsReports>(
      where: where?.call(ProductsReports.t),
      orderBy: orderBy?.call(ProductsReports.t),
      orderByList: orderByList?.call(ProductsReports.t),
      orderDescending: orderDescending,
      offset: offset,
      transaction: transaction,
    );
  }

  Future<ProductsReports?> findById(
    _i1.Session session,
    int id, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.findById<ProductsReports>(
      id,
      transaction: transaction,
    );
  }

  Future<List<ProductsReports>> insert(
    _i1.Session session,
    List<ProductsReports> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insert<ProductsReports>(
      rows,
      transaction: transaction,
    );
  }

  Future<ProductsReports> insertRow(
    _i1.Session session,
    ProductsReports row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insertRow<ProductsReports>(
      row,
      transaction: transaction,
    );
  }

  Future<List<ProductsReports>> update(
    _i1.Session session,
    List<ProductsReports> rows, {
    _i1.ColumnSelections<ProductsReportsTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.update<ProductsReports>(
      rows,
      columns: columns?.call(ProductsReports.t),
      transaction: transaction,
    );
  }

  Future<ProductsReports> updateRow(
    _i1.Session session,
    ProductsReports row, {
    _i1.ColumnSelections<ProductsReportsTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateRow<ProductsReports>(
      row,
      columns: columns?.call(ProductsReports.t),
      transaction: transaction,
    );
  }

  Future<List<ProductsReports>> delete(
    _i1.Session session,
    List<ProductsReports> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<ProductsReports>(
      rows,
      transaction: transaction,
    );
  }

  Future<ProductsReports> deleteRow(
    _i1.Session session,
    ProductsReports row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteRow<ProductsReports>(
      row,
      transaction: transaction,
    );
  }

  Future<List<ProductsReports>> deleteWhere(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<ProductsReportsTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteWhere<ProductsReports>(
      where: where(ProductsReports.t),
      transaction: transaction,
    );
  }

  Future<int> count(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<ProductsReportsTable>? where,
    int? limit,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<ProductsReports>(
      where: where?.call(ProductsReports.t),
      limit: limit,
      transaction: transaction,
    );
  }
}
