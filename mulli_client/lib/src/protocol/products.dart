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

abstract class Products implements _i1.SerializableModel {
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

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
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
