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

abstract class UserTerms implements _i1.SerializableModel {
  UserTerms._({
    this.id,
    required this.userId,
    required this.termId,
    required this.isAgreed,
    required this.agreedAt,
    required this.createdAt,
  });

  factory UserTerms({
    int? id,
    required int userId,
    required int termId,
    required bool isAgreed,
    required DateTime agreedAt,
    required DateTime createdAt,
  }) = _UserTermsImpl;

  factory UserTerms.fromJson(Map<String, dynamic> jsonSerialization) {
    return UserTerms(
      id: jsonSerialization['id'] as int?,
      userId: jsonSerialization['userId'] as int,
      termId: jsonSerialization['termId'] as int,
      isAgreed: jsonSerialization['isAgreed'] as bool,
      agreedAt:
          _i1.DateTimeJsonExtension.fromJson(jsonSerialization['agreedAt']),
      createdAt:
          _i1.DateTimeJsonExtension.fromJson(jsonSerialization['createdAt']),
    );
  }

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  int? id;

  int userId;

  int termId;

  bool isAgreed;

  DateTime agreedAt;

  DateTime createdAt;

  UserTerms copyWith({
    int? id,
    int? userId,
    int? termId,
    bool? isAgreed,
    DateTime? agreedAt,
    DateTime? createdAt,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      if (id != null) 'id': id,
      'userId': userId,
      'termId': termId,
      'isAgreed': isAgreed,
      'agreedAt': agreedAt.toJson(),
      'createdAt': createdAt.toJson(),
    };
  }

  @override
  String toString() {
    return _i1.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _UserTermsImpl extends UserTerms {
  _UserTermsImpl({
    int? id,
    required int userId,
    required int termId,
    required bool isAgreed,
    required DateTime agreedAt,
    required DateTime createdAt,
  }) : super._(
          id: id,
          userId: userId,
          termId: termId,
          isAgreed: isAgreed,
          agreedAt: agreedAt,
          createdAt: createdAt,
        );

  @override
  UserTerms copyWith({
    Object? id = _Undefined,
    int? userId,
    int? termId,
    bool? isAgreed,
    DateTime? agreedAt,
    DateTime? createdAt,
  }) {
    return UserTerms(
      id: id is int? ? id : this.id,
      userId: userId ?? this.userId,
      termId: termId ?? this.termId,
      isAgreed: isAgreed ?? this.isAgreed,
      agreedAt: agreedAt ?? this.agreedAt,
      createdAt: createdAt ?? this.createdAt,
    );
  }
}
