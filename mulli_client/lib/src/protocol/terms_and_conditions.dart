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
import 'user_terms.dart' as _i2;

abstract class TermsAndConditions implements _i1.SerializableModel {
  TermsAndConditions._({
    this.id,
    required this.title,
    required this.description,
    required this.isRequired,
    required this.version,
    required this.createdAt,
    required this.updatedAt,
    this.userTerms,
  });

  factory TermsAndConditions({
    int? id,
    required String title,
    required String description,
    required bool isRequired,
    required int version,
    required DateTime createdAt,
    required DateTime updatedAt,
    List<_i2.UserTerms>? userTerms,
  }) = _TermsAndConditionsImpl;

  factory TermsAndConditions.fromJson(Map<String, dynamic> jsonSerialization) {
    return TermsAndConditions(
      id: jsonSerialization['id'] as int?,
      title: jsonSerialization['title'] as String,
      description: jsonSerialization['description'] as String,
      isRequired: jsonSerialization['isRequired'] as bool,
      version: jsonSerialization['version'] as int,
      createdAt:
          _i1.DateTimeJsonExtension.fromJson(jsonSerialization['createdAt']),
      updatedAt:
          _i1.DateTimeJsonExtension.fromJson(jsonSerialization['updatedAt']),
      userTerms: (jsonSerialization['userTerms'] as List?)
          ?.map((e) => _i2.UserTerms.fromJson((e as Map<String, dynamic>)))
          .toList(),
    );
  }

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  int? id;

  String title;

  String description;

  bool isRequired;

  int version;

  DateTime createdAt;

  DateTime updatedAt;

  List<_i2.UserTerms>? userTerms;

  TermsAndConditions copyWith({
    int? id,
    String? title,
    String? description,
    bool? isRequired,
    int? version,
    DateTime? createdAt,
    DateTime? updatedAt,
    List<_i2.UserTerms>? userTerms,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      if (id != null) 'id': id,
      'title': title,
      'description': description,
      'isRequired': isRequired,
      'version': version,
      'createdAt': createdAt.toJson(),
      'updatedAt': updatedAt.toJson(),
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

class _TermsAndConditionsImpl extends TermsAndConditions {
  _TermsAndConditionsImpl({
    int? id,
    required String title,
    required String description,
    required bool isRequired,
    required int version,
    required DateTime createdAt,
    required DateTime updatedAt,
    List<_i2.UserTerms>? userTerms,
  }) : super._(
          id: id,
          title: title,
          description: description,
          isRequired: isRequired,
          version: version,
          createdAt: createdAt,
          updatedAt: updatedAt,
          userTerms: userTerms,
        );

  @override
  TermsAndConditions copyWith({
    Object? id = _Undefined,
    String? title,
    String? description,
    bool? isRequired,
    int? version,
    DateTime? createdAt,
    DateTime? updatedAt,
    Object? userTerms = _Undefined,
  }) {
    return TermsAndConditions(
      id: id is int? ? id : this.id,
      title: title ?? this.title,
      description: description ?? this.description,
      isRequired: isRequired ?? this.isRequired,
      version: version ?? this.version,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
      userTerms: userTerms is List<_i2.UserTerms>?
          ? userTerms
          : this.userTerms?.map((e0) => e0.copyWith()).toList(),
    );
  }
}
