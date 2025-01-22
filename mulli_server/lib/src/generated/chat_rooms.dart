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

abstract class ChatRooms implements _i1.TableRow, _i1.ProtocolSerialization {
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
  Map<String, dynamic> toJsonForProtocol() {
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

  static ChatRoomsInclude include() {
    return ChatRoomsInclude._();
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
  }

  late final _i1.ColumnInt productId;

  late final _i1.ColumnInt buyerId;

  late final _i1.ColumnInt sellerId;

  late final _i1.ColumnBool isDeleted;

  late final _i1.ColumnDateTime createdAt;

  late final _i1.ColumnDateTime updatedAt;

  @override
  List<_i1.Column> get columns => [
        id,
        productId,
        buyerId,
        sellerId,
        isDeleted,
        createdAt,
        updatedAt,
      ];
}

class ChatRoomsInclude extends _i1.IncludeObject {
  ChatRoomsInclude._();

  @override
  Map<String, _i1.Include?> get includes => {};

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

  Future<List<ChatRooms>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<ChatRoomsTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<ChatRoomsTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<ChatRoomsTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return session.db.find<ChatRooms>(
      where: where?.call(ChatRooms.t),
      orderBy: orderBy?.call(ChatRooms.t),
      orderByList: orderByList?.call(ChatRooms.t),
      orderDescending: orderDescending,
      limit: limit,
      offset: offset,
      transaction: transaction,
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
  }) async {
    return session.db.findFirstRow<ChatRooms>(
      where: where?.call(ChatRooms.t),
      orderBy: orderBy?.call(ChatRooms.t),
      orderByList: orderByList?.call(ChatRooms.t),
      orderDescending: orderDescending,
      offset: offset,
      transaction: transaction,
    );
  }

  Future<ChatRooms?> findById(
    _i1.Session session,
    int id, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.findById<ChatRooms>(
      id,
      transaction: transaction,
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
