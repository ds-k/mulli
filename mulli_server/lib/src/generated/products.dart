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
import 'products_images.dart' as _i2;
import 'products_likes.dart' as _i3;
import 'products_reports.dart' as _i4;
import 'chat_rooms.dart' as _i5;

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

  int? _brandsProductsBrandsId;

  int? _usersProductsUsersId;

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
      if (_brandsProductsBrandsId != null)
        '_brandsProductsBrandsId': _brandsProductsBrandsId,
      if (_usersProductsUsersId != null)
        '_usersProductsUsersId': _usersProductsUsersId,
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
        'images': images?.toJson(valueToJson: (v) => v.toJsonForProtocol()),
      if (likes != null)
        'likes': likes?.toJson(valueToJson: (v) => v.toJsonForProtocol()),
      if (reports != null)
        'reports': reports?.toJson(valueToJson: (v) => v.toJsonForProtocol()),
      if (chatRooms != null)
        'chatRooms':
            chatRooms?.toJson(valueToJson: (v) => v.toJsonForProtocol()),
    };
  }

  static ProductsInclude include({
    _i2.ProductsImagesIncludeList? images,
    _i3.ProductsLikesIncludeList? likes,
    _i4.ProductsReportsIncludeList? reports,
    _i5.ChatRoomsIncludeList? chatRooms,
  }) {
    return ProductsInclude._(
      images: images,
      likes: likes,
      reports: reports,
      chatRooms: chatRooms,
    );
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

class ProductsImplicit extends _ProductsImpl {
  ProductsImplicit._({
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
    this.$_brandsProductsBrandsId,
    this.$_usersProductsUsersId,
  }) : super(
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

  factory ProductsImplicit(
    Products products, {
    int? $_brandsProductsBrandsId,
    int? $_usersProductsUsersId,
  }) {
    return ProductsImplicit._(
      id: products.id,
      userId: products.userId,
      title: products.title,
      description: products.description,
      price: products.price,
      brandId: products.brandId,
      clubType: products.clubType,
      shaftType: products.shaftType,
      flexType: products.flexType,
      year: products.year,
      region1: products.region1,
      region2: products.region2,
      region3: products.region3,
      region4: products.region4,
      salesStatus: products.salesStatus,
      lat: products.lat,
      lng: products.lng,
      likesCount: products.likesCount,
      reportsCount: products.reportsCount,
      isDeleted: products.isDeleted,
      createdAt: products.createdAt,
      updatedAt: products.updatedAt,
      images: products.images,
      likes: products.likes,
      reports: products.reports,
      chatRooms: products.chatRooms,
      $_brandsProductsBrandsId: $_brandsProductsBrandsId,
      $_usersProductsUsersId: $_usersProductsUsersId,
    );
  }

  int? $_brandsProductsBrandsId;

  int? $_usersProductsUsersId;

  @override
  Map<String, dynamic> toJson() {
    var jsonMap = super.toJson();
    jsonMap.addAll({
      '_brandsProductsBrandsId': $_brandsProductsBrandsId,
      '_usersProductsUsersId': $_usersProductsUsersId
    });
    return jsonMap;
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
    region1 = _i1.ColumnString(
      'region1',
      this,
    );
    region2 = _i1.ColumnString(
      'region2',
      this,
    );
    region3 = _i1.ColumnString(
      'region3',
      this,
    );
    region4 = _i1.ColumnString(
      'region4',
      this,
    );
    salesStatus = _i1.ColumnString(
      'salesStatus',
      this,
    );
    lat = _i1.ColumnDouble(
      'lat',
      this,
    );
    lng = _i1.ColumnDouble(
      'lng',
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
    $_brandsProductsBrandsId = _i1.ColumnInt(
      '_brandsProductsBrandsId',
      this,
    );
    $_usersProductsUsersId = _i1.ColumnInt(
      '_usersProductsUsersId',
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

  late final _i1.ColumnString region1;

  late final _i1.ColumnString region2;

  late final _i1.ColumnString region3;

  late final _i1.ColumnString region4;

  late final _i1.ColumnString salesStatus;

  late final _i1.ColumnDouble lat;

  late final _i1.ColumnDouble lng;

  late final _i1.ColumnInt likesCount;

  late final _i1.ColumnInt reportsCount;

  late final _i1.ColumnBool isDeleted;

  late final _i1.ColumnDateTime createdAt;

  late final _i1.ColumnDateTime updatedAt;

  _i2.ProductsImagesTable? ___images;

  _i1.ManyRelation<_i2.ProductsImagesTable>? _images;

  _i3.ProductsLikesTable? ___likes;

  _i1.ManyRelation<_i3.ProductsLikesTable>? _likes;

  _i4.ProductsReportsTable? ___reports;

  _i1.ManyRelation<_i4.ProductsReportsTable>? _reports;

  _i5.ChatRoomsTable? ___chatRooms;

  _i1.ManyRelation<_i5.ChatRoomsTable>? _chatRooms;

  late final _i1.ColumnInt $_brandsProductsBrandsId;

  late final _i1.ColumnInt $_usersProductsUsersId;

  _i2.ProductsImagesTable get __images {
    if (___images != null) return ___images!;
    ___images = _i1.createRelationTable(
      relationFieldName: '__images',
      field: Products.t.id,
      foreignField: _i2.ProductsImages.t.$_productsImagesProductsId,
      tableRelation: tableRelation,
      createTable: (foreignTableRelation) =>
          _i2.ProductsImagesTable(tableRelation: foreignTableRelation),
    );
    return ___images!;
  }

  _i3.ProductsLikesTable get __likes {
    if (___likes != null) return ___likes!;
    ___likes = _i1.createRelationTable(
      relationFieldName: '__likes',
      field: Products.t.id,
      foreignField: _i3.ProductsLikes.t.$_productsLikesProductsId,
      tableRelation: tableRelation,
      createTable: (foreignTableRelation) =>
          _i3.ProductsLikesTable(tableRelation: foreignTableRelation),
    );
    return ___likes!;
  }

  _i4.ProductsReportsTable get __reports {
    if (___reports != null) return ___reports!;
    ___reports = _i1.createRelationTable(
      relationFieldName: '__reports',
      field: Products.t.id,
      foreignField: _i4.ProductsReports.t.$_productsReportsProductsId,
      tableRelation: tableRelation,
      createTable: (foreignTableRelation) =>
          _i4.ProductsReportsTable(tableRelation: foreignTableRelation),
    );
    return ___reports!;
  }

  _i5.ChatRoomsTable get __chatRooms {
    if (___chatRooms != null) return ___chatRooms!;
    ___chatRooms = _i1.createRelationTable(
      relationFieldName: '__chatRooms',
      field: Products.t.id,
      foreignField: _i5.ChatRooms.t.$_productsChatroomsProductsId,
      tableRelation: tableRelation,
      createTable: (foreignTableRelation) =>
          _i5.ChatRoomsTable(tableRelation: foreignTableRelation),
    );
    return ___chatRooms!;
  }

  _i1.ManyRelation<_i2.ProductsImagesTable> get images {
    if (_images != null) return _images!;
    var relationTable = _i1.createRelationTable(
      relationFieldName: 'images',
      field: Products.t.id,
      foreignField: _i2.ProductsImages.t.$_productsImagesProductsId,
      tableRelation: tableRelation,
      createTable: (foreignTableRelation) =>
          _i2.ProductsImagesTable(tableRelation: foreignTableRelation),
    );
    _images = _i1.ManyRelation<_i2.ProductsImagesTable>(
      tableWithRelations: relationTable,
      table: _i2.ProductsImagesTable(
          tableRelation: relationTable.tableRelation!.lastRelation),
    );
    return _images!;
  }

  _i1.ManyRelation<_i3.ProductsLikesTable> get likes {
    if (_likes != null) return _likes!;
    var relationTable = _i1.createRelationTable(
      relationFieldName: 'likes',
      field: Products.t.id,
      foreignField: _i3.ProductsLikes.t.$_productsLikesProductsId,
      tableRelation: tableRelation,
      createTable: (foreignTableRelation) =>
          _i3.ProductsLikesTable(tableRelation: foreignTableRelation),
    );
    _likes = _i1.ManyRelation<_i3.ProductsLikesTable>(
      tableWithRelations: relationTable,
      table: _i3.ProductsLikesTable(
          tableRelation: relationTable.tableRelation!.lastRelation),
    );
    return _likes!;
  }

  _i1.ManyRelation<_i4.ProductsReportsTable> get reports {
    if (_reports != null) return _reports!;
    var relationTable = _i1.createRelationTable(
      relationFieldName: 'reports',
      field: Products.t.id,
      foreignField: _i4.ProductsReports.t.$_productsReportsProductsId,
      tableRelation: tableRelation,
      createTable: (foreignTableRelation) =>
          _i4.ProductsReportsTable(tableRelation: foreignTableRelation),
    );
    _reports = _i1.ManyRelation<_i4.ProductsReportsTable>(
      tableWithRelations: relationTable,
      table: _i4.ProductsReportsTable(
          tableRelation: relationTable.tableRelation!.lastRelation),
    );
    return _reports!;
  }

  _i1.ManyRelation<_i5.ChatRoomsTable> get chatRooms {
    if (_chatRooms != null) return _chatRooms!;
    var relationTable = _i1.createRelationTable(
      relationFieldName: 'chatRooms',
      field: Products.t.id,
      foreignField: _i5.ChatRooms.t.$_productsChatroomsProductsId,
      tableRelation: tableRelation,
      createTable: (foreignTableRelation) =>
          _i5.ChatRoomsTable(tableRelation: foreignTableRelation),
    );
    _chatRooms = _i1.ManyRelation<_i5.ChatRoomsTable>(
      tableWithRelations: relationTable,
      table: _i5.ChatRoomsTable(
          tableRelation: relationTable.tableRelation!.lastRelation),
    );
    return _chatRooms!;
  }

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
        region1,
        region2,
        region3,
        region4,
        salesStatus,
        lat,
        lng,
        likesCount,
        reportsCount,
        isDeleted,
        createdAt,
        updatedAt,
        $_brandsProductsBrandsId,
        $_usersProductsUsersId,
      ];

  @override
  _i1.Table? getRelationTable(String relationField) {
    if (relationField == 'images') {
      return __images;
    }
    if (relationField == 'likes') {
      return __likes;
    }
    if (relationField == 'reports') {
      return __reports;
    }
    if (relationField == 'chatRooms') {
      return __chatRooms;
    }
    return null;
  }
}

class ProductsInclude extends _i1.IncludeObject {
  ProductsInclude._({
    _i2.ProductsImagesIncludeList? images,
    _i3.ProductsLikesIncludeList? likes,
    _i4.ProductsReportsIncludeList? reports,
    _i5.ChatRoomsIncludeList? chatRooms,
  }) {
    _images = images;
    _likes = likes;
    _reports = reports;
    _chatRooms = chatRooms;
  }

  _i2.ProductsImagesIncludeList? _images;

  _i3.ProductsLikesIncludeList? _likes;

  _i4.ProductsReportsIncludeList? _reports;

  _i5.ChatRoomsIncludeList? _chatRooms;

  @override
  Map<String, _i1.Include?> get includes => {
        'images': _images,
        'likes': _likes,
        'reports': _reports,
        'chatRooms': _chatRooms,
      };

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

  final attach = const ProductsAttachRepository._();

  final attachRow = const ProductsAttachRowRepository._();

  final detach = const ProductsDetachRepository._();

  final detachRow = const ProductsDetachRowRepository._();

  Future<List<Products>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<ProductsTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<ProductsTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<ProductsTable>? orderByList,
    _i1.Transaction? transaction,
    ProductsInclude? include,
  }) async {
    return session.db.find<Products>(
      where: where?.call(Products.t),
      orderBy: orderBy?.call(Products.t),
      orderByList: orderByList?.call(Products.t),
      orderDescending: orderDescending,
      limit: limit,
      offset: offset,
      transaction: transaction,
      include: include,
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
    ProductsInclude? include,
  }) async {
    return session.db.findFirstRow<Products>(
      where: where?.call(Products.t),
      orderBy: orderBy?.call(Products.t),
      orderByList: orderByList?.call(Products.t),
      orderDescending: orderDescending,
      offset: offset,
      transaction: transaction,
      include: include,
    );
  }

  Future<Products?> findById(
    _i1.Session session,
    int id, {
    _i1.Transaction? transaction,
    ProductsInclude? include,
  }) async {
    return session.db.findById<Products>(
      id,
      transaction: transaction,
      include: include,
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

class ProductsAttachRepository {
  const ProductsAttachRepository._();

  Future<void> images(
    _i1.Session session,
    Products products,
    List<_i2.ProductsImages> productsImages, {
    _i1.Transaction? transaction,
  }) async {
    if (productsImages.any((e) => e.id == null)) {
      throw ArgumentError.notNull('productsImages.id');
    }
    if (products.id == null) {
      throw ArgumentError.notNull('products.id');
    }

    var $productsImages = productsImages
        .map((e) => _i2.ProductsImagesImplicit(
              e,
              $_productsImagesProductsId: products.id,
            ))
        .toList();
    await session.db.update<_i2.ProductsImages>(
      $productsImages,
      columns: [_i2.ProductsImages.t.$_productsImagesProductsId],
      transaction: transaction,
    );
  }

  Future<void> likes(
    _i1.Session session,
    Products products,
    List<_i3.ProductsLikes> productsLikes, {
    _i1.Transaction? transaction,
  }) async {
    if (productsLikes.any((e) => e.id == null)) {
      throw ArgumentError.notNull('productsLikes.id');
    }
    if (products.id == null) {
      throw ArgumentError.notNull('products.id');
    }

    var $productsLikes = productsLikes
        .map((e) => _i3.ProductsLikesImplicit(
              e,
              $_productsLikesProductsId: products.id,
            ))
        .toList();
    await session.db.update<_i3.ProductsLikes>(
      $productsLikes,
      columns: [_i3.ProductsLikes.t.$_productsLikesProductsId],
      transaction: transaction,
    );
  }

  Future<void> reports(
    _i1.Session session,
    Products products,
    List<_i4.ProductsReports> productsReports, {
    _i1.Transaction? transaction,
  }) async {
    if (productsReports.any((e) => e.id == null)) {
      throw ArgumentError.notNull('productsReports.id');
    }
    if (products.id == null) {
      throw ArgumentError.notNull('products.id');
    }

    var $productsReports = productsReports
        .map((e) => _i4.ProductsReportsImplicit(
              e,
              $_productsReportsProductsId: products.id,
            ))
        .toList();
    await session.db.update<_i4.ProductsReports>(
      $productsReports,
      columns: [_i4.ProductsReports.t.$_productsReportsProductsId],
      transaction: transaction,
    );
  }

  Future<void> chatRooms(
    _i1.Session session,
    Products products,
    List<_i5.ChatRooms> chatRooms, {
    _i1.Transaction? transaction,
  }) async {
    if (chatRooms.any((e) => e.id == null)) {
      throw ArgumentError.notNull('chatRooms.id');
    }
    if (products.id == null) {
      throw ArgumentError.notNull('products.id');
    }

    var $chatRooms = chatRooms
        .map((e) => _i5.ChatRoomsImplicit(
              e,
              $_productsChatroomsProductsId: products.id,
            ))
        .toList();
    await session.db.update<_i5.ChatRooms>(
      $chatRooms,
      columns: [_i5.ChatRooms.t.$_productsChatroomsProductsId],
      transaction: transaction,
    );
  }
}

class ProductsAttachRowRepository {
  const ProductsAttachRowRepository._();

  Future<void> images(
    _i1.Session session,
    Products products,
    _i2.ProductsImages productsImages, {
    _i1.Transaction? transaction,
  }) async {
    if (productsImages.id == null) {
      throw ArgumentError.notNull('productsImages.id');
    }
    if (products.id == null) {
      throw ArgumentError.notNull('products.id');
    }

    var $productsImages = _i2.ProductsImagesImplicit(
      productsImages,
      $_productsImagesProductsId: products.id,
    );
    await session.db.updateRow<_i2.ProductsImages>(
      $productsImages,
      columns: [_i2.ProductsImages.t.$_productsImagesProductsId],
      transaction: transaction,
    );
  }

  Future<void> likes(
    _i1.Session session,
    Products products,
    _i3.ProductsLikes productsLikes, {
    _i1.Transaction? transaction,
  }) async {
    if (productsLikes.id == null) {
      throw ArgumentError.notNull('productsLikes.id');
    }
    if (products.id == null) {
      throw ArgumentError.notNull('products.id');
    }

    var $productsLikes = _i3.ProductsLikesImplicit(
      productsLikes,
      $_productsLikesProductsId: products.id,
    );
    await session.db.updateRow<_i3.ProductsLikes>(
      $productsLikes,
      columns: [_i3.ProductsLikes.t.$_productsLikesProductsId],
      transaction: transaction,
    );
  }

  Future<void> reports(
    _i1.Session session,
    Products products,
    _i4.ProductsReports productsReports, {
    _i1.Transaction? transaction,
  }) async {
    if (productsReports.id == null) {
      throw ArgumentError.notNull('productsReports.id');
    }
    if (products.id == null) {
      throw ArgumentError.notNull('products.id');
    }

    var $productsReports = _i4.ProductsReportsImplicit(
      productsReports,
      $_productsReportsProductsId: products.id,
    );
    await session.db.updateRow<_i4.ProductsReports>(
      $productsReports,
      columns: [_i4.ProductsReports.t.$_productsReportsProductsId],
      transaction: transaction,
    );
  }

  Future<void> chatRooms(
    _i1.Session session,
    Products products,
    _i5.ChatRooms chatRooms, {
    _i1.Transaction? transaction,
  }) async {
    if (chatRooms.id == null) {
      throw ArgumentError.notNull('chatRooms.id');
    }
    if (products.id == null) {
      throw ArgumentError.notNull('products.id');
    }

    var $chatRooms = _i5.ChatRoomsImplicit(
      chatRooms,
      $_productsChatroomsProductsId: products.id,
    );
    await session.db.updateRow<_i5.ChatRooms>(
      $chatRooms,
      columns: [_i5.ChatRooms.t.$_productsChatroomsProductsId],
      transaction: transaction,
    );
  }
}

class ProductsDetachRepository {
  const ProductsDetachRepository._();

  Future<void> images(
    _i1.Session session,
    List<_i2.ProductsImages> productsImages, {
    _i1.Transaction? transaction,
  }) async {
    if (productsImages.any((e) => e.id == null)) {
      throw ArgumentError.notNull('productsImages.id');
    }

    var $productsImages = productsImages
        .map((e) => _i2.ProductsImagesImplicit(
              e,
              $_productsImagesProductsId: null,
            ))
        .toList();
    await session.db.update<_i2.ProductsImages>(
      $productsImages,
      columns: [_i2.ProductsImages.t.$_productsImagesProductsId],
      transaction: transaction,
    );
  }

  Future<void> likes(
    _i1.Session session,
    List<_i3.ProductsLikes> productsLikes, {
    _i1.Transaction? transaction,
  }) async {
    if (productsLikes.any((e) => e.id == null)) {
      throw ArgumentError.notNull('productsLikes.id');
    }

    var $productsLikes = productsLikes
        .map((e) => _i3.ProductsLikesImplicit(
              e,
              $_productsLikesProductsId: null,
            ))
        .toList();
    await session.db.update<_i3.ProductsLikes>(
      $productsLikes,
      columns: [_i3.ProductsLikes.t.$_productsLikesProductsId],
      transaction: transaction,
    );
  }

  Future<void> reports(
    _i1.Session session,
    List<_i4.ProductsReports> productsReports, {
    _i1.Transaction? transaction,
  }) async {
    if (productsReports.any((e) => e.id == null)) {
      throw ArgumentError.notNull('productsReports.id');
    }

    var $productsReports = productsReports
        .map((e) => _i4.ProductsReportsImplicit(
              e,
              $_productsReportsProductsId: null,
            ))
        .toList();
    await session.db.update<_i4.ProductsReports>(
      $productsReports,
      columns: [_i4.ProductsReports.t.$_productsReportsProductsId],
      transaction: transaction,
    );
  }

  Future<void> chatRooms(
    _i1.Session session,
    List<_i5.ChatRooms> chatRooms, {
    _i1.Transaction? transaction,
  }) async {
    if (chatRooms.any((e) => e.id == null)) {
      throw ArgumentError.notNull('chatRooms.id');
    }

    var $chatRooms = chatRooms
        .map((e) => _i5.ChatRoomsImplicit(
              e,
              $_productsChatroomsProductsId: null,
            ))
        .toList();
    await session.db.update<_i5.ChatRooms>(
      $chatRooms,
      columns: [_i5.ChatRooms.t.$_productsChatroomsProductsId],
      transaction: transaction,
    );
  }
}

class ProductsDetachRowRepository {
  const ProductsDetachRowRepository._();

  Future<void> images(
    _i1.Session session,
    _i2.ProductsImages productsImages, {
    _i1.Transaction? transaction,
  }) async {
    if (productsImages.id == null) {
      throw ArgumentError.notNull('productsImages.id');
    }

    var $productsImages = _i2.ProductsImagesImplicit(
      productsImages,
      $_productsImagesProductsId: null,
    );
    await session.db.updateRow<_i2.ProductsImages>(
      $productsImages,
      columns: [_i2.ProductsImages.t.$_productsImagesProductsId],
      transaction: transaction,
    );
  }

  Future<void> likes(
    _i1.Session session,
    _i3.ProductsLikes productsLikes, {
    _i1.Transaction? transaction,
  }) async {
    if (productsLikes.id == null) {
      throw ArgumentError.notNull('productsLikes.id');
    }

    var $productsLikes = _i3.ProductsLikesImplicit(
      productsLikes,
      $_productsLikesProductsId: null,
    );
    await session.db.updateRow<_i3.ProductsLikes>(
      $productsLikes,
      columns: [_i3.ProductsLikes.t.$_productsLikesProductsId],
      transaction: transaction,
    );
  }

  Future<void> reports(
    _i1.Session session,
    _i4.ProductsReports productsReports, {
    _i1.Transaction? transaction,
  }) async {
    if (productsReports.id == null) {
      throw ArgumentError.notNull('productsReports.id');
    }

    var $productsReports = _i4.ProductsReportsImplicit(
      productsReports,
      $_productsReportsProductsId: null,
    );
    await session.db.updateRow<_i4.ProductsReports>(
      $productsReports,
      columns: [_i4.ProductsReports.t.$_productsReportsProductsId],
      transaction: transaction,
    );
  }

  Future<void> chatRooms(
    _i1.Session session,
    _i5.ChatRooms chatRooms, {
    _i1.Transaction? transaction,
  }) async {
    if (chatRooms.id == null) {
      throw ArgumentError.notNull('chatRooms.id');
    }

    var $chatRooms = _i5.ChatRoomsImplicit(
      chatRooms,
      $_productsChatroomsProductsId: null,
    );
    await session.db.updateRow<_i5.ChatRooms>(
      $chatRooms,
      columns: [_i5.ChatRooms.t.$_productsChatroomsProductsId],
      transaction: transaction,
    );
  }
}
