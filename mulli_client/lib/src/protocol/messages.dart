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

abstract class Messages implements _i1.SerializableModel {
  Messages._({
    this.id,
    required this.chatRoomId,
    required this.senderId,
    required this.messageType,
    required this.content,
    required this.isRead,
    required this.isDeleted,
    required this.createdAt,
    required this.updatedAt,
  });

  factory Messages({
    int? id,
    required int chatRoomId,
    required int senderId,
    required String messageType,
    required String content,
    required bool isRead,
    required bool isDeleted,
    required DateTime createdAt,
    required DateTime updatedAt,
  }) = _MessagesImpl;

  factory Messages.fromJson(Map<String, dynamic> jsonSerialization) {
    return Messages(
      id: jsonSerialization['id'] as int?,
      chatRoomId: jsonSerialization['chatRoomId'] as int,
      senderId: jsonSerialization['senderId'] as int,
      messageType: jsonSerialization['messageType'] as String,
      content: jsonSerialization['content'] as String,
      isRead: jsonSerialization['isRead'] as bool,
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

  int chatRoomId;

  int senderId;

  String messageType;

  String content;

  bool isRead;

  bool isDeleted;

  DateTime createdAt;

  DateTime updatedAt;

  Messages copyWith({
    int? id,
    int? chatRoomId,
    int? senderId,
    String? messageType,
    String? content,
    bool? isRead,
    bool? isDeleted,
    DateTime? createdAt,
    DateTime? updatedAt,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      if (id != null) 'id': id,
      'chatRoomId': chatRoomId,
      'senderId': senderId,
      'messageType': messageType,
      'content': content,
      'isRead': isRead,
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

class _MessagesImpl extends Messages {
  _MessagesImpl({
    int? id,
    required int chatRoomId,
    required int senderId,
    required String messageType,
    required String content,
    required bool isRead,
    required bool isDeleted,
    required DateTime createdAt,
    required DateTime updatedAt,
  }) : super._(
          id: id,
          chatRoomId: chatRoomId,
          senderId: senderId,
          messageType: messageType,
          content: content,
          isRead: isRead,
          isDeleted: isDeleted,
          createdAt: createdAt,
          updatedAt: updatedAt,
        );

  @override
  Messages copyWith({
    Object? id = _Undefined,
    int? chatRoomId,
    int? senderId,
    String? messageType,
    String? content,
    bool? isRead,
    bool? isDeleted,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) {
    return Messages(
      id: id is int? ? id : this.id,
      chatRoomId: chatRoomId ?? this.chatRoomId,
      senderId: senderId ?? this.senderId,
      messageType: messageType ?? this.messageType,
      content: content ?? this.content,
      isRead: isRead ?? this.isRead,
      isDeleted: isDeleted ?? this.isDeleted,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
    );
  }
}
