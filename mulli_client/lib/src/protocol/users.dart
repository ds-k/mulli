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
import 'lounge_posts.dart' as _i3;
import 'lounge_posts_comments.dart' as _i4;
import 'products_likes.dart' as _i5;
import 'products_reports.dart' as _i6;
import 'lounge_posts_likes.dart' as _i7;
import 'lounge_posts_reports.dart' as _i8;
import 'chat_rooms.dart' as _i9;
import 'messages.dart' as _i10;
import 'user_terms.dart' as _i11;

abstract class Users implements _i1.SerializableModel {
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

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
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
