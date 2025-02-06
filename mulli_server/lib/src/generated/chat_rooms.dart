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
import 'messages.dart' as _i2;

abstract class ChatRooms implements _i1.TableRow, _i1.ProtocolSerialization {
  ChatRooms._({
    this.id,
    required this.productId,
    required this.buyerId,
    required this.sellerId,
    required this.isDeleted,
    required this.createdAt,
    required this.updatedAt,
    this.messages,
  });

  factory ChatRooms({
    int? id,
    required int productId,
    required int buyerId,
    required int sellerId,
    required bool isDeleted,
    required DateTime createdAt,
    required DateTime updatedAt,
    List<_i2.Messages>? messages,
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
      messages: (jsonSerialization['messages'] as List?)
          ?.map((e) => _i2.Messages.fromJson((e as Map<String, dynamic>)))
          .toList(),
    );
  }

  static final t = ChatRoomsTable();

  static const db = ChatRoomsRepository._();

  @override
  int? id;

  int productId;

  int buyerId;

  int sellerId;

  bool isDeleted;

  DateTime createdAt;

  DateTime updatedAt;

  List<_i2.Messages>? messages;

  int? _productsChatroomsProductsId;

  int? _usersBuyerchatroomsUsersId;

  int? _usersSellerchatroomsUsersId;

  @override
  _i1.Table get table => t;

  ChatRooms copyWith({
    int? id,
    int? productId,
    int? buyerId,
    int? sellerId,
    bool? isDeleted,
    DateTime? createdAt,
    DateTime? updatedAt,
    List<_i2.Messages>? messages,
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
      if (messages != null)
        'messages': messages?.toJson(valueToJson: (v) => v.toJson()),
      if (_productsChatroomsProductsId != null)
        '_productsChatroomsProductsId': _productsChatroomsProductsId,
      if (_usersBuyerchatroomsUsersId != null)
        '_usersBuyerchatroomsUsersId': _usersBuyerchatroomsUsersId,
      if (_usersSellerchatroomsUsersId != null)
        '_usersSellerchatroomsUsersId': _usersSellerchatroomsUsersId,
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      if (id != null) 'id': id,
      'productId': productId,
      'buyerId': buyerId,
      'sellerId': sellerId,
      'isDeleted': isDeleted,
      'createdAt': createdAt.toJson(),
      'updatedAt': updatedAt.toJson(),
      if (messages != null)
        'messages': messages?.toJson(valueToJson: (v) => v.toJsonForProtocol()),
    };
  }

  static ChatRoomsInclude include({_i2.MessagesIncludeList? messages}) {
    return ChatRoomsInclude._(messages: messages);
  }

  static ChatRoomsIncludeList includeList({
    _i1.WhereExpressionBuilder<ChatRoomsTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<ChatRoomsTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<ChatRoomsTable>? orderByList,
    ChatRoomsInclude? include,
  }) {
    return ChatRoomsIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(ChatRooms.t),
      orderDescending: orderDescending,
      orderByList: orderByList?.call(ChatRooms.t),
      include: include,
    );
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
    List<_i2.Messages>? messages,
  }) : super._(
          id: id,
          productId: productId,
          buyerId: buyerId,
          sellerId: sellerId,
          isDeleted: isDeleted,
          createdAt: createdAt,
          updatedAt: updatedAt,
          messages: messages,
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
    Object? messages = _Undefined,
  }) {
    return ChatRooms(
      id: id is int? ? id : this.id,
      productId: productId ?? this.productId,
      buyerId: buyerId ?? this.buyerId,
      sellerId: sellerId ?? this.sellerId,
      isDeleted: isDeleted ?? this.isDeleted,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
      messages: messages is List<_i2.Messages>?
          ? messages
          : this.messages?.map((e0) => e0.copyWith()).toList(),
    );
  }
}

class ChatRoomsImplicit extends _ChatRoomsImpl {
  ChatRoomsImplicit._({
    int? id,
    required int productId,
    required int buyerId,
    required int sellerId,
    required bool isDeleted,
    required DateTime createdAt,
    required DateTime updatedAt,
    List<_i2.Messages>? messages,
    this.$_productsChatroomsProductsId,
    this.$_usersBuyerchatroomsUsersId,
    this.$_usersSellerchatroomsUsersId,
  }) : super(
          id: id,
          productId: productId,
          buyerId: buyerId,
          sellerId: sellerId,
          isDeleted: isDeleted,
          createdAt: createdAt,
          updatedAt: updatedAt,
          messages: messages,
        );

  factory ChatRoomsImplicit(
    ChatRooms chatRooms, {
    int? $_productsChatroomsProductsId,
    int? $_usersBuyerchatroomsUsersId,
    int? $_usersSellerchatroomsUsersId,
  }) {
    return ChatRoomsImplicit._(
      id: chatRooms.id,
      productId: chatRooms.productId,
      buyerId: chatRooms.buyerId,
      sellerId: chatRooms.sellerId,
      isDeleted: chatRooms.isDeleted,
      createdAt: chatRooms.createdAt,
      updatedAt: chatRooms.updatedAt,
      messages: chatRooms.messages,
      $_productsChatroomsProductsId: $_productsChatroomsProductsId,
      $_usersBuyerchatroomsUsersId: $_usersBuyerchatroomsUsersId,
      $_usersSellerchatroomsUsersId: $_usersSellerchatroomsUsersId,
    );
  }

  int? $_productsChatroomsProductsId;

  int? $_usersBuyerchatroomsUsersId;

  int? $_usersSellerchatroomsUsersId;

  @override
  Map<String, dynamic> toJson() {
    var jsonMap = super.toJson();
    jsonMap.addAll({
      '_productsChatroomsProductsId': $_productsChatroomsProductsId,
      '_usersBuyerchatroomsUsersId': $_usersBuyerchatroomsUsersId,
      '_usersSellerchatroomsUsersId': $_usersSellerchatroomsUsersId
    });
    return jsonMap;
  }
}

class ChatRoomsTable extends _i1.Table {
  ChatRoomsTable({super.tableRelation}) : super(tableName: 'chat_rooms') {
    productId = _i1.ColumnInt(
      'productId',
      this,
    );
    buyerId = _i1.ColumnInt(
      'buyerId',
      this,
    );
    sellerId = _i1.ColumnInt(
      'sellerId',
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
    $_productsChatroomsProductsId = _i1.ColumnInt(
      '_productsChatroomsProductsId',
      this,
    );
    $_usersBuyerchatroomsUsersId = _i1.ColumnInt(
      '_usersBuyerchatroomsUsersId',
      this,
    );
    $_usersSellerchatroomsUsersId = _i1.ColumnInt(
      '_usersSellerchatroomsUsersId',
      this,
    );
  }

  late final _i1.ColumnInt productId;

  late final _i1.ColumnInt buyerId;

  late final _i1.ColumnInt sellerId;

  late final _i1.ColumnBool isDeleted;

  late final _i1.ColumnDateTime createdAt;

  late final _i1.ColumnDateTime updatedAt;

  _i2.MessagesTable? ___messages;

  _i1.ManyRelation<_i2.MessagesTable>? _messages;

  late final _i1.ColumnInt $_productsChatroomsProductsId;

  late final _i1.ColumnInt $_usersBuyerchatroomsUsersId;

  late final _i1.ColumnInt $_usersSellerchatroomsUsersId;

  _i2.MessagesTable get __messages {
    if (___messages != null) return ___messages!;
    ___messages = _i1.createRelationTable(
      relationFieldName: '__messages',
      field: ChatRooms.t.id,
      foreignField: _i2.Messages.t.$_chatRoomsMessagesChatRoomsId,
      tableRelation: tableRelation,
      createTable: (foreignTableRelation) =>
          _i2.MessagesTable(tableRelation: foreignTableRelation),
    );
    return ___messages!;
  }

  _i1.ManyRelation<_i2.MessagesTable> get messages {
    if (_messages != null) return _messages!;
    var relationTable = _i1.createRelationTable(
      relationFieldName: 'messages',
      field: ChatRooms.t.id,
      foreignField: _i2.Messages.t.$_chatRoomsMessagesChatRoomsId,
      tableRelation: tableRelation,
      createTable: (foreignTableRelation) =>
          _i2.MessagesTable(tableRelation: foreignTableRelation),
    );
    _messages = _i1.ManyRelation<_i2.MessagesTable>(
      tableWithRelations: relationTable,
      table: _i2.MessagesTable(
          tableRelation: relationTable.tableRelation!.lastRelation),
    );
    return _messages!;
  }

  @override
  List<_i1.Column> get columns => [
        id,
        productId,
        buyerId,
        sellerId,
        isDeleted,
        createdAt,
        updatedAt,
        $_productsChatroomsProductsId,
        $_usersBuyerchatroomsUsersId,
        $_usersSellerchatroomsUsersId,
      ];

  @override
  _i1.Table? getRelationTable(String relationField) {
    if (relationField == 'messages') {
      return __messages;
    }
    return null;
  }
}

class ChatRoomsInclude extends _i1.IncludeObject {
  ChatRoomsInclude._({_i2.MessagesIncludeList? messages}) {
    _messages = messages;
  }

  _i2.MessagesIncludeList? _messages;

  @override
  Map<String, _i1.Include?> get includes => {'messages': _messages};

  @override
  _i1.Table get table => ChatRooms.t;
}

class ChatRoomsIncludeList extends _i1.IncludeList {
  ChatRoomsIncludeList._({
    _i1.WhereExpressionBuilder<ChatRoomsTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderDescending,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(ChatRooms.t);
  }

  @override
  Map<String, _i1.Include?> get includes => include?.includes ?? {};

  @override
  _i1.Table get table => ChatRooms.t;
}

class ChatRoomsRepository {
  const ChatRoomsRepository._();

  final attach = const ChatRoomsAttachRepository._();

  final attachRow = const ChatRoomsAttachRowRepository._();

  final detach = const ChatRoomsDetachRepository._();

  final detachRow = const ChatRoomsDetachRowRepository._();

  Future<List<ChatRooms>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<ChatRoomsTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<ChatRoomsTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<ChatRoomsTable>? orderByList,
    _i1.Transaction? transaction,
    ChatRoomsInclude? include,
  }) async {
    return session.db.find<ChatRooms>(
      where: where?.call(ChatRooms.t),
      orderBy: orderBy?.call(ChatRooms.t),
      orderByList: orderByList?.call(ChatRooms.t),
      orderDescending: orderDescending,
      limit: limit,
      offset: offset,
      transaction: transaction,
      include: include,
    );
  }

  Future<ChatRooms?> findFirstRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<ChatRoomsTable>? where,
    int? offset,
    _i1.OrderByBuilder<ChatRoomsTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<ChatRoomsTable>? orderByList,
    _i1.Transaction? transaction,
    ChatRoomsInclude? include,
  }) async {
    return session.db.findFirstRow<ChatRooms>(
      where: where?.call(ChatRooms.t),
      orderBy: orderBy?.call(ChatRooms.t),
      orderByList: orderByList?.call(ChatRooms.t),
      orderDescending: orderDescending,
      offset: offset,
      transaction: transaction,
      include: include,
    );
  }

  Future<ChatRooms?> findById(
    _i1.Session session,
    int id, {
    _i1.Transaction? transaction,
    ChatRoomsInclude? include,
  }) async {
    return session.db.findById<ChatRooms>(
      id,
      transaction: transaction,
      include: include,
    );
  }

  Future<List<ChatRooms>> insert(
    _i1.Session session,
    List<ChatRooms> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insert<ChatRooms>(
      rows,
      transaction: transaction,
    );
  }

  Future<ChatRooms> insertRow(
    _i1.Session session,
    ChatRooms row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insertRow<ChatRooms>(
      row,
      transaction: transaction,
    );
  }

  Future<List<ChatRooms>> update(
    _i1.Session session,
    List<ChatRooms> rows, {
    _i1.ColumnSelections<ChatRoomsTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.update<ChatRooms>(
      rows,
      columns: columns?.call(ChatRooms.t),
      transaction: transaction,
    );
  }

  Future<ChatRooms> updateRow(
    _i1.Session session,
    ChatRooms row, {
    _i1.ColumnSelections<ChatRoomsTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateRow<ChatRooms>(
      row,
      columns: columns?.call(ChatRooms.t),
      transaction: transaction,
    );
  }

  Future<List<ChatRooms>> delete(
    _i1.Session session,
    List<ChatRooms> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<ChatRooms>(
      rows,
      transaction: transaction,
    );
  }

  Future<ChatRooms> deleteRow(
    _i1.Session session,
    ChatRooms row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteRow<ChatRooms>(
      row,
      transaction: transaction,
    );
  }

  Future<List<ChatRooms>> deleteWhere(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<ChatRoomsTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteWhere<ChatRooms>(
      where: where(ChatRooms.t),
      transaction: transaction,
    );
  }

  Future<int> count(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<ChatRoomsTable>? where,
    int? limit,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<ChatRooms>(
      where: where?.call(ChatRooms.t),
      limit: limit,
      transaction: transaction,
    );
  }
}

class ChatRoomsAttachRepository {
  const ChatRoomsAttachRepository._();

  Future<void> messages(
    _i1.Session session,
    ChatRooms chatRooms,
    List<_i2.Messages> messages, {
    _i1.Transaction? transaction,
  }) async {
    if (messages.any((e) => e.id == null)) {
      throw ArgumentError.notNull('messages.id');
    }
    if (chatRooms.id == null) {
      throw ArgumentError.notNull('chatRooms.id');
    }

    var $messages = messages
        .map((e) => _i2.MessagesImplicit(
              e,
              $_chatRoomsMessagesChatRoomsId: chatRooms.id,
            ))
        .toList();
    await session.db.update<_i2.Messages>(
      $messages,
      columns: [_i2.Messages.t.$_chatRoomsMessagesChatRoomsId],
      transaction: transaction,
    );
  }
}

class ChatRoomsAttachRowRepository {
  const ChatRoomsAttachRowRepository._();

  Future<void> messages(
    _i1.Session session,
    ChatRooms chatRooms,
    _i2.Messages messages, {
    _i1.Transaction? transaction,
  }) async {
    if (messages.id == null) {
      throw ArgumentError.notNull('messages.id');
    }
    if (chatRooms.id == null) {
      throw ArgumentError.notNull('chatRooms.id');
    }

    var $messages = _i2.MessagesImplicit(
      messages,
      $_chatRoomsMessagesChatRoomsId: chatRooms.id,
    );
    await session.db.updateRow<_i2.Messages>(
      $messages,
      columns: [_i2.Messages.t.$_chatRoomsMessagesChatRoomsId],
      transaction: transaction,
    );
  }
}

class ChatRoomsDetachRepository {
  const ChatRoomsDetachRepository._();

  Future<void> messages(
    _i1.Session session,
    List<_i2.Messages> messages, {
    _i1.Transaction? transaction,
  }) async {
    if (messages.any((e) => e.id == null)) {
      throw ArgumentError.notNull('messages.id');
    }

    var $messages = messages
        .map((e) => _i2.MessagesImplicit(
              e,
              $_chatRoomsMessagesChatRoomsId: null,
            ))
        .toList();
    await session.db.update<_i2.Messages>(
      $messages,
      columns: [_i2.Messages.t.$_chatRoomsMessagesChatRoomsId],
      transaction: transaction,
    );
  }
}

class ChatRoomsDetachRowRepository {
  const ChatRoomsDetachRowRepository._();

  Future<void> messages(
    _i1.Session session,
    _i2.Messages messages, {
    _i1.Transaction? transaction,
  }) async {
    if (messages.id == null) {
      throw ArgumentError.notNull('messages.id');
    }

    var $messages = _i2.MessagesImplicit(
      messages,
      $_chatRoomsMessagesChatRoomsId: null,
    );
    await session.db.updateRow<_i2.Messages>(
      $messages,
      columns: [_i2.Messages.t.$_chatRoomsMessagesChatRoomsId],
      transaction: transaction,
    );
  }
}
