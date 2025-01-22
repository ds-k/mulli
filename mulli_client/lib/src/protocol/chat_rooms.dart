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

abstract class ChatRooms implements _i1.SerializableModel {
  ChatRooms._({
    this.id,
    required this.productId,
    required this.buyerId,
    required this.sellerId,
    required this.isDeleted,
    required this.createdAt,
    required this.updatedAt,
  });

  factory ChatRooms({
    int? id,
    required int productId,
    required int buyerId,
    required int sellerId,
    required bool isDeleted,
    required DateTime createdAt,
    required DateTime updatedAt,
  }) = _ChatRoomsImpl;

  factory ChatRooms.fromJson(Map<String, dynamic> jsonSerialization) {
    return ChatRooms(
      id: jsonSerialization['id'] as int?,
      productId: jsonSerialization['productId'] as int,
      buyerId: jsonSerialization['buyerId'] as int,
      sellerId: jsonSerialization['sellerId'] as int,
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

  int productId;

  int buyerId;

  int sellerId;

  bool isDeleted;

  DateTime createdAt;

  DateTime updatedAt;

  ChatRooms copyWith({
    int? id,
    int? productId,
    int? buyerId,
    int? sellerId,
    bool? isDeleted,
    DateTime? createdAt,
    DateTime? updatedAt,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      if (id != null) 'id': id,
      'productId': productId,
      'buyerId': buyerId,
      'sellerId': sellerId,
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

class _ChatRoomsImpl extends ChatRooms {
  _ChatRoomsImpl({
    int? id,
    required int productId,
    required int buyerId,
    required int sellerId,
    required bool isDeleted,
    required DateTime createdAt,
    required DateTime updatedAt,
  }) : super._(
          id: id,
          productId: productId,
          buyerId: buyerId,
          sellerId: sellerId,
          isDeleted: isDeleted,
          createdAt: createdAt,
          updatedAt: updatedAt,
        );

  @override
  ChatRooms copyWith({
    Object? id = _Undefined,
    int? productId,
    int? buyerId,
    int? sellerId,
    bool? isDeleted,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) {
    return ChatRooms(
      id: id is int? ? id : this.id,
      productId: productId ?? this.productId,
      buyerId: buyerId ?? this.buyerId,
      sellerId: sellerId ?? this.sellerId,
      isDeleted: isDeleted ?? this.isDeleted,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
    );
  }
}
