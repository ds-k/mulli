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

abstract class ProductsImages implements _i1.SerializableModel {
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

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  int? id;

  int productId;

  String s3Url;

  bool isThumbnail;

  DateTime createdAt;

  DateTime updatedAt;

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
    };
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
