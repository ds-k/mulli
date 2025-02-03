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
import 'products_images.dart' as _i2;
import 'products_likes.dart' as _i3;
import 'products_reports.dart' as _i4;
import 'chat_rooms.dart' as _i5;

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
    required this.region1,
    required this.region2,
    this.region3,
    this.region4,
    required this.salesStatus,
    this.lat,
    this.lng,
    required this.likesCount,
    required this.reportsCount,
    required this.isDeleted,
    required this.createdAt,
    required this.updatedAt,
    this.images,
    this.likes,
    this.reports,
    this.chatRooms,
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
    required String region1,
    required String region2,
    String? region3,
    String? region4,
    required String salesStatus,
    double? lat,
    double? lng,
    required int likesCount,
    required int reportsCount,
    required bool isDeleted,
    required DateTime createdAt,
    required DateTime updatedAt,
    List<_i2.ProductsImages>? images,
    List<_i3.ProductsLikes>? likes,
    List<_i4.ProductsReports>? reports,
    List<_i5.ChatRooms>? chatRooms,
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
      region1: jsonSerialization['region1'] as String,
      region2: jsonSerialization['region2'] as String,
      region3: jsonSerialization['region3'] as String?,
      region4: jsonSerialization['region4'] as String?,
      salesStatus: jsonSerialization['salesStatus'] as String,
      lat: (jsonSerialization['lat'] as num?)?.toDouble(),
      lng: (jsonSerialization['lng'] as num?)?.toDouble(),
      likesCount: jsonSerialization['likesCount'] as int,
      reportsCount: jsonSerialization['reportsCount'] as int,
      isDeleted: jsonSerialization['isDeleted'] as bool,
      createdAt:
          _i1.DateTimeJsonExtension.fromJson(jsonSerialization['createdAt']),
      updatedAt:
          _i1.DateTimeJsonExtension.fromJson(jsonSerialization['updatedAt']),
      images: (jsonSerialization['images'] as List?)
          ?.map((e) => _i2.ProductsImages.fromJson((e as Map<String, dynamic>)))
          .toList(),
      likes: (jsonSerialization['likes'] as List?)
          ?.map((e) => _i3.ProductsLikes.fromJson((e as Map<String, dynamic>)))
          .toList(),
      reports: (jsonSerialization['reports'] as List?)
          ?.map(
              (e) => _i4.ProductsReports.fromJson((e as Map<String, dynamic>)))
          .toList(),
      chatRooms: (jsonSerialization['chatRooms'] as List?)
          ?.map((e) => _i5.ChatRooms.fromJson((e as Map<String, dynamic>)))
          .toList(),
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

  String region1;

  String region2;

  String? region3;

  String? region4;

  String salesStatus;

  double? lat;

  double? lng;

  int likesCount;

  int reportsCount;

  bool isDeleted;

  DateTime createdAt;

  DateTime updatedAt;

  List<_i2.ProductsImages>? images;

  List<_i3.ProductsLikes>? likes;

  List<_i4.ProductsReports>? reports;

  List<_i5.ChatRooms>? chatRooms;

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
    String? region1,
    String? region2,
    String? region3,
    String? region4,
    String? salesStatus,
    double? lat,
    double? lng,
    int? likesCount,
    int? reportsCount,
    bool? isDeleted,
    DateTime? createdAt,
    DateTime? updatedAt,
    List<_i2.ProductsImages>? images,
    List<_i3.ProductsLikes>? likes,
    List<_i4.ProductsReports>? reports,
    List<_i5.ChatRooms>? chatRooms,
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
      'region1': region1,
      'region2': region2,
      if (region3 != null) 'region3': region3,
      if (region4 != null) 'region4': region4,
      'salesStatus': salesStatus,
      if (lat != null) 'lat': lat,
      if (lng != null) 'lng': lng,
      'likesCount': likesCount,
      'reportsCount': reportsCount,
      'isDeleted': isDeleted,
      'createdAt': createdAt.toJson(),
      'updatedAt': updatedAt.toJson(),
      if (images != null)
        'images': images?.toJson(valueToJson: (v) => v.toJson()),
      if (likes != null) 'likes': likes?.toJson(valueToJson: (v) => v.toJson()),
      if (reports != null)
        'reports': reports?.toJson(valueToJson: (v) => v.toJson()),
      if (chatRooms != null)
        'chatRooms': chatRooms?.toJson(valueToJson: (v) => v.toJson()),
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
    required String region1,
    required String region2,
    String? region3,
    String? region4,
    required String salesStatus,
    double? lat,
    double? lng,
    required int likesCount,
    required int reportsCount,
    required bool isDeleted,
    required DateTime createdAt,
    required DateTime updatedAt,
    List<_i2.ProductsImages>? images,
    List<_i3.ProductsLikes>? likes,
    List<_i4.ProductsReports>? reports,
    List<_i5.ChatRooms>? chatRooms,
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
          region1: region1,
          region2: region2,
          region3: region3,
          region4: region4,
          salesStatus: salesStatus,
          lat: lat,
          lng: lng,
          likesCount: likesCount,
          reportsCount: reportsCount,
          isDeleted: isDeleted,
          createdAt: createdAt,
          updatedAt: updatedAt,
          images: images,
          likes: likes,
          reports: reports,
          chatRooms: chatRooms,
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
    String? region1,
    String? region2,
    Object? region3 = _Undefined,
    Object? region4 = _Undefined,
    String? salesStatus,
    Object? lat = _Undefined,
    Object? lng = _Undefined,
    int? likesCount,
    int? reportsCount,
    bool? isDeleted,
    DateTime? createdAt,
    DateTime? updatedAt,
    Object? images = _Undefined,
    Object? likes = _Undefined,
    Object? reports = _Undefined,
    Object? chatRooms = _Undefined,
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
      region1: region1 ?? this.region1,
      region2: region2 ?? this.region2,
      region3: region3 is String? ? region3 : this.region3,
      region4: region4 is String? ? region4 : this.region4,
      salesStatus: salesStatus ?? this.salesStatus,
      lat: lat is double? ? lat : this.lat,
      lng: lng is double? ? lng : this.lng,
      likesCount: likesCount ?? this.likesCount,
      reportsCount: reportsCount ?? this.reportsCount,
      isDeleted: isDeleted ?? this.isDeleted,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
      images: images is List<_i2.ProductsImages>?
          ? images
          : this.images?.map((e0) => e0.copyWith()).toList(),
      likes: likes is List<_i3.ProductsLikes>?
          ? likes
          : this.likes?.map((e0) => e0.copyWith()).toList(),
      reports: reports is List<_i4.ProductsReports>?
          ? reports
          : this.reports?.map((e0) => e0.copyWith()).toList(),
      chatRooms: chatRooms is List<_i5.ChatRooms>?
          ? chatRooms
          : this.chatRooms?.map((e0) => e0.copyWith()).toList(),
    );
  }
}
