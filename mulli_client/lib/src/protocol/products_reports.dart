/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: implementation_imports
// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: non_constant_identifier_names
// ignore_for_file: public_member_api_docs
// ignore_for_file: type_literal_in_constant_pattern
// ignore_for_file: use_super_parameters

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod_client/serverpod_client.dart' as _i1;

abstract class ProductsReports implements _i1.SerializableModel {
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

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  int? id;

  int userId;

  int productId;

  String reason;

  DateTime createdAt;

  DateTime updatedAt;

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
