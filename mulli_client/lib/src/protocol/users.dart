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
    required this.region1,
    required this.region2,
    required this.region3,
    this.region4,
    required this.lat,
    required this.lng,
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
    required String region1,
    required String region2,
    required String region3,
    String? region4,
    required double lat,
    required double lng,
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
      region1: jsonSerialization['region1'] as String,
      region2: jsonSerialization['region2'] as String,
      region3: jsonSerialization['region3'] as String,
      region4: jsonSerialization['region4'] as String?,
      lat: (jsonSerialization['lat'] as num).toDouble(),
      lng: (jsonSerialization['lng'] as num).toDouble(),
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

  String region1;

  String region2;

  String region3;

  String? region4;

  double lat;

  double lng;

  DateTime createdAt;

  DateTime updatedAt;

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
      'region3': region3,
      if (region4 != null) 'region4': region4,
      'lat': lat,
      'lng': lng,
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
    required String region1,
    required String region2,
    required String region3,
    String? region4,
    required double lat,
    required double lng,
    required DateTime createdAt,
    required DateTime updatedAt,
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
    String? region3,
    Object? region4 = _Undefined,
    double? lat,
    double? lng,
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
      region1: region1 ?? this.region1,
      region2: region2 ?? this.region2,
      region3: region3 ?? this.region3,
      region4: region4 is String? ? region4 : this.region4,
      lat: lat ?? this.lat,
      lng: lng ?? this.lng,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
    );
  }
}
