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
import 'lounge_posts_comments.dart' as _i2;
import 'lounge_posts_likes.dart' as _i3;
import 'lounge_posts_reports.dart' as _i4;

abstract class LoungePosts implements _i1.SerializableModel {
  LoungePosts._({
    this.id,
    required this.userId,
    required this.content,
    required this.likesCount,
    required this.reportsCount,
    required this.isDeleted,
    required this.createdAt,
    required this.updatedAt,
    this.comments,
    this.likes,
    this.reports,
  });

  factory LoungePosts({
    int? id,
    required int userId,
    required String content,
    required int likesCount,
    required int reportsCount,
    required bool isDeleted,
    required DateTime createdAt,
    required DateTime updatedAt,
    List<_i2.LoungePostsComments>? comments,
    List<_i3.LoungePostsLikes>? likes,
    List<_i4.LoungePostsReports>? reports,
  }) = _LoungePostsImpl;

  factory LoungePosts.fromJson(Map<String, dynamic> jsonSerialization) {
    return LoungePosts(
      id: jsonSerialization['id'] as int?,
      userId: jsonSerialization['userId'] as int,
      content: jsonSerialization['content'] as String,
      likesCount: jsonSerialization['likesCount'] as int,
      reportsCount: jsonSerialization['reportsCount'] as int,
      isDeleted: jsonSerialization['isDeleted'] as bool,
      createdAt:
          _i1.DateTimeJsonExtension.fromJson(jsonSerialization['createdAt']),
      updatedAt:
          _i1.DateTimeJsonExtension.fromJson(jsonSerialization['updatedAt']),
      comments: (jsonSerialization['comments'] as List?)
          ?.map((e) =>
              _i2.LoungePostsComments.fromJson((e as Map<String, dynamic>)))
          .toList(),
      likes: (jsonSerialization['likes'] as List?)
          ?.map(
              (e) => _i3.LoungePostsLikes.fromJson((e as Map<String, dynamic>)))
          .toList(),
      reports: (jsonSerialization['reports'] as List?)
          ?.map((e) =>
              _i4.LoungePostsReports.fromJson((e as Map<String, dynamic>)))
          .toList(),
    );
  }

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  int? id;

  int userId;

  String content;

  int likesCount;

  int reportsCount;

  bool isDeleted;

  DateTime createdAt;

  DateTime updatedAt;

  List<_i2.LoungePostsComments>? comments;

  List<_i3.LoungePostsLikes>? likes;

  List<_i4.LoungePostsReports>? reports;

  LoungePosts copyWith({
    int? id,
    int? userId,
    String? content,
    int? likesCount,
    int? reportsCount,
    bool? isDeleted,
    DateTime? createdAt,
    DateTime? updatedAt,
    List<_i2.LoungePostsComments>? comments,
    List<_i3.LoungePostsLikes>? likes,
    List<_i4.LoungePostsReports>? reports,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      if (id != null) 'id': id,
      'userId': userId,
      'content': content,
      'likesCount': likesCount,
      'reportsCount': reportsCount,
      'isDeleted': isDeleted,
      'createdAt': createdAt.toJson(),
      'updatedAt': updatedAt.toJson(),
      if (comments != null)
        'comments': comments?.toJson(valueToJson: (v) => v.toJson()),
      if (likes != null) 'likes': likes?.toJson(valueToJson: (v) => v.toJson()),
      if (reports != null)
        'reports': reports?.toJson(valueToJson: (v) => v.toJson()),
    };
  }

  @override
  String toString() {
    return _i1.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _LoungePostsImpl extends LoungePosts {
  _LoungePostsImpl({
    int? id,
    required int userId,
    required String content,
    required int likesCount,
    required int reportsCount,
    required bool isDeleted,
    required DateTime createdAt,
    required DateTime updatedAt,
    List<_i2.LoungePostsComments>? comments,
    List<_i3.LoungePostsLikes>? likes,
    List<_i4.LoungePostsReports>? reports,
  }) : super._(
          id: id,
          userId: userId,
          content: content,
          likesCount: likesCount,
          reportsCount: reportsCount,
          isDeleted: isDeleted,
          createdAt: createdAt,
          updatedAt: updatedAt,
          comments: comments,
          likes: likes,
          reports: reports,
        );

  @override
  LoungePosts copyWith({
    Object? id = _Undefined,
    int? userId,
    String? content,
    int? likesCount,
    int? reportsCount,
    bool? isDeleted,
    DateTime? createdAt,
    DateTime? updatedAt,
    Object? comments = _Undefined,
    Object? likes = _Undefined,
    Object? reports = _Undefined,
  }) {
    return LoungePosts(
      id: id is int? ? id : this.id,
      userId: userId ?? this.userId,
      content: content ?? this.content,
      likesCount: likesCount ?? this.likesCount,
      reportsCount: reportsCount ?? this.reportsCount,
      isDeleted: isDeleted ?? this.isDeleted,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
      comments: comments is List<_i2.LoungePostsComments>?
          ? comments
          : this.comments?.map((e0) => e0.copyWith()).toList(),
      likes: likes is List<_i3.LoungePostsLikes>?
          ? likes
          : this.likes?.map((e0) => e0.copyWith()).toList(),
      reports: reports is List<_i4.LoungePostsReports>?
          ? reports
          : this.reports?.map((e0) => e0.copyWith()).toList(),
    );
  }
}
