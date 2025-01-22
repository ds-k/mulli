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

abstract class Users implements _i1.SerializableModel {
  Users._({
    this.id,
    required this.socialId,
    required this.socialType,
    required this.name,
    required this.email,
    required this.userProfileUrl,
    required this.createdAt,
    required this.updatedAt,
  });

  factory Users({
    int? id,
    required String socialId,
    required String socialType,
    required String name,
    required String email,
    required String userProfileUrl,
    required DateTime createdAt,
    required DateTime updatedAt,
  }) = _UsersImpl;

  factory Users.fromJson(Map<String, dynamic> jsonSerialization) {
    return Users(
      id: jsonSerialization['id'] as int?,
      socialId: jsonSerialization['socialId'] as String,
      socialType: jsonSerialization['socialType'] as String,
      name: jsonSerialization['name'] as String,
      email: jsonSerialization['email'] as String,
      userProfileUrl: jsonSerialization['userProfileUrl'] as String,
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

  String socialId;

  String socialType;

  String name;

  String email;

  String userProfileUrl;

  DateTime createdAt;

  DateTime updatedAt;

  Users copyWith({
    int? id,
    String? socialId,
    String? socialType,
    String? name,
    String? email,
    String? userProfileUrl,
    DateTime? createdAt,
    DateTime? updatedAt,
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

class _UsersImpl extends Users {
  _UsersImpl({
    int? id,
    required String socialId,
    required String socialType,
    required String name,
    required String email,
    required String userProfileUrl,
    required DateTime createdAt,
    required DateTime updatedAt,
  }) : super._(
          id: id,
          socialId: socialId,
          socialType: socialType,
          name: name,
          email: email,
          userProfileUrl: userProfileUrl,
          createdAt: createdAt,
          updatedAt: updatedAt,
        );

  @override
  Users copyWith({
    Object? id = _Undefined,
    String? socialId,
    String? socialType,
    String? name,
    String? email,
    String? userProfileUrl,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) {
    return Users(
      id: id is int? ? id : this.id,
      socialId: socialId ?? this.socialId,
      socialType: socialType ?? this.socialType,
      name: name ?? this.name,
      email: email ?? this.email,
      userProfileUrl: userProfileUrl ?? this.userProfileUrl,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
    );
  }
}
