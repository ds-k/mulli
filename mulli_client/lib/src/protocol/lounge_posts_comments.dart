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

abstract class LoungePostsComments implements _i1.SerializableModel {
  LoungePostsComments._({
    this.id,
    required this.userId,
    required this.postId,
    required this.content,
    required this.likesCount,
    required this.reportsCount,
    required this.isDeleted,
    required this.createdAt,
    required this.updatedAt,
  });

  factory LoungePostsComments({
    int? id,
    required int userId,
    required int postId,
    required String content,
    required int likesCount,
    required int reportsCount,
    required bool isDeleted,
    required DateTime createdAt,
    required DateTime updatedAt,
  }) = _LoungePostsCommentsImpl;

  factory LoungePostsComments.fromJson(Map<String, dynamic> jsonSerialization) {
    return LoungePostsComments(
      id: jsonSerialization['id'] as int?,
      userId: jsonSerialization['userId'] as int,
      postId: jsonSerialization['postId'] as int,
      content: jsonSerialization['content'] as String,
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

  int postId;

  String content;

  int likesCount;

  int reportsCount;

  bool isDeleted;

  DateTime createdAt;

  DateTime updatedAt;

  LoungePostsComments copyWith({
    int? id,
    int? userId,
    int? postId,
    String? content,
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
      'postId': postId,
      'content': content,
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

class _LoungePostsCommentsImpl extends LoungePostsComments {
  _LoungePostsCommentsImpl({
    int? id,
    required int userId,
    required int postId,
    required String content,
    required int likesCount,
    required int reportsCount,
    required bool isDeleted,
    required DateTime createdAt,
    required DateTime updatedAt,
  }) : super._(
          id: id,
          userId: userId,
          postId: postId,
          content: content,
          likesCount: likesCount,
          reportsCount: reportsCount,
          isDeleted: isDeleted,
          createdAt: createdAt,
          updatedAt: updatedAt,
        );

  @override
  LoungePostsComments copyWith({
    Object? id = _Undefined,
    int? userId,
    int? postId,
    String? content,
    int? likesCount,
    int? reportsCount,
    bool? isDeleted,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) {
    return LoungePostsComments(
      id: id is int? ? id : this.id,
      userId: userId ?? this.userId,
      postId: postId ?? this.postId,
      content: content ?? this.content,
      likesCount: likesCount ?? this.likesCount,
      reportsCount: reportsCount ?? this.reportsCount,
      isDeleted: isDeleted ?? this.isDeleted,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
    );
  }
}
