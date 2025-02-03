/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: implementation_imports
// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: non_constant_identifier_names
// ignore_for_file: public_member_api_docs
// ignore_for_file: type_literal_in_constant_pattern
// ignore_for_file: use_super_parameters

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod/serverpod.dart' as _i1;

abstract class Messages implements _i1.TableRow, _i1.ProtocolSerialization {
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

  static final t = MessagesTable();

  static const db = MessagesRepository._();

  @override
  int? id;

  int chatRoomId;

  int senderId;

  String messageType;

  String content;

  bool isRead;

  bool isDeleted;

  DateTime createdAt;

  DateTime updatedAt;

  int? _chatRoomsMessagesChatRoomsId;

  int? _usersMessagesUsersId;

  @override
  _i1.Table get table => t;

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
      if (_chatRoomsMessagesChatRoomsId != null)
        '_chatRoomsMessagesChatRoomsId': _chatRoomsMessagesChatRoomsId,
      if (_usersMessagesUsersId != null)
        '_usersMessagesUsersId': _usersMessagesUsersId,
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
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

  static MessagesInclude include() {
    return MessagesInclude._();
  }

  static MessagesIncludeList includeList({
    _i1.WhereExpressionBuilder<MessagesTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<MessagesTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<MessagesTable>? orderByList,
    MessagesInclude? include,
  }) {
    return MessagesIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(Messages.t),
      orderDescending: orderDescending,
      orderByList: orderByList?.call(Messages.t),
      include: include,
    );
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

class MessagesImplicit extends _MessagesImpl {
  MessagesImplicit._({
    int? id,
    required int chatRoomId,
    required int senderId,
    required String messageType,
    required String content,
    required bool isRead,
    required bool isDeleted,
    required DateTime createdAt,
    required DateTime updatedAt,
    this.$_chatRoomsMessagesChatRoomsId,
    this.$_usersMessagesUsersId,
  }) : super(
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

  factory MessagesImplicit(
    Messages messages, {
    int? $_chatRoomsMessagesChatRoomsId,
    int? $_usersMessagesUsersId,
  }) {
    return MessagesImplicit._(
      id: messages.id,
      chatRoomId: messages.chatRoomId,
      senderId: messages.senderId,
      messageType: messages.messageType,
      content: messages.content,
      isRead: messages.isRead,
      isDeleted: messages.isDeleted,
      createdAt: messages.createdAt,
      updatedAt: messages.updatedAt,
      $_chatRoomsMessagesChatRoomsId: $_chatRoomsMessagesChatRoomsId,
      $_usersMessagesUsersId: $_usersMessagesUsersId,
    );
  }

  int? $_chatRoomsMessagesChatRoomsId;

  int? $_usersMessagesUsersId;

  @override
  Map<String, dynamic> toJson() {
    var jsonMap = super.toJson();
    jsonMap.addAll({
      '_chatRoomsMessagesChatRoomsId': $_chatRoomsMessagesChatRoomsId,
      '_usersMessagesUsersId': $_usersMessagesUsersId
    });
    return jsonMap;
  }
}

class MessagesTable extends _i1.Table {
  MessagesTable({super.tableRelation}) : super(tableName: 'messages') {
    chatRoomId = _i1.ColumnInt(
      'chatRoomId',
      this,
    );
    senderId = _i1.ColumnInt(
      'senderId',
      this,
    );
    messageType = _i1.ColumnString(
      'messageType',
      this,
    );
    content = _i1.ColumnString(
      'content',
      this,
    );
    isRead = _i1.ColumnBool(
      'isRead',
      this,
    );
    isDeleted = _i1.ColumnBool(
      'isDeleted',
      this,
    );
    createdAt = _i1.ColumnDateTime(
      'createdAt',
      this,
    );
    updatedAt = _i1.ColumnDateTime(
      'updatedAt',
      this,
    );
    $_chatRoomsMessagesChatRoomsId = _i1.ColumnInt(
      '_chatRoomsMessagesChatRoomsId',
      this,
    );
    $_usersMessagesUsersId = _i1.ColumnInt(
      '_usersMessagesUsersId',
      this,
    );
  }

  late final _i1.ColumnInt chatRoomId;

  late final _i1.ColumnInt senderId;

  late final _i1.ColumnString messageType;

  late final _i1.ColumnString content;

  late final _i1.ColumnBool isRead;

  late final _i1.ColumnBool isDeleted;

  late final _i1.ColumnDateTime createdAt;

  late final _i1.ColumnDateTime updatedAt;

  late final _i1.ColumnInt $_chatRoomsMessagesChatRoomsId;

  late final _i1.ColumnInt $_usersMessagesUsersId;

  @override
  List<_i1.Column> get columns => [
        id,
        chatRoomId,
        senderId,
        messageType,
        content,
        isRead,
        isDeleted,
        createdAt,
        updatedAt,
        $_chatRoomsMessagesChatRoomsId,
        $_usersMessagesUsersId,
      ];
}

class MessagesInclude extends _i1.IncludeObject {
  MessagesInclude._();

  @override
  Map<String, _i1.Include?> get includes => {};

  @override
  _i1.Table get table => Messages.t;
}

class MessagesIncludeList extends _i1.IncludeList {
  MessagesIncludeList._({
    _i1.WhereExpressionBuilder<MessagesTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderDescending,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(Messages.t);
  }

  @override
  Map<String, _i1.Include?> get includes => include?.includes ?? {};

  @override
  _i1.Table get table => Messages.t;
}

class MessagesRepository {
  const MessagesRepository._();

  Future<List<Messages>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<MessagesTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<MessagesTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<MessagesTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return session.db.find<Messages>(
      where: where?.call(Messages.t),
      orderBy: orderBy?.call(Messages.t),
      orderByList: orderByList?.call(Messages.t),
      orderDescending: orderDescending,
      limit: limit,
      offset: offset,
      transaction: transaction,
    );
  }

  Future<Messages?> findFirstRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<MessagesTable>? where,
    int? offset,
    _i1.OrderByBuilder<MessagesTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<MessagesTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return session.db.findFirstRow<Messages>(
      where: where?.call(Messages.t),
      orderBy: orderBy?.call(Messages.t),
      orderByList: orderByList?.call(Messages.t),
      orderDescending: orderDescending,
      offset: offset,
      transaction: transaction,
    );
  }

  Future<Messages?> findById(
    _i1.Session session,
    int id, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.findById<Messages>(
      id,
      transaction: transaction,
    );
  }

  Future<List<Messages>> insert(
    _i1.Session session,
    List<Messages> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insert<Messages>(
      rows,
      transaction: transaction,
    );
  }

  Future<Messages> insertRow(
    _i1.Session session,
    Messages row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insertRow<Messages>(
      row,
      transaction: transaction,
    );
  }

  Future<List<Messages>> update(
    _i1.Session session,
    List<Messages> rows, {
    _i1.ColumnSelections<MessagesTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.update<Messages>(
      rows,
      columns: columns?.call(Messages.t),
      transaction: transaction,
    );
  }

  Future<Messages> updateRow(
    _i1.Session session,
    Messages row, {
    _i1.ColumnSelections<MessagesTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateRow<Messages>(
      row,
      columns: columns?.call(Messages.t),
      transaction: transaction,
    );
  }

  Future<List<Messages>> delete(
    _i1.Session session,
    List<Messages> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<Messages>(
      rows,
      transaction: transaction,
    );
  }

  Future<Messages> deleteRow(
    _i1.Session session,
    Messages row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteRow<Messages>(
      row,
      transaction: transaction,
    );
  }

  Future<List<Messages>> deleteWhere(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<MessagesTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteWhere<Messages>(
      where: where(Messages.t),
      transaction: transaction,
    );
  }

  Future<int> count(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<MessagesTable>? where,
    int? limit,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<Messages>(
      where: where?.call(Messages.t),
      limit: limit,
      transaction: transaction,
    );
  }
}
