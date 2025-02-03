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
import 'products.dart' as _i2;
import 'lounge_posts.dart' as _i3;
import 'lounge_posts_comments.dart' as _i4;
import 'products_likes.dart' as _i5;
import 'products_reports.dart' as _i6;
import 'lounge_posts_likes.dart' as _i7;
import 'lounge_posts_reports.dart' as _i8;
import 'chat_rooms.dart' as _i9;
import 'messages.dart' as _i10;
import 'user_terms.dart' as _i11;

abstract class Users implements _i1.TableRow, _i1.ProtocolSerialization {
  Users._({
    this.id,
    required this.socialId,
    required this.socialType,
    required this.name,
    required this.email,
    required this.userProfileUrl,
    required this.region1,
    required this.region2,
    this.region3,
    this.region4,
    this.lat,
    this.lng,
    required this.createdAt,
    required this.updatedAt,
    this.products,
    this.loungePosts,
    this.loungeComments,
    this.productLikes,
    this.productReports,
    this.postLikes,
    this.postReports,
    this.buyerChatRooms,
    this.sellerChatRooms,
    this.messages,
    this.userTerms,
  });

  factory Users({
    int? id,
    required String socialId,
    required String socialType,
    required String name,
    required String email,
    required String userProfileUrl,
    required String region1,
    required String region2,
    String? region3,
    String? region4,
    double? lat,
    double? lng,
    required DateTime createdAt,
    required DateTime updatedAt,
    List<_i2.Products>? products,
    List<_i3.LoungePosts>? loungePosts,
    List<_i4.LoungePostsComments>? loungeComments,
    List<_i5.ProductsLikes>? productLikes,
    List<_i6.ProductsReports>? productReports,
    List<_i7.LoungePostsLikes>? postLikes,
    List<_i8.LoungePostsReports>? postReports,
    List<_i9.ChatRooms>? buyerChatRooms,
    List<_i9.ChatRooms>? sellerChatRooms,
    List<_i10.Messages>? messages,
    List<_i11.UserTerms>? userTerms,
  }) = _UsersImpl;

  factory Users.fromJson(Map<String, dynamic> jsonSerialization) {
    return Users(
      id: jsonSerialization['id'] as int?,
      socialId: jsonSerialization['socialId'] as String,
      socialType: jsonSerialization['socialType'] as String,
      name: jsonSerialization['name'] as String,
      email: jsonSerialization['email'] as String,
      userProfileUrl: jsonSerialization['userProfileUrl'] as String,
      region1: jsonSerialization['region1'] as String,
      region2: jsonSerialization['region2'] as String,
      region3: jsonSerialization['region3'] as String?,
      region4: jsonSerialization['region4'] as String?,
      lat: (jsonSerialization['lat'] as num?)?.toDouble(),
      lng: (jsonSerialization['lng'] as num?)?.toDouble(),
      createdAt:
          _i1.DateTimeJsonExtension.fromJson(jsonSerialization['createdAt']),
      updatedAt:
          _i1.DateTimeJsonExtension.fromJson(jsonSerialization['updatedAt']),
      products: (jsonSerialization['products'] as List?)
          ?.map((e) => _i2.Products.fromJson((e as Map<String, dynamic>)))
          .toList(),
      loungePosts: (jsonSerialization['loungePosts'] as List?)
          ?.map((e) => _i3.LoungePosts.fromJson((e as Map<String, dynamic>)))
          .toList(),
      loungeComments: (jsonSerialization['loungeComments'] as List?)
          ?.map((e) =>
              _i4.LoungePostsComments.fromJson((e as Map<String, dynamic>)))
          .toList(),
      productLikes: (jsonSerialization['productLikes'] as List?)
          ?.map((e) => _i5.ProductsLikes.fromJson((e as Map<String, dynamic>)))
          .toList(),
      productReports: (jsonSerialization['productReports'] as List?)
          ?.map(
              (e) => _i6.ProductsReports.fromJson((e as Map<String, dynamic>)))
          .toList(),
      postLikes: (jsonSerialization['postLikes'] as List?)
          ?.map(
              (e) => _i7.LoungePostsLikes.fromJson((e as Map<String, dynamic>)))
          .toList(),
      postReports: (jsonSerialization['postReports'] as List?)
          ?.map((e) =>
              _i8.LoungePostsReports.fromJson((e as Map<String, dynamic>)))
          .toList(),
      buyerChatRooms: (jsonSerialization['buyerChatRooms'] as List?)
          ?.map((e) => _i9.ChatRooms.fromJson((e as Map<String, dynamic>)))
          .toList(),
      sellerChatRooms: (jsonSerialization['sellerChatRooms'] as List?)
          ?.map((e) => _i9.ChatRooms.fromJson((e as Map<String, dynamic>)))
          .toList(),
      messages: (jsonSerialization['messages'] as List?)
          ?.map((e) => _i10.Messages.fromJson((e as Map<String, dynamic>)))
          .toList(),
      userTerms: (jsonSerialization['userTerms'] as List?)
          ?.map((e) => _i11.UserTerms.fromJson((e as Map<String, dynamic>)))
          .toList(),
    );
  }

  static final t = UsersTable();

  static const db = UsersRepository._();

  @override
  int? id;

  String socialId;

  String socialType;

  String name;

  String email;

  String userProfileUrl;

  String region1;

  String region2;

  String? region3;

  String? region4;

  double? lat;

  double? lng;

  DateTime createdAt;

  DateTime updatedAt;

  List<_i2.Products>? products;

  List<_i3.LoungePosts>? loungePosts;

  List<_i4.LoungePostsComments>? loungeComments;

  List<_i5.ProductsLikes>? productLikes;

  List<_i6.ProductsReports>? productReports;

  List<_i7.LoungePostsLikes>? postLikes;

  List<_i8.LoungePostsReports>? postReports;

  List<_i9.ChatRooms>? buyerChatRooms;

  List<_i9.ChatRooms>? sellerChatRooms;

  List<_i10.Messages>? messages;

  List<_i11.UserTerms>? userTerms;

  @override
  _i1.Table get table => t;

  Users copyWith({
    int? id,
    String? socialId,
    String? socialType,
    String? name,
    String? email,
    String? userProfileUrl,
    String? region1,
    String? region2,
    String? region3,
    String? region4,
    double? lat,
    double? lng,
    DateTime? createdAt,
    DateTime? updatedAt,
    List<_i2.Products>? products,
    List<_i3.LoungePosts>? loungePosts,
    List<_i4.LoungePostsComments>? loungeComments,
    List<_i5.ProductsLikes>? productLikes,
    List<_i6.ProductsReports>? productReports,
    List<_i7.LoungePostsLikes>? postLikes,
    List<_i8.LoungePostsReports>? postReports,
    List<_i9.ChatRooms>? buyerChatRooms,
    List<_i9.ChatRooms>? sellerChatRooms,
    List<_i10.Messages>? messages,
    List<_i11.UserTerms>? userTerms,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      if (id != null) 'id': id,
      'socialId': socialId,
      'socialType': socialType,
      'name': name,
      'email': email,
      'userProfileUrl': userProfileUrl,
      'region1': region1,
      'region2': region2,
      if (region3 != null) 'region3': region3,
      if (region4 != null) 'region4': region4,
      if (lat != null) 'lat': lat,
      if (lng != null) 'lng': lng,
      'createdAt': createdAt.toJson(),
      'updatedAt': updatedAt.toJson(),
      if (products != null)
        'products': products?.toJson(valueToJson: (v) => v.toJson()),
      if (loungePosts != null)
        'loungePosts': loungePosts?.toJson(valueToJson: (v) => v.toJson()),
      if (loungeComments != null)
        'loungeComments':
            loungeComments?.toJson(valueToJson: (v) => v.toJson()),
      if (productLikes != null)
        'productLikes': productLikes?.toJson(valueToJson: (v) => v.toJson()),
      if (productReports != null)
        'productReports':
            productReports?.toJson(valueToJson: (v) => v.toJson()),
      if (postLikes != null)
        'postLikes': postLikes?.toJson(valueToJson: (v) => v.toJson()),
      if (postReports != null)
        'postReports': postReports?.toJson(valueToJson: (v) => v.toJson()),
      if (buyerChatRooms != null)
        'buyerChatRooms':
            buyerChatRooms?.toJson(valueToJson: (v) => v.toJson()),
      if (sellerChatRooms != null)
        'sellerChatRooms':
            sellerChatRooms?.toJson(valueToJson: (v) => v.toJson()),
      if (messages != null)
        'messages': messages?.toJson(valueToJson: (v) => v.toJson()),
      if (userTerms != null)
        'userTerms': userTerms?.toJson(valueToJson: (v) => v.toJson()),
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      if (id != null) 'id': id,
      'socialId': socialId,
      'socialType': socialType,
      'name': name,
      'email': email,
      'userProfileUrl': userProfileUrl,
      'region1': region1,
      'region2': region2,
      if (region3 != null) 'region3': region3,
      if (region4 != null) 'region4': region4,
      if (lat != null) 'lat': lat,
      if (lng != null) 'lng': lng,
      'createdAt': createdAt.toJson(),
      'updatedAt': updatedAt.toJson(),
      if (products != null)
        'products': products?.toJson(valueToJson: (v) => v.toJsonForProtocol()),
      if (loungePosts != null)
        'loungePosts':
            loungePosts?.toJson(valueToJson: (v) => v.toJsonForProtocol()),
      if (loungeComments != null)
        'loungeComments':
            loungeComments?.toJson(valueToJson: (v) => v.toJsonForProtocol()),
      if (productLikes != null)
        'productLikes':
            productLikes?.toJson(valueToJson: (v) => v.toJsonForProtocol()),
      if (productReports != null)
        'productReports':
            productReports?.toJson(valueToJson: (v) => v.toJsonForProtocol()),
      if (postLikes != null)
        'postLikes':
            postLikes?.toJson(valueToJson: (v) => v.toJsonForProtocol()),
      if (postReports != null)
        'postReports':
            postReports?.toJson(valueToJson: (v) => v.toJsonForProtocol()),
      if (buyerChatRooms != null)
        'buyerChatRooms':
            buyerChatRooms?.toJson(valueToJson: (v) => v.toJsonForProtocol()),
      if (sellerChatRooms != null)
        'sellerChatRooms':
            sellerChatRooms?.toJson(valueToJson: (v) => v.toJsonForProtocol()),
      if (messages != null)
        'messages': messages?.toJson(valueToJson: (v) => v.toJsonForProtocol()),
      if (userTerms != null)
        'userTerms':
            userTerms?.toJson(valueToJson: (v) => v.toJsonForProtocol()),
    };
  }

  static UsersInclude include({
    _i2.ProductsIncludeList? products,
    _i3.LoungePostsIncludeList? loungePosts,
    _i4.LoungePostsCommentsIncludeList? loungeComments,
    _i5.ProductsLikesIncludeList? productLikes,
    _i6.ProductsReportsIncludeList? productReports,
    _i7.LoungePostsLikesIncludeList? postLikes,
    _i8.LoungePostsReportsIncludeList? postReports,
    _i9.ChatRoomsIncludeList? buyerChatRooms,
    _i9.ChatRoomsIncludeList? sellerChatRooms,
    _i10.MessagesIncludeList? messages,
    _i11.UserTermsIncludeList? userTerms,
  }) {
    return UsersInclude._(
      products: products,
      loungePosts: loungePosts,
      loungeComments: loungeComments,
      productLikes: productLikes,
      productReports: productReports,
      postLikes: postLikes,
      postReports: postReports,
      buyerChatRooms: buyerChatRooms,
      sellerChatRooms: sellerChatRooms,
      messages: messages,
      userTerms: userTerms,
    );
  }

  static UsersIncludeList includeList({
    _i1.WhereExpressionBuilder<UsersTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<UsersTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<UsersTable>? orderByList,
    UsersInclude? include,
  }) {
    return UsersIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(Users.t),
      orderDescending: orderDescending,
      orderByList: orderByList?.call(Users.t),
      include: include,
    );
  }

  @override
  String toString() {
    return _i1.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _UsersImpl extends Users {
  _UsersImpl({
    int? id,
    required String socialId,
    required String socialType,
    required String name,
    required String email,
    required String userProfileUrl,
    required String region1,
    required String region2,
    String? region3,
    String? region4,
    double? lat,
    double? lng,
    required DateTime createdAt,
    required DateTime updatedAt,
    List<_i2.Products>? products,
    List<_i3.LoungePosts>? loungePosts,
    List<_i4.LoungePostsComments>? loungeComments,
    List<_i5.ProductsLikes>? productLikes,
    List<_i6.ProductsReports>? productReports,
    List<_i7.LoungePostsLikes>? postLikes,
    List<_i8.LoungePostsReports>? postReports,
    List<_i9.ChatRooms>? buyerChatRooms,
    List<_i9.ChatRooms>? sellerChatRooms,
    List<_i10.Messages>? messages,
    List<_i11.UserTerms>? userTerms,
  }) : super._(
          id: id,
          socialId: socialId,
          socialType: socialType,
          name: name,
          email: email,
          userProfileUrl: userProfileUrl,
          region1: region1,
          region2: region2,
          region3: region3,
          region4: region4,
          lat: lat,
          lng: lng,
          createdAt: createdAt,
          updatedAt: updatedAt,
          products: products,
          loungePosts: loungePosts,
          loungeComments: loungeComments,
          productLikes: productLikes,
          productReports: productReports,
          postLikes: postLikes,
          postReports: postReports,
          buyerChatRooms: buyerChatRooms,
          sellerChatRooms: sellerChatRooms,
          messages: messages,
          userTerms: userTerms,
        );

  @override
  Users copyWith({
    Object? id = _Undefined,
    String? socialId,
    String? socialType,
    String? name,
    String? email,
    String? userProfileUrl,
    String? region1,
    String? region2,
    Object? region3 = _Undefined,
    Object? region4 = _Undefined,
    Object? lat = _Undefined,
    Object? lng = _Undefined,
    DateTime? createdAt,
    DateTime? updatedAt,
    Object? products = _Undefined,
    Object? loungePosts = _Undefined,
    Object? loungeComments = _Undefined,
    Object? productLikes = _Undefined,
    Object? productReports = _Undefined,
    Object? postLikes = _Undefined,
    Object? postReports = _Undefined,
    Object? buyerChatRooms = _Undefined,
    Object? sellerChatRooms = _Undefined,
    Object? messages = _Undefined,
    Object? userTerms = _Undefined,
  }) {
    return Users(
      id: id is int? ? id : this.id,
      socialId: socialId ?? this.socialId,
      socialType: socialType ?? this.socialType,
      name: name ?? this.name,
      email: email ?? this.email,
      userProfileUrl: userProfileUrl ?? this.userProfileUrl,
      region1: region1 ?? this.region1,
      region2: region2 ?? this.region2,
      region3: region3 is String? ? region3 : this.region3,
      region4: region4 is String? ? region4 : this.region4,
      lat: lat is double? ? lat : this.lat,
      lng: lng is double? ? lng : this.lng,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
      products: products is List<_i2.Products>?
          ? products
          : this.products?.map((e0) => e0.copyWith()).toList(),
      loungePosts: loungePosts is List<_i3.LoungePosts>?
          ? loungePosts
          : this.loungePosts?.map((e0) => e0.copyWith()).toList(),
      loungeComments: loungeComments is List<_i4.LoungePostsComments>?
          ? loungeComments
          : this.loungeComments?.map((e0) => e0.copyWith()).toList(),
      productLikes: productLikes is List<_i5.ProductsLikes>?
          ? productLikes
          : this.productLikes?.map((e0) => e0.copyWith()).toList(),
      productReports: productReports is List<_i6.ProductsReports>?
          ? productReports
          : this.productReports?.map((e0) => e0.copyWith()).toList(),
      postLikes: postLikes is List<_i7.LoungePostsLikes>?
          ? postLikes
          : this.postLikes?.map((e0) => e0.copyWith()).toList(),
      postReports: postReports is List<_i8.LoungePostsReports>?
          ? postReports
          : this.postReports?.map((e0) => e0.copyWith()).toList(),
      buyerChatRooms: buyerChatRooms is List<_i9.ChatRooms>?
          ? buyerChatRooms
          : this.buyerChatRooms?.map((e0) => e0.copyWith()).toList(),
      sellerChatRooms: sellerChatRooms is List<_i9.ChatRooms>?
          ? sellerChatRooms
          : this.sellerChatRooms?.map((e0) => e0.copyWith()).toList(),
      messages: messages is List<_i10.Messages>?
          ? messages
          : this.messages?.map((e0) => e0.copyWith()).toList(),
      userTerms: userTerms is List<_i11.UserTerms>?
          ? userTerms
          : this.userTerms?.map((e0) => e0.copyWith()).toList(),
    );
  }
}

class UsersTable extends _i1.Table {
  UsersTable({super.tableRelation}) : super(tableName: 'users') {
    socialId = _i1.ColumnString(
      'socialId',
      this,
    );
    socialType = _i1.ColumnString(
      'socialType',
      this,
    );
    name = _i1.ColumnString(
      'name',
      this,
    );
    email = _i1.ColumnString(
      'email',
      this,
    );
    userProfileUrl = _i1.ColumnString(
      'userProfileUrl',
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
    lat = _i1.ColumnDouble(
      'lat',
      this,
    );
    lng = _i1.ColumnDouble(
      'lng',
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

  late final _i1.ColumnString socialId;

  late final _i1.ColumnString socialType;

  late final _i1.ColumnString name;

  late final _i1.ColumnString email;

  late final _i1.ColumnString userProfileUrl;

  late final _i1.ColumnString region1;

  late final _i1.ColumnString region2;

  late final _i1.ColumnString region3;

  late final _i1.ColumnString region4;

  late final _i1.ColumnDouble lat;

  late final _i1.ColumnDouble lng;

  late final _i1.ColumnDateTime createdAt;

  late final _i1.ColumnDateTime updatedAt;

  _i2.ProductsTable? ___products;

  _i1.ManyRelation<_i2.ProductsTable>? _products;

  _i3.LoungePostsTable? ___loungePosts;

  _i1.ManyRelation<_i3.LoungePostsTable>? _loungePosts;

  _i4.LoungePostsCommentsTable? ___loungeComments;

  _i1.ManyRelation<_i4.LoungePostsCommentsTable>? _loungeComments;

  _i5.ProductsLikesTable? ___productLikes;

  _i1.ManyRelation<_i5.ProductsLikesTable>? _productLikes;

  _i6.ProductsReportsTable? ___productReports;

  _i1.ManyRelation<_i6.ProductsReportsTable>? _productReports;

  _i7.LoungePostsLikesTable? ___postLikes;

  _i1.ManyRelation<_i7.LoungePostsLikesTable>? _postLikes;

  _i8.LoungePostsReportsTable? ___postReports;

  _i1.ManyRelation<_i8.LoungePostsReportsTable>? _postReports;

  _i9.ChatRoomsTable? ___buyerChatRooms;

  _i1.ManyRelation<_i9.ChatRoomsTable>? _buyerChatRooms;

  _i9.ChatRoomsTable? ___sellerChatRooms;

  _i1.ManyRelation<_i9.ChatRoomsTable>? _sellerChatRooms;

  _i10.MessagesTable? ___messages;

  _i1.ManyRelation<_i10.MessagesTable>? _messages;

  _i11.UserTermsTable? ___userTerms;

  _i1.ManyRelation<_i11.UserTermsTable>? _userTerms;

  _i2.ProductsTable get __products {
    if (___products != null) return ___products!;
    ___products = _i1.createRelationTable(
      relationFieldName: '__products',
      field: Users.t.id,
      foreignField: _i2.Products.t.$_usersProductsUsersId,
      tableRelation: tableRelation,
      createTable: (foreignTableRelation) =>
          _i2.ProductsTable(tableRelation: foreignTableRelation),
    );
    return ___products!;
  }

  _i3.LoungePostsTable get __loungePosts {
    if (___loungePosts != null) return ___loungePosts!;
    ___loungePosts = _i1.createRelationTable(
      relationFieldName: '__loungePosts',
      field: Users.t.id,
      foreignField: _i3.LoungePosts.t.$_usersLoungepostsUsersId,
      tableRelation: tableRelation,
      createTable: (foreignTableRelation) =>
          _i3.LoungePostsTable(tableRelation: foreignTableRelation),
    );
    return ___loungePosts!;
  }

  _i4.LoungePostsCommentsTable get __loungeComments {
    if (___loungeComments != null) return ___loungeComments!;
    ___loungeComments = _i1.createRelationTable(
      relationFieldName: '__loungeComments',
      field: Users.t.id,
      foreignField: _i4.LoungePostsComments.t.$_usersLoungecommentsUsersId,
      tableRelation: tableRelation,
      createTable: (foreignTableRelation) =>
          _i4.LoungePostsCommentsTable(tableRelation: foreignTableRelation),
    );
    return ___loungeComments!;
  }

  _i5.ProductsLikesTable get __productLikes {
    if (___productLikes != null) return ___productLikes!;
    ___productLikes = _i1.createRelationTable(
      relationFieldName: '__productLikes',
      field: Users.t.id,
      foreignField: _i5.ProductsLikes.t.$_usersProductlikesUsersId,
      tableRelation: tableRelation,
      createTable: (foreignTableRelation) =>
          _i5.ProductsLikesTable(tableRelation: foreignTableRelation),
    );
    return ___productLikes!;
  }

  _i6.ProductsReportsTable get __productReports {
    if (___productReports != null) return ___productReports!;
    ___productReports = _i1.createRelationTable(
      relationFieldName: '__productReports',
      field: Users.t.id,
      foreignField: _i6.ProductsReports.t.$_usersProductreportsUsersId,
      tableRelation: tableRelation,
      createTable: (foreignTableRelation) =>
          _i6.ProductsReportsTable(tableRelation: foreignTableRelation),
    );
    return ___productReports!;
  }

  _i7.LoungePostsLikesTable get __postLikes {
    if (___postLikes != null) return ___postLikes!;
    ___postLikes = _i1.createRelationTable(
      relationFieldName: '__postLikes',
      field: Users.t.id,
      foreignField: _i7.LoungePostsLikes.t.$_usersPostlikesUsersId,
      tableRelation: tableRelation,
      createTable: (foreignTableRelation) =>
          _i7.LoungePostsLikesTable(tableRelation: foreignTableRelation),
    );
    return ___postLikes!;
  }

  _i8.LoungePostsReportsTable get __postReports {
    if (___postReports != null) return ___postReports!;
    ___postReports = _i1.createRelationTable(
      relationFieldName: '__postReports',
      field: Users.t.id,
      foreignField: _i8.LoungePostsReports.t.$_usersPostreportsUsersId,
      tableRelation: tableRelation,
      createTable: (foreignTableRelation) =>
          _i8.LoungePostsReportsTable(tableRelation: foreignTableRelation),
    );
    return ___postReports!;
  }

  _i9.ChatRoomsTable get __buyerChatRooms {
    if (___buyerChatRooms != null) return ___buyerChatRooms!;
    ___buyerChatRooms = _i1.createRelationTable(
      relationFieldName: '__buyerChatRooms',
      field: Users.t.id,
      foreignField: _i9.ChatRooms.t.$_usersBuyerchatroomsUsersId,
      tableRelation: tableRelation,
      createTable: (foreignTableRelation) =>
          _i9.ChatRoomsTable(tableRelation: foreignTableRelation),
    );
    return ___buyerChatRooms!;
  }

  _i9.ChatRoomsTable get __sellerChatRooms {
    if (___sellerChatRooms != null) return ___sellerChatRooms!;
    ___sellerChatRooms = _i1.createRelationTable(
      relationFieldName: '__sellerChatRooms',
      field: Users.t.id,
      foreignField: _i9.ChatRooms.t.$_usersSellerchatroomsUsersId,
      tableRelation: tableRelation,
      createTable: (foreignTableRelation) =>
          _i9.ChatRoomsTable(tableRelation: foreignTableRelation),
    );
    return ___sellerChatRooms!;
  }

  _i10.MessagesTable get __messages {
    if (___messages != null) return ___messages!;
    ___messages = _i1.createRelationTable(
      relationFieldName: '__messages',
      field: Users.t.id,
      foreignField: _i10.Messages.t.$_usersMessagesUsersId,
      tableRelation: tableRelation,
      createTable: (foreignTableRelation) =>
          _i10.MessagesTable(tableRelation: foreignTableRelation),
    );
    return ___messages!;
  }

  _i11.UserTermsTable get __userTerms {
    if (___userTerms != null) return ___userTerms!;
    ___userTerms = _i1.createRelationTable(
      relationFieldName: '__userTerms',
      field: Users.t.id,
      foreignField: _i11.UserTerms.t.$_usersUsertermsUsersId,
      tableRelation: tableRelation,
      createTable: (foreignTableRelation) =>
          _i11.UserTermsTable(tableRelation: foreignTableRelation),
    );
    return ___userTerms!;
  }

  _i1.ManyRelation<_i2.ProductsTable> get products {
    if (_products != null) return _products!;
    var relationTable = _i1.createRelationTable(
      relationFieldName: 'products',
      field: Users.t.id,
      foreignField: _i2.Products.t.$_usersProductsUsersId,
      tableRelation: tableRelation,
      createTable: (foreignTableRelation) =>
          _i2.ProductsTable(tableRelation: foreignTableRelation),
    );
    _products = _i1.ManyRelation<_i2.ProductsTable>(
      tableWithRelations: relationTable,
      table: _i2.ProductsTable(
          tableRelation: relationTable.tableRelation!.lastRelation),
    );
    return _products!;
  }

  _i1.ManyRelation<_i3.LoungePostsTable> get loungePosts {
    if (_loungePosts != null) return _loungePosts!;
    var relationTable = _i1.createRelationTable(
      relationFieldName: 'loungePosts',
      field: Users.t.id,
      foreignField: _i3.LoungePosts.t.$_usersLoungepostsUsersId,
      tableRelation: tableRelation,
      createTable: (foreignTableRelation) =>
          _i3.LoungePostsTable(tableRelation: foreignTableRelation),
    );
    _loungePosts = _i1.ManyRelation<_i3.LoungePostsTable>(
      tableWithRelations: relationTable,
      table: _i3.LoungePostsTable(
          tableRelation: relationTable.tableRelation!.lastRelation),
    );
    return _loungePosts!;
  }

  _i1.ManyRelation<_i4.LoungePostsCommentsTable> get loungeComments {
    if (_loungeComments != null) return _loungeComments!;
    var relationTable = _i1.createRelationTable(
      relationFieldName: 'loungeComments',
      field: Users.t.id,
      foreignField: _i4.LoungePostsComments.t.$_usersLoungecommentsUsersId,
      tableRelation: tableRelation,
      createTable: (foreignTableRelation) =>
          _i4.LoungePostsCommentsTable(tableRelation: foreignTableRelation),
    );
    _loungeComments = _i1.ManyRelation<_i4.LoungePostsCommentsTable>(
      tableWithRelations: relationTable,
      table: _i4.LoungePostsCommentsTable(
          tableRelation: relationTable.tableRelation!.lastRelation),
    );
    return _loungeComments!;
  }

  _i1.ManyRelation<_i5.ProductsLikesTable> get productLikes {
    if (_productLikes != null) return _productLikes!;
    var relationTable = _i1.createRelationTable(
      relationFieldName: 'productLikes',
      field: Users.t.id,
      foreignField: _i5.ProductsLikes.t.$_usersProductlikesUsersId,
      tableRelation: tableRelation,
      createTable: (foreignTableRelation) =>
          _i5.ProductsLikesTable(tableRelation: foreignTableRelation),
    );
    _productLikes = _i1.ManyRelation<_i5.ProductsLikesTable>(
      tableWithRelations: relationTable,
      table: _i5.ProductsLikesTable(
          tableRelation: relationTable.tableRelation!.lastRelation),
    );
    return _productLikes!;
  }

  _i1.ManyRelation<_i6.ProductsReportsTable> get productReports {
    if (_productReports != null) return _productReports!;
    var relationTable = _i1.createRelationTable(
      relationFieldName: 'productReports',
      field: Users.t.id,
      foreignField: _i6.ProductsReports.t.$_usersProductreportsUsersId,
      tableRelation: tableRelation,
      createTable: (foreignTableRelation) =>
          _i6.ProductsReportsTable(tableRelation: foreignTableRelation),
    );
    _productReports = _i1.ManyRelation<_i6.ProductsReportsTable>(
      tableWithRelations: relationTable,
      table: _i6.ProductsReportsTable(
          tableRelation: relationTable.tableRelation!.lastRelation),
    );
    return _productReports!;
  }

  _i1.ManyRelation<_i7.LoungePostsLikesTable> get postLikes {
    if (_postLikes != null) return _postLikes!;
    var relationTable = _i1.createRelationTable(
      relationFieldName: 'postLikes',
      field: Users.t.id,
      foreignField: _i7.LoungePostsLikes.t.$_usersPostlikesUsersId,
      tableRelation: tableRelation,
      createTable: (foreignTableRelation) =>
          _i7.LoungePostsLikesTable(tableRelation: foreignTableRelation),
    );
    _postLikes = _i1.ManyRelation<_i7.LoungePostsLikesTable>(
      tableWithRelations: relationTable,
      table: _i7.LoungePostsLikesTable(
          tableRelation: relationTable.tableRelation!.lastRelation),
    );
    return _postLikes!;
  }

  _i1.ManyRelation<_i8.LoungePostsReportsTable> get postReports {
    if (_postReports != null) return _postReports!;
    var relationTable = _i1.createRelationTable(
      relationFieldName: 'postReports',
      field: Users.t.id,
      foreignField: _i8.LoungePostsReports.t.$_usersPostreportsUsersId,
      tableRelation: tableRelation,
      createTable: (foreignTableRelation) =>
          _i8.LoungePostsReportsTable(tableRelation: foreignTableRelation),
    );
    _postReports = _i1.ManyRelation<_i8.LoungePostsReportsTable>(
      tableWithRelations: relationTable,
      table: _i8.LoungePostsReportsTable(
          tableRelation: relationTable.tableRelation!.lastRelation),
    );
    return _postReports!;
  }

  _i1.ManyRelation<_i9.ChatRoomsTable> get buyerChatRooms {
    if (_buyerChatRooms != null) return _buyerChatRooms!;
    var relationTable = _i1.createRelationTable(
      relationFieldName: 'buyerChatRooms',
      field: Users.t.id,
      foreignField: _i9.ChatRooms.t.$_usersBuyerchatroomsUsersId,
      tableRelation: tableRelation,
      createTable: (foreignTableRelation) =>
          _i9.ChatRoomsTable(tableRelation: foreignTableRelation),
    );
    _buyerChatRooms = _i1.ManyRelation<_i9.ChatRoomsTable>(
      tableWithRelations: relationTable,
      table: _i9.ChatRoomsTable(
          tableRelation: relationTable.tableRelation!.lastRelation),
    );
    return _buyerChatRooms!;
  }

  _i1.ManyRelation<_i9.ChatRoomsTable> get sellerChatRooms {
    if (_sellerChatRooms != null) return _sellerChatRooms!;
    var relationTable = _i1.createRelationTable(
      relationFieldName: 'sellerChatRooms',
      field: Users.t.id,
      foreignField: _i9.ChatRooms.t.$_usersSellerchatroomsUsersId,
      tableRelation: tableRelation,
      createTable: (foreignTableRelation) =>
          _i9.ChatRoomsTable(tableRelation: foreignTableRelation),
    );
    _sellerChatRooms = _i1.ManyRelation<_i9.ChatRoomsTable>(
      tableWithRelations: relationTable,
      table: _i9.ChatRoomsTable(
          tableRelation: relationTable.tableRelation!.lastRelation),
    );
    return _sellerChatRooms!;
  }

  _i1.ManyRelation<_i10.MessagesTable> get messages {
    if (_messages != null) return _messages!;
    var relationTable = _i1.createRelationTable(
      relationFieldName: 'messages',
      field: Users.t.id,
      foreignField: _i10.Messages.t.$_usersMessagesUsersId,
      tableRelation: tableRelation,
      createTable: (foreignTableRelation) =>
          _i10.MessagesTable(tableRelation: foreignTableRelation),
    );
    _messages = _i1.ManyRelation<_i10.MessagesTable>(
      tableWithRelations: relationTable,
      table: _i10.MessagesTable(
          tableRelation: relationTable.tableRelation!.lastRelation),
    );
    return _messages!;
  }

  _i1.ManyRelation<_i11.UserTermsTable> get userTerms {
    if (_userTerms != null) return _userTerms!;
    var relationTable = _i1.createRelationTable(
      relationFieldName: 'userTerms',
      field: Users.t.id,
      foreignField: _i11.UserTerms.t.$_usersUsertermsUsersId,
      tableRelation: tableRelation,
      createTable: (foreignTableRelation) =>
          _i11.UserTermsTable(tableRelation: foreignTableRelation),
    );
    _userTerms = _i1.ManyRelation<_i11.UserTermsTable>(
      tableWithRelations: relationTable,
      table: _i11.UserTermsTable(
          tableRelation: relationTable.tableRelation!.lastRelation),
    );
    return _userTerms!;
  }

  @override
  List<_i1.Column> get columns => [
        id,
        socialId,
        socialType,
        name,
        email,
        userProfileUrl,
        region1,
        region2,
        region3,
        region4,
        lat,
        lng,
        createdAt,
        updatedAt,
      ];

  @override
  _i1.Table? getRelationTable(String relationField) {
    if (relationField == 'products') {
      return __products;
    }
    if (relationField == 'loungePosts') {
      return __loungePosts;
    }
    if (relationField == 'loungeComments') {
      return __loungeComments;
    }
    if (relationField == 'productLikes') {
      return __productLikes;
    }
    if (relationField == 'productReports') {
      return __productReports;
    }
    if (relationField == 'postLikes') {
      return __postLikes;
    }
    if (relationField == 'postReports') {
      return __postReports;
    }
    if (relationField == 'buyerChatRooms') {
      return __buyerChatRooms;
    }
    if (relationField == 'sellerChatRooms') {
      return __sellerChatRooms;
    }
    if (relationField == 'messages') {
      return __messages;
    }
    if (relationField == 'userTerms') {
      return __userTerms;
    }
    return null;
  }
}

class UsersInclude extends _i1.IncludeObject {
  UsersInclude._({
    _i2.ProductsIncludeList? products,
    _i3.LoungePostsIncludeList? loungePosts,
    _i4.LoungePostsCommentsIncludeList? loungeComments,
    _i5.ProductsLikesIncludeList? productLikes,
    _i6.ProductsReportsIncludeList? productReports,
    _i7.LoungePostsLikesIncludeList? postLikes,
    _i8.LoungePostsReportsIncludeList? postReports,
    _i9.ChatRoomsIncludeList? buyerChatRooms,
    _i9.ChatRoomsIncludeList? sellerChatRooms,
    _i10.MessagesIncludeList? messages,
    _i11.UserTermsIncludeList? userTerms,
  }) {
    _products = products;
    _loungePosts = loungePosts;
    _loungeComments = loungeComments;
    _productLikes = productLikes;
    _productReports = productReports;
    _postLikes = postLikes;
    _postReports = postReports;
    _buyerChatRooms = buyerChatRooms;
    _sellerChatRooms = sellerChatRooms;
    _messages = messages;
    _userTerms = userTerms;
  }

  _i2.ProductsIncludeList? _products;

  _i3.LoungePostsIncludeList? _loungePosts;

  _i4.LoungePostsCommentsIncludeList? _loungeComments;

  _i5.ProductsLikesIncludeList? _productLikes;

  _i6.ProductsReportsIncludeList? _productReports;

  _i7.LoungePostsLikesIncludeList? _postLikes;

  _i8.LoungePostsReportsIncludeList? _postReports;

  _i9.ChatRoomsIncludeList? _buyerChatRooms;

  _i9.ChatRoomsIncludeList? _sellerChatRooms;

  _i10.MessagesIncludeList? _messages;

  _i11.UserTermsIncludeList? _userTerms;

  @override
  Map<String, _i1.Include?> get includes => {
        'products': _products,
        'loungePosts': _loungePosts,
        'loungeComments': _loungeComments,
        'productLikes': _productLikes,
        'productReports': _productReports,
        'postLikes': _postLikes,
        'postReports': _postReports,
        'buyerChatRooms': _buyerChatRooms,
        'sellerChatRooms': _sellerChatRooms,
        'messages': _messages,
        'userTerms': _userTerms,
      };

  @override
  _i1.Table get table => Users.t;
}

class UsersIncludeList extends _i1.IncludeList {
  UsersIncludeList._({
    _i1.WhereExpressionBuilder<UsersTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderDescending,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(Users.t);
  }

  @override
  Map<String, _i1.Include?> get includes => include?.includes ?? {};

  @override
  _i1.Table get table => Users.t;
}

class UsersRepository {
  const UsersRepository._();

  final attach = const UsersAttachRepository._();

  final attachRow = const UsersAttachRowRepository._();

  final detach = const UsersDetachRepository._();

  final detachRow = const UsersDetachRowRepository._();

  Future<List<Users>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<UsersTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<UsersTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<UsersTable>? orderByList,
    _i1.Transaction? transaction,
    UsersInclude? include,
  }) async {
    return session.db.find<Users>(
      where: where?.call(Users.t),
      orderBy: orderBy?.call(Users.t),
      orderByList: orderByList?.call(Users.t),
      orderDescending: orderDescending,
      limit: limit,
      offset: offset,
      transaction: transaction,
      include: include,
    );
  }

  Future<Users?> findFirstRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<UsersTable>? where,
    int? offset,
    _i1.OrderByBuilder<UsersTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<UsersTable>? orderByList,
    _i1.Transaction? transaction,
    UsersInclude? include,
  }) async {
    return session.db.findFirstRow<Users>(
      where: where?.call(Users.t),
      orderBy: orderBy?.call(Users.t),
      orderByList: orderByList?.call(Users.t),
      orderDescending: orderDescending,
      offset: offset,
      transaction: transaction,
      include: include,
    );
  }

  Future<Users?> findById(
    _i1.Session session,
    int id, {
    _i1.Transaction? transaction,
    UsersInclude? include,
  }) async {
    return session.db.findById<Users>(
      id,
      transaction: transaction,
      include: include,
    );
  }

  Future<List<Users>> insert(
    _i1.Session session,
    List<Users> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insert<Users>(
      rows,
      transaction: transaction,
    );
  }

  Future<Users> insertRow(
    _i1.Session session,
    Users row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insertRow<Users>(
      row,
      transaction: transaction,
    );
  }

  Future<List<Users>> update(
    _i1.Session session,
    List<Users> rows, {
    _i1.ColumnSelections<UsersTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.update<Users>(
      rows,
      columns: columns?.call(Users.t),
      transaction: transaction,
    );
  }

  Future<Users> updateRow(
    _i1.Session session,
    Users row, {
    _i1.ColumnSelections<UsersTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateRow<Users>(
      row,
      columns: columns?.call(Users.t),
      transaction: transaction,
    );
  }

  Future<List<Users>> delete(
    _i1.Session session,
    List<Users> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<Users>(
      rows,
      transaction: transaction,
    );
  }

  Future<Users> deleteRow(
    _i1.Session session,
    Users row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteRow<Users>(
      row,
      transaction: transaction,
    );
  }

  Future<List<Users>> deleteWhere(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<UsersTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteWhere<Users>(
      where: where(Users.t),
      transaction: transaction,
    );
  }

  Future<int> count(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<UsersTable>? where,
    int? limit,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<Users>(
      where: where?.call(Users.t),
      limit: limit,
      transaction: transaction,
    );
  }
}

class UsersAttachRepository {
  const UsersAttachRepository._();

  Future<void> products(
    _i1.Session session,
    Users users,
    List<_i2.Products> products, {
    _i1.Transaction? transaction,
  }) async {
    if (products.any((e) => e.id == null)) {
      throw ArgumentError.notNull('products.id');
    }
    if (users.id == null) {
      throw ArgumentError.notNull('users.id');
    }

    var $products = products
        .map((e) => _i2.ProductsImplicit(
              e,
              $_usersProductsUsersId: users.id,
            ))
        .toList();
    await session.db.update<_i2.Products>(
      $products,
      columns: [_i2.Products.t.$_usersProductsUsersId],
      transaction: transaction,
    );
  }

  Future<void> loungePosts(
    _i1.Session session,
    Users users,
    List<_i3.LoungePosts> loungePosts, {
    _i1.Transaction? transaction,
  }) async {
    if (loungePosts.any((e) => e.id == null)) {
      throw ArgumentError.notNull('loungePosts.id');
    }
    if (users.id == null) {
      throw ArgumentError.notNull('users.id');
    }

    var $loungePosts = loungePosts
        .map((e) => _i3.LoungePostsImplicit(
              e,
              $_usersLoungepostsUsersId: users.id,
            ))
        .toList();
    await session.db.update<_i3.LoungePosts>(
      $loungePosts,
      columns: [_i3.LoungePosts.t.$_usersLoungepostsUsersId],
      transaction: transaction,
    );
  }

  Future<void> loungeComments(
    _i1.Session session,
    Users users,
    List<_i4.LoungePostsComments> loungePostsComments, {
    _i1.Transaction? transaction,
  }) async {
    if (loungePostsComments.any((e) => e.id == null)) {
      throw ArgumentError.notNull('loungePostsComments.id');
    }
    if (users.id == null) {
      throw ArgumentError.notNull('users.id');
    }

    var $loungePostsComments = loungePostsComments
        .map((e) => _i4.LoungePostsCommentsImplicit(
              e,
              $_usersLoungecommentsUsersId: users.id,
            ))
        .toList();
    await session.db.update<_i4.LoungePostsComments>(
      $loungePostsComments,
      columns: [_i4.LoungePostsComments.t.$_usersLoungecommentsUsersId],
      transaction: transaction,
    );
  }

  Future<void> productLikes(
    _i1.Session session,
    Users users,
    List<_i5.ProductsLikes> productsLikes, {
    _i1.Transaction? transaction,
  }) async {
    if (productsLikes.any((e) => e.id == null)) {
      throw ArgumentError.notNull('productsLikes.id');
    }
    if (users.id == null) {
      throw ArgumentError.notNull('users.id');
    }

    var $productsLikes = productsLikes
        .map((e) => _i5.ProductsLikesImplicit(
              e,
              $_usersProductlikesUsersId: users.id,
            ))
        .toList();
    await session.db.update<_i5.ProductsLikes>(
      $productsLikes,
      columns: [_i5.ProductsLikes.t.$_usersProductlikesUsersId],
      transaction: transaction,
    );
  }

  Future<void> productReports(
    _i1.Session session,
    Users users,
    List<_i6.ProductsReports> productsReports, {
    _i1.Transaction? transaction,
  }) async {
    if (productsReports.any((e) => e.id == null)) {
      throw ArgumentError.notNull('productsReports.id');
    }
    if (users.id == null) {
      throw ArgumentError.notNull('users.id');
    }

    var $productsReports = productsReports
        .map((e) => _i6.ProductsReportsImplicit(
              e,
              $_usersProductreportsUsersId: users.id,
            ))
        .toList();
    await session.db.update<_i6.ProductsReports>(
      $productsReports,
      columns: [_i6.ProductsReports.t.$_usersProductreportsUsersId],
      transaction: transaction,
    );
  }

  Future<void> postLikes(
    _i1.Session session,
    Users users,
    List<_i7.LoungePostsLikes> loungePostsLikes, {
    _i1.Transaction? transaction,
  }) async {
    if (loungePostsLikes.any((e) => e.id == null)) {
      throw ArgumentError.notNull('loungePostsLikes.id');
    }
    if (users.id == null) {
      throw ArgumentError.notNull('users.id');
    }

    var $loungePostsLikes = loungePostsLikes
        .map((e) => _i7.LoungePostsLikesImplicit(
              e,
              $_usersPostlikesUsersId: users.id,
            ))
        .toList();
    await session.db.update<_i7.LoungePostsLikes>(
      $loungePostsLikes,
      columns: [_i7.LoungePostsLikes.t.$_usersPostlikesUsersId],
      transaction: transaction,
    );
  }

  Future<void> postReports(
    _i1.Session session,
    Users users,
    List<_i8.LoungePostsReports> loungePostsReports, {
    _i1.Transaction? transaction,
  }) async {
    if (loungePostsReports.any((e) => e.id == null)) {
      throw ArgumentError.notNull('loungePostsReports.id');
    }
    if (users.id == null) {
      throw ArgumentError.notNull('users.id');
    }

    var $loungePostsReports = loungePostsReports
        .map((e) => _i8.LoungePostsReportsImplicit(
              e,
              $_usersPostreportsUsersId: users.id,
            ))
        .toList();
    await session.db.update<_i8.LoungePostsReports>(
      $loungePostsReports,
      columns: [_i8.LoungePostsReports.t.$_usersPostreportsUsersId],
      transaction: transaction,
    );
  }

  Future<void> buyerChatRooms(
    _i1.Session session,
    Users users,
    List<_i9.ChatRooms> chatRooms, {
    _i1.Transaction? transaction,
  }) async {
    if (chatRooms.any((e) => e.id == null)) {
      throw ArgumentError.notNull('chatRooms.id');
    }
    if (users.id == null) {
      throw ArgumentError.notNull('users.id');
    }

    var $chatRooms = chatRooms
        .map((e) => _i9.ChatRoomsImplicit(
              e,
              $_usersBuyerchatroomsUsersId: users.id,
            ))
        .toList();
    await session.db.update<_i9.ChatRooms>(
      $chatRooms,
      columns: [_i9.ChatRooms.t.$_usersBuyerchatroomsUsersId],
      transaction: transaction,
    );
  }

  Future<void> sellerChatRooms(
    _i1.Session session,
    Users users,
    List<_i9.ChatRooms> chatRooms, {
    _i1.Transaction? transaction,
  }) async {
    if (chatRooms.any((e) => e.id == null)) {
      throw ArgumentError.notNull('chatRooms.id');
    }
    if (users.id == null) {
      throw ArgumentError.notNull('users.id');
    }

    var $chatRooms = chatRooms
        .map((e) => _i9.ChatRoomsImplicit(
              e,
              $_usersSellerchatroomsUsersId: users.id,
            ))
        .toList();
    await session.db.update<_i9.ChatRooms>(
      $chatRooms,
      columns: [_i9.ChatRooms.t.$_usersSellerchatroomsUsersId],
      transaction: transaction,
    );
  }

  Future<void> messages(
    _i1.Session session,
    Users users,
    List<_i10.Messages> messages, {
    _i1.Transaction? transaction,
  }) async {
    if (messages.any((e) => e.id == null)) {
      throw ArgumentError.notNull('messages.id');
    }
    if (users.id == null) {
      throw ArgumentError.notNull('users.id');
    }

    var $messages = messages
        .map((e) => _i10.MessagesImplicit(
              e,
              $_usersMessagesUsersId: users.id,
            ))
        .toList();
    await session.db.update<_i10.Messages>(
      $messages,
      columns: [_i10.Messages.t.$_usersMessagesUsersId],
      transaction: transaction,
    );
  }

  Future<void> userTerms(
    _i1.Session session,
    Users users,
    List<_i11.UserTerms> userTerms, {
    _i1.Transaction? transaction,
  }) async {
    if (userTerms.any((e) => e.id == null)) {
      throw ArgumentError.notNull('userTerms.id');
    }
    if (users.id == null) {
      throw ArgumentError.notNull('users.id');
    }

    var $userTerms = userTerms
        .map((e) => _i11.UserTermsImplicit(
              e,
              $_usersUsertermsUsersId: users.id,
            ))
        .toList();
    await session.db.update<_i11.UserTerms>(
      $userTerms,
      columns: [_i11.UserTerms.t.$_usersUsertermsUsersId],
      transaction: transaction,
    );
  }
}

class UsersAttachRowRepository {
  const UsersAttachRowRepository._();

  Future<void> products(
    _i1.Session session,
    Users users,
    _i2.Products products, {
    _i1.Transaction? transaction,
  }) async {
    if (products.id == null) {
      throw ArgumentError.notNull('products.id');
    }
    if (users.id == null) {
      throw ArgumentError.notNull('users.id');
    }

    var $products = _i2.ProductsImplicit(
      products,
      $_usersProductsUsersId: users.id,
    );
    await session.db.updateRow<_i2.Products>(
      $products,
      columns: [_i2.Products.t.$_usersProductsUsersId],
      transaction: transaction,
    );
  }

  Future<void> loungePosts(
    _i1.Session session,
    Users users,
    _i3.LoungePosts loungePosts, {
    _i1.Transaction? transaction,
  }) async {
    if (loungePosts.id == null) {
      throw ArgumentError.notNull('loungePosts.id');
    }
    if (users.id == null) {
      throw ArgumentError.notNull('users.id');
    }

    var $loungePosts = _i3.LoungePostsImplicit(
      loungePosts,
      $_usersLoungepostsUsersId: users.id,
    );
    await session.db.updateRow<_i3.LoungePosts>(
      $loungePosts,
      columns: [_i3.LoungePosts.t.$_usersLoungepostsUsersId],
      transaction: transaction,
    );
  }

  Future<void> loungeComments(
    _i1.Session session,
    Users users,
    _i4.LoungePostsComments loungePostsComments, {
    _i1.Transaction? transaction,
  }) async {
    if (loungePostsComments.id == null) {
      throw ArgumentError.notNull('loungePostsComments.id');
    }
    if (users.id == null) {
      throw ArgumentError.notNull('users.id');
    }

    var $loungePostsComments = _i4.LoungePostsCommentsImplicit(
      loungePostsComments,
      $_usersLoungecommentsUsersId: users.id,
    );
    await session.db.updateRow<_i4.LoungePostsComments>(
      $loungePostsComments,
      columns: [_i4.LoungePostsComments.t.$_usersLoungecommentsUsersId],
      transaction: transaction,
    );
  }

  Future<void> productLikes(
    _i1.Session session,
    Users users,
    _i5.ProductsLikes productsLikes, {
    _i1.Transaction? transaction,
  }) async {
    if (productsLikes.id == null) {
      throw ArgumentError.notNull('productsLikes.id');
    }
    if (users.id == null) {
      throw ArgumentError.notNull('users.id');
    }

    var $productsLikes = _i5.ProductsLikesImplicit(
      productsLikes,
      $_usersProductlikesUsersId: users.id,
    );
    await session.db.updateRow<_i5.ProductsLikes>(
      $productsLikes,
      columns: [_i5.ProductsLikes.t.$_usersProductlikesUsersId],
      transaction: transaction,
    );
  }

  Future<void> productReports(
    _i1.Session session,
    Users users,
    _i6.ProductsReports productsReports, {
    _i1.Transaction? transaction,
  }) async {
    if (productsReports.id == null) {
      throw ArgumentError.notNull('productsReports.id');
    }
    if (users.id == null) {
      throw ArgumentError.notNull('users.id');
    }

    var $productsReports = _i6.ProductsReportsImplicit(
      productsReports,
      $_usersProductreportsUsersId: users.id,
    );
    await session.db.updateRow<_i6.ProductsReports>(
      $productsReports,
      columns: [_i6.ProductsReports.t.$_usersProductreportsUsersId],
      transaction: transaction,
    );
  }

  Future<void> postLikes(
    _i1.Session session,
    Users users,
    _i7.LoungePostsLikes loungePostsLikes, {
    _i1.Transaction? transaction,
  }) async {
    if (loungePostsLikes.id == null) {
      throw ArgumentError.notNull('loungePostsLikes.id');
    }
    if (users.id == null) {
      throw ArgumentError.notNull('users.id');
    }

    var $loungePostsLikes = _i7.LoungePostsLikesImplicit(
      loungePostsLikes,
      $_usersPostlikesUsersId: users.id,
    );
    await session.db.updateRow<_i7.LoungePostsLikes>(
      $loungePostsLikes,
      columns: [_i7.LoungePostsLikes.t.$_usersPostlikesUsersId],
      transaction: transaction,
    );
  }

  Future<void> postReports(
    _i1.Session session,
    Users users,
    _i8.LoungePostsReports loungePostsReports, {
    _i1.Transaction? transaction,
  }) async {
    if (loungePostsReports.id == null) {
      throw ArgumentError.notNull('loungePostsReports.id');
    }
    if (users.id == null) {
      throw ArgumentError.notNull('users.id');
    }

    var $loungePostsReports = _i8.LoungePostsReportsImplicit(
      loungePostsReports,
      $_usersPostreportsUsersId: users.id,
    );
    await session.db.updateRow<_i8.LoungePostsReports>(
      $loungePostsReports,
      columns: [_i8.LoungePostsReports.t.$_usersPostreportsUsersId],
      transaction: transaction,
    );
  }

  Future<void> buyerChatRooms(
    _i1.Session session,
    Users users,
    _i9.ChatRooms chatRooms, {
    _i1.Transaction? transaction,
  }) async {
    if (chatRooms.id == null) {
      throw ArgumentError.notNull('chatRooms.id');
    }
    if (users.id == null) {
      throw ArgumentError.notNull('users.id');
    }

    var $chatRooms = _i9.ChatRoomsImplicit(
      chatRooms,
      $_usersBuyerchatroomsUsersId: users.id,
    );
    await session.db.updateRow<_i9.ChatRooms>(
      $chatRooms,
      columns: [_i9.ChatRooms.t.$_usersBuyerchatroomsUsersId],
      transaction: transaction,
    );
  }

  Future<void> sellerChatRooms(
    _i1.Session session,
    Users users,
    _i9.ChatRooms chatRooms, {
    _i1.Transaction? transaction,
  }) async {
    if (chatRooms.id == null) {
      throw ArgumentError.notNull('chatRooms.id');
    }
    if (users.id == null) {
      throw ArgumentError.notNull('users.id');
    }

    var $chatRooms = _i9.ChatRoomsImplicit(
      chatRooms,
      $_usersSellerchatroomsUsersId: users.id,
    );
    await session.db.updateRow<_i9.ChatRooms>(
      $chatRooms,
      columns: [_i9.ChatRooms.t.$_usersSellerchatroomsUsersId],
      transaction: transaction,
    );
  }

  Future<void> messages(
    _i1.Session session,
    Users users,
    _i10.Messages messages, {
    _i1.Transaction? transaction,
  }) async {
    if (messages.id == null) {
      throw ArgumentError.notNull('messages.id');
    }
    if (users.id == null) {
      throw ArgumentError.notNull('users.id');
    }

    var $messages = _i10.MessagesImplicit(
      messages,
      $_usersMessagesUsersId: users.id,
    );
    await session.db.updateRow<_i10.Messages>(
      $messages,
      columns: [_i10.Messages.t.$_usersMessagesUsersId],
      transaction: transaction,
    );
  }

  Future<void> userTerms(
    _i1.Session session,
    Users users,
    _i11.UserTerms userTerms, {
    _i1.Transaction? transaction,
  }) async {
    if (userTerms.id == null) {
      throw ArgumentError.notNull('userTerms.id');
    }
    if (users.id == null) {
      throw ArgumentError.notNull('users.id');
    }

    var $userTerms = _i11.UserTermsImplicit(
      userTerms,
      $_usersUsertermsUsersId: users.id,
    );
    await session.db.updateRow<_i11.UserTerms>(
      $userTerms,
      columns: [_i11.UserTerms.t.$_usersUsertermsUsersId],
      transaction: transaction,
    );
  }
}

class UsersDetachRepository {
  const UsersDetachRepository._();

  Future<void> products(
    _i1.Session session,
    List<_i2.Products> products, {
    _i1.Transaction? transaction,
  }) async {
    if (products.any((e) => e.id == null)) {
      throw ArgumentError.notNull('products.id');
    }

    var $products = products
        .map((e) => _i2.ProductsImplicit(
              e,
              $_usersProductsUsersId: null,
            ))
        .toList();
    await session.db.update<_i2.Products>(
      $products,
      columns: [_i2.Products.t.$_usersProductsUsersId],
      transaction: transaction,
    );
  }

  Future<void> loungePosts(
    _i1.Session session,
    List<_i3.LoungePosts> loungePosts, {
    _i1.Transaction? transaction,
  }) async {
    if (loungePosts.any((e) => e.id == null)) {
      throw ArgumentError.notNull('loungePosts.id');
    }

    var $loungePosts = loungePosts
        .map((e) => _i3.LoungePostsImplicit(
              e,
              $_usersLoungepostsUsersId: null,
            ))
        .toList();
    await session.db.update<_i3.LoungePosts>(
      $loungePosts,
      columns: [_i3.LoungePosts.t.$_usersLoungepostsUsersId],
      transaction: transaction,
    );
  }

  Future<void> loungeComments(
    _i1.Session session,
    List<_i4.LoungePostsComments> loungePostsComments, {
    _i1.Transaction? transaction,
  }) async {
    if (loungePostsComments.any((e) => e.id == null)) {
      throw ArgumentError.notNull('loungePostsComments.id');
    }

    var $loungePostsComments = loungePostsComments
        .map((e) => _i4.LoungePostsCommentsImplicit(
              e,
              $_usersLoungecommentsUsersId: null,
            ))
        .toList();
    await session.db.update<_i4.LoungePostsComments>(
      $loungePostsComments,
      columns: [_i4.LoungePostsComments.t.$_usersLoungecommentsUsersId],
      transaction: transaction,
    );
  }

  Future<void> productLikes(
    _i1.Session session,
    List<_i5.ProductsLikes> productsLikes, {
    _i1.Transaction? transaction,
  }) async {
    if (productsLikes.any((e) => e.id == null)) {
      throw ArgumentError.notNull('productsLikes.id');
    }

    var $productsLikes = productsLikes
        .map((e) => _i5.ProductsLikesImplicit(
              e,
              $_usersProductlikesUsersId: null,
            ))
        .toList();
    await session.db.update<_i5.ProductsLikes>(
      $productsLikes,
      columns: [_i5.ProductsLikes.t.$_usersProductlikesUsersId],
      transaction: transaction,
    );
  }

  Future<void> productReports(
    _i1.Session session,
    List<_i6.ProductsReports> productsReports, {
    _i1.Transaction? transaction,
  }) async {
    if (productsReports.any((e) => e.id == null)) {
      throw ArgumentError.notNull('productsReports.id');
    }

    var $productsReports = productsReports
        .map((e) => _i6.ProductsReportsImplicit(
              e,
              $_usersProductreportsUsersId: null,
            ))
        .toList();
    await session.db.update<_i6.ProductsReports>(
      $productsReports,
      columns: [_i6.ProductsReports.t.$_usersProductreportsUsersId],
      transaction: transaction,
    );
  }

  Future<void> postLikes(
    _i1.Session session,
    List<_i7.LoungePostsLikes> loungePostsLikes, {
    _i1.Transaction? transaction,
  }) async {
    if (loungePostsLikes.any((e) => e.id == null)) {
      throw ArgumentError.notNull('loungePostsLikes.id');
    }

    var $loungePostsLikes = loungePostsLikes
        .map((e) => _i7.LoungePostsLikesImplicit(
              e,
              $_usersPostlikesUsersId: null,
            ))
        .toList();
    await session.db.update<_i7.LoungePostsLikes>(
      $loungePostsLikes,
      columns: [_i7.LoungePostsLikes.t.$_usersPostlikesUsersId],
      transaction: transaction,
    );
  }

  Future<void> postReports(
    _i1.Session session,
    List<_i8.LoungePostsReports> loungePostsReports, {
    _i1.Transaction? transaction,
  }) async {
    if (loungePostsReports.any((e) => e.id == null)) {
      throw ArgumentError.notNull('loungePostsReports.id');
    }

    var $loungePostsReports = loungePostsReports
        .map((e) => _i8.LoungePostsReportsImplicit(
              e,
              $_usersPostreportsUsersId: null,
            ))
        .toList();
    await session.db.update<_i8.LoungePostsReports>(
      $loungePostsReports,
      columns: [_i8.LoungePostsReports.t.$_usersPostreportsUsersId],
      transaction: transaction,
    );
  }

  Future<void> buyerChatRooms(
    _i1.Session session,
    List<_i9.ChatRooms> chatRooms, {
    _i1.Transaction? transaction,
  }) async {
    if (chatRooms.any((e) => e.id == null)) {
      throw ArgumentError.notNull('chatRooms.id');
    }

    var $chatRooms = chatRooms
        .map((e) => _i9.ChatRoomsImplicit(
              e,
              $_usersBuyerchatroomsUsersId: null,
            ))
        .toList();
    await session.db.update<_i9.ChatRooms>(
      $chatRooms,
      columns: [_i9.ChatRooms.t.$_usersBuyerchatroomsUsersId],
      transaction: transaction,
    );
  }

  Future<void> sellerChatRooms(
    _i1.Session session,
    List<_i9.ChatRooms> chatRooms, {
    _i1.Transaction? transaction,
  }) async {
    if (chatRooms.any((e) => e.id == null)) {
      throw ArgumentError.notNull('chatRooms.id');
    }

    var $chatRooms = chatRooms
        .map((e) => _i9.ChatRoomsImplicit(
              e,
              $_usersSellerchatroomsUsersId: null,
            ))
        .toList();
    await session.db.update<_i9.ChatRooms>(
      $chatRooms,
      columns: [_i9.ChatRooms.t.$_usersSellerchatroomsUsersId],
      transaction: transaction,
    );
  }

  Future<void> messages(
    _i1.Session session,
    List<_i10.Messages> messages, {
    _i1.Transaction? transaction,
  }) async {
    if (messages.any((e) => e.id == null)) {
      throw ArgumentError.notNull('messages.id');
    }

    var $messages = messages
        .map((e) => _i10.MessagesImplicit(
              e,
              $_usersMessagesUsersId: null,
            ))
        .toList();
    await session.db.update<_i10.Messages>(
      $messages,
      columns: [_i10.Messages.t.$_usersMessagesUsersId],
      transaction: transaction,
    );
  }

  Future<void> userTerms(
    _i1.Session session,
    List<_i11.UserTerms> userTerms, {
    _i1.Transaction? transaction,
  }) async {
    if (userTerms.any((e) => e.id == null)) {
      throw ArgumentError.notNull('userTerms.id');
    }

    var $userTerms = userTerms
        .map((e) => _i11.UserTermsImplicit(
              e,
              $_usersUsertermsUsersId: null,
            ))
        .toList();
    await session.db.update<_i11.UserTerms>(
      $userTerms,
      columns: [_i11.UserTerms.t.$_usersUsertermsUsersId],
      transaction: transaction,
    );
  }
}

class UsersDetachRowRepository {
  const UsersDetachRowRepository._();

  Future<void> products(
    _i1.Session session,
    _i2.Products products, {
    _i1.Transaction? transaction,
  }) async {
    if (products.id == null) {
      throw ArgumentError.notNull('products.id');
    }

    var $products = _i2.ProductsImplicit(
      products,
      $_usersProductsUsersId: null,
    );
    await session.db.updateRow<_i2.Products>(
      $products,
      columns: [_i2.Products.t.$_usersProductsUsersId],
      transaction: transaction,
    );
  }

  Future<void> loungePosts(
    _i1.Session session,
    _i3.LoungePosts loungePosts, {
    _i1.Transaction? transaction,
  }) async {
    if (loungePosts.id == null) {
      throw ArgumentError.notNull('loungePosts.id');
    }

    var $loungePosts = _i3.LoungePostsImplicit(
      loungePosts,
      $_usersLoungepostsUsersId: null,
    );
    await session.db.updateRow<_i3.LoungePosts>(
      $loungePosts,
      columns: [_i3.LoungePosts.t.$_usersLoungepostsUsersId],
      transaction: transaction,
    );
  }

  Future<void> loungeComments(
    _i1.Session session,
    _i4.LoungePostsComments loungePostsComments, {
    _i1.Transaction? transaction,
  }) async {
    if (loungePostsComments.id == null) {
      throw ArgumentError.notNull('loungePostsComments.id');
    }

    var $loungePostsComments = _i4.LoungePostsCommentsImplicit(
      loungePostsComments,
      $_usersLoungecommentsUsersId: null,
    );
    await session.db.updateRow<_i4.LoungePostsComments>(
      $loungePostsComments,
      columns: [_i4.LoungePostsComments.t.$_usersLoungecommentsUsersId],
      transaction: transaction,
    );
  }

  Future<void> productLikes(
    _i1.Session session,
    _i5.ProductsLikes productsLikes, {
    _i1.Transaction? transaction,
  }) async {
    if (productsLikes.id == null) {
      throw ArgumentError.notNull('productsLikes.id');
    }

    var $productsLikes = _i5.ProductsLikesImplicit(
      productsLikes,
      $_usersProductlikesUsersId: null,
    );
    await session.db.updateRow<_i5.ProductsLikes>(
      $productsLikes,
      columns: [_i5.ProductsLikes.t.$_usersProductlikesUsersId],
      transaction: transaction,
    );
  }

  Future<void> productReports(
    _i1.Session session,
    _i6.ProductsReports productsReports, {
    _i1.Transaction? transaction,
  }) async {
    if (productsReports.id == null) {
      throw ArgumentError.notNull('productsReports.id');
    }

    var $productsReports = _i6.ProductsReportsImplicit(
      productsReports,
      $_usersProductreportsUsersId: null,
    );
    await session.db.updateRow<_i6.ProductsReports>(
      $productsReports,
      columns: [_i6.ProductsReports.t.$_usersProductreportsUsersId],
      transaction: transaction,
    );
  }

  Future<void> postLikes(
    _i1.Session session,
    _i7.LoungePostsLikes loungePostsLikes, {
    _i1.Transaction? transaction,
  }) async {
    if (loungePostsLikes.id == null) {
      throw ArgumentError.notNull('loungePostsLikes.id');
    }

    var $loungePostsLikes = _i7.LoungePostsLikesImplicit(
      loungePostsLikes,
      $_usersPostlikesUsersId: null,
    );
    await session.db.updateRow<_i7.LoungePostsLikes>(
      $loungePostsLikes,
      columns: [_i7.LoungePostsLikes.t.$_usersPostlikesUsersId],
      transaction: transaction,
    );
  }

  Future<void> postReports(
    _i1.Session session,
    _i8.LoungePostsReports loungePostsReports, {
    _i1.Transaction? transaction,
  }) async {
    if (loungePostsReports.id == null) {
      throw ArgumentError.notNull('loungePostsReports.id');
    }

    var $loungePostsReports = _i8.LoungePostsReportsImplicit(
      loungePostsReports,
      $_usersPostreportsUsersId: null,
    );
    await session.db.updateRow<_i8.LoungePostsReports>(
      $loungePostsReports,
      columns: [_i8.LoungePostsReports.t.$_usersPostreportsUsersId],
      transaction: transaction,
    );
  }

  Future<void> buyerChatRooms(
    _i1.Session session,
    _i9.ChatRooms chatRooms, {
    _i1.Transaction? transaction,
  }) async {
    if (chatRooms.id == null) {
      throw ArgumentError.notNull('chatRooms.id');
    }

    var $chatRooms = _i9.ChatRoomsImplicit(
      chatRooms,
      $_usersBuyerchatroomsUsersId: null,
    );
    await session.db.updateRow<_i9.ChatRooms>(
      $chatRooms,
      columns: [_i9.ChatRooms.t.$_usersBuyerchatroomsUsersId],
      transaction: transaction,
    );
  }

  Future<void> sellerChatRooms(
    _i1.Session session,
    _i9.ChatRooms chatRooms, {
    _i1.Transaction? transaction,
  }) async {
    if (chatRooms.id == null) {
      throw ArgumentError.notNull('chatRooms.id');
    }

    var $chatRooms = _i9.ChatRoomsImplicit(
      chatRooms,
      $_usersSellerchatroomsUsersId: null,
    );
    await session.db.updateRow<_i9.ChatRooms>(
      $chatRooms,
      columns: [_i9.ChatRooms.t.$_usersSellerchatroomsUsersId],
      transaction: transaction,
    );
  }

  Future<void> messages(
    _i1.Session session,
    _i10.Messages messages, {
    _i1.Transaction? transaction,
  }) async {
    if (messages.id == null) {
      throw ArgumentError.notNull('messages.id');
    }

    var $messages = _i10.MessagesImplicit(
      messages,
      $_usersMessagesUsersId: null,
    );
    await session.db.updateRow<_i10.Messages>(
      $messages,
      columns: [_i10.Messages.t.$_usersMessagesUsersId],
      transaction: transaction,
    );
  }

  Future<void> userTerms(
    _i1.Session session,
    _i11.UserTerms userTerms, {
    _i1.Transaction? transaction,
  }) async {
    if (userTerms.id == null) {
      throw ArgumentError.notNull('userTerms.id');
    }

    var $userTerms = _i11.UserTermsImplicit(
      userTerms,
      $_usersUsertermsUsersId: null,
    );
    await session.db.updateRow<_i11.UserTerms>(
      $userTerms,
      columns: [_i11.UserTerms.t.$_usersUsertermsUsersId],
      transaction: transaction,
    );
  }
}
