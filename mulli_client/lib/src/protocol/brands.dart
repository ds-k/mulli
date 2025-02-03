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
import 'products.dart' as _i2;

abstract class Brands implements _i1.SerializableModel {
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

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  int? id;

  String name;

  String englishName;

  String logoImageUrl;

  DateTime createdAt;

  DateTime updatedAt;

  List<_i2.Products>? products;

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
