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
import 'brands.dart' as _i2;
import 'chat_rooms.dart' as _i3;
import 'example.dart' as _i4;
import 'lounge_posts.dart' as _i5;
import 'lounge_posts_comments.dart' as _i6;
import 'lounge_posts_likes.dart' as _i7;
import 'lounge_posts_reports.dart' as _i8;
import 'messages.dart' as _i9;
import 'products.dart' as _i10;
import 'products_images.dart' as _i11;
import 'products_likes.dart' as _i12;
import 'products_reports.dart' as _i13;
import 'terms_and_conditions.dart' as _i14;
import 'user_terms.dart' as _i15;
import 'users.dart' as _i16;
import 'package:mulli_client/src/protocol/brands.dart' as _i17;
import 'package:mulli_client/src/protocol/users.dart' as _i18;
export 'brands.dart';
export 'chat_rooms.dart';
export 'example.dart';
export 'lounge_posts.dart';
export 'lounge_posts_comments.dart';
export 'lounge_posts_likes.dart';
export 'lounge_posts_reports.dart';
export 'messages.dart';
export 'products.dart';
export 'products_images.dart';
export 'products_likes.dart';
export 'products_reports.dart';
export 'terms_and_conditions.dart';
export 'user_terms.dart';
export 'users.dart';
export 'client.dart';

class Protocol extends _i1.SerializationManager {
  Protocol._();

  factory Protocol() => _instance;

  static final Protocol _instance = Protocol._();

  @override
  T deserialize<T>(
    dynamic data, [
    Type? t,
  ]) {
    t ??= T;
    if (t == _i2.Brands) {
      return _i2.Brands.fromJson(data) as T;
    }
    if (t == _i3.ChatRooms) {
      return _i3.ChatRooms.fromJson(data) as T;
    }
    if (t == _i4.Example) {
      return _i4.Example.fromJson(data) as T;
    }
    if (t == _i5.LoungePosts) {
      return _i5.LoungePosts.fromJson(data) as T;
    }
    if (t == _i6.LoungePostsComments) {
      return _i6.LoungePostsComments.fromJson(data) as T;
    }
    if (t == _i7.LoungePostsLikes) {
      return _i7.LoungePostsLikes.fromJson(data) as T;
    }
    if (t == _i8.LoungePostsReports) {
      return _i8.LoungePostsReports.fromJson(data) as T;
    }
    if (t == _i9.Messages) {
      return _i9.Messages.fromJson(data) as T;
    }
    if (t == _i10.Products) {
      return _i10.Products.fromJson(data) as T;
    }
    if (t == _i11.ProductsImages) {
      return _i11.ProductsImages.fromJson(data) as T;
    }
    if (t == _i12.ProductsLikes) {
      return _i12.ProductsLikes.fromJson(data) as T;
    }
    if (t == _i13.ProductsReports) {
      return _i13.ProductsReports.fromJson(data) as T;
    }
    if (t == _i14.TermsAndConditions) {
      return _i14.TermsAndConditions.fromJson(data) as T;
    }
    if (t == _i15.UserTerms) {
      return _i15.UserTerms.fromJson(data) as T;
    }
    if (t == _i16.Users) {
      return _i16.Users.fromJson(data) as T;
    }
    if (t == _i1.getType<_i2.Brands?>()) {
      return (data != null ? _i2.Brands.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i3.ChatRooms?>()) {
      return (data != null ? _i3.ChatRooms.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i4.Example?>()) {
      return (data != null ? _i4.Example.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i5.LoungePosts?>()) {
      return (data != null ? _i5.LoungePosts.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i6.LoungePostsComments?>()) {
      return (data != null ? _i6.LoungePostsComments.fromJson(data) : null)
          as T;
    }
    if (t == _i1.getType<_i7.LoungePostsLikes?>()) {
      return (data != null ? _i7.LoungePostsLikes.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i8.LoungePostsReports?>()) {
      return (data != null ? _i8.LoungePostsReports.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i9.Messages?>()) {
      return (data != null ? _i9.Messages.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i10.Products?>()) {
      return (data != null ? _i10.Products.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i11.ProductsImages?>()) {
      return (data != null ? _i11.ProductsImages.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i12.ProductsLikes?>()) {
      return (data != null ? _i12.ProductsLikes.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i13.ProductsReports?>()) {
      return (data != null ? _i13.ProductsReports.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i14.TermsAndConditions?>()) {
      return (data != null ? _i14.TermsAndConditions.fromJson(data) : null)
          as T;
    }
    if (t == _i1.getType<_i15.UserTerms?>()) {
      return (data != null ? _i15.UserTerms.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i16.Users?>()) {
      return (data != null ? _i16.Users.fromJson(data) : null) as T;
    }
    if (t == List<_i17.Brands>) {
      return (data as List).map((e) => deserialize<_i17.Brands>(e)).toList()
          as dynamic;
    }
    if (t == List<_i18.Users>) {
      return (data as List).map((e) => deserialize<_i18.Users>(e)).toList()
          as dynamic;
    }
    return super.deserialize<T>(data, t);
  }

  @override
  String? getClassNameForObject(Object? data) {
    String? className = super.getClassNameForObject(data);
    if (className != null) return className;
    if (data is _i2.Brands) {
      return 'Brands';
    }
    if (data is _i3.ChatRooms) {
      return 'ChatRooms';
    }
    if (data is _i4.Example) {
      return 'Example';
    }
    if (data is _i5.LoungePosts) {
      return 'LoungePosts';
    }
    if (data is _i6.LoungePostsComments) {
      return 'LoungePostsComments';
    }
    if (data is _i7.LoungePostsLikes) {
      return 'LoungePostsLikes';
    }
    if (data is _i8.LoungePostsReports) {
      return 'LoungePostsReports';
    }
    if (data is _i9.Messages) {
      return 'Messages';
    }
    if (data is _i10.Products) {
      return 'Products';
    }
    if (data is _i11.ProductsImages) {
      return 'ProductsImages';
    }
    if (data is _i12.ProductsLikes) {
      return 'ProductsLikes';
    }
    if (data is _i13.ProductsReports) {
      return 'ProductsReports';
    }
    if (data is _i14.TermsAndConditions) {
      return 'TermsAndConditions';
    }
    if (data is _i15.UserTerms) {
      return 'UserTerms';
    }
    if (data is _i16.Users) {
      return 'Users';
    }
    return null;
  }

  @override
  dynamic deserializeByClassName(Map<String, dynamic> data) {
    var dataClassName = data['className'];
    if (dataClassName is! String) {
      return super.deserializeByClassName(data);
    }
    if (dataClassName == 'Brands') {
      return deserialize<_i2.Brands>(data['data']);
    }
    if (dataClassName == 'ChatRooms') {
      return deserialize<_i3.ChatRooms>(data['data']);
    }
    if (dataClassName == 'Example') {
      return deserialize<_i4.Example>(data['data']);
    }
    if (dataClassName == 'LoungePosts') {
      return deserialize<_i5.LoungePosts>(data['data']);
    }
    if (dataClassName == 'LoungePostsComments') {
      return deserialize<_i6.LoungePostsComments>(data['data']);
    }
    if (dataClassName == 'LoungePostsLikes') {
      return deserialize<_i7.LoungePostsLikes>(data['data']);
    }
    if (dataClassName == 'LoungePostsReports') {
      return deserialize<_i8.LoungePostsReports>(data['data']);
    }
    if (dataClassName == 'Messages') {
      return deserialize<_i9.Messages>(data['data']);
    }
    if (dataClassName == 'Products') {
      return deserialize<_i10.Products>(data['data']);
    }
    if (dataClassName == 'ProductsImages') {
      return deserialize<_i11.ProductsImages>(data['data']);
    }
    if (dataClassName == 'ProductsLikes') {
      return deserialize<_i12.ProductsLikes>(data['data']);
    }
    if (dataClassName == 'ProductsReports') {
      return deserialize<_i13.ProductsReports>(data['data']);
    }
    if (dataClassName == 'TermsAndConditions') {
      return deserialize<_i14.TermsAndConditions>(data['data']);
    }
    if (dataClassName == 'UserTerms') {
      return deserialize<_i15.UserTerms>(data['data']);
    }
    if (dataClassName == 'Users') {
      return deserialize<_i16.Users>(data['data']);
    }
    return super.deserializeByClassName(data);
  }
}
