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

abstract class ProductsLikes implements _i1.SerializableModel {
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

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  int? id;

  int productId;

  int userId;

  bool isDeleted;

  DateTime createdAt;

  DateTime updatedAt;

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
    };
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
