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
import 'package:serverpod/protocol.dart' as _i2;
import 'brands.dart' as _i3;
import 'chat_rooms.dart' as _i4;
import 'example.dart' as _i5;
import 'lounge_posts.dart' as _i6;
import 'lounge_posts_comments.dart' as _i7;
import 'lounge_posts_likes.dart' as _i8;
import 'lounge_posts_reports.dart' as _i9;
import 'messages.dart' as _i10;
import 'products.dart' as _i11;
import 'products_images.dart' as _i12;
import 'products_likes.dart' as _i13;
import 'products_reports.dart' as _i14;
import 'terms_and_conditions.dart' as _i15;
import 'user_terms.dart' as _i16;
import 'users.dart' as _i17;
import 'package:mulli_server/src/generated/brands.dart' as _i18;
import 'package:mulli_server/src/generated/products.dart' as _i19;
import 'package:mulli_server/src/generated/users.dart' as _i20;
export 'brands.dart';
export 'chat_rooms.dart';
export 'example.dart';
export 'lounge_posts.dart';
export 'lounge_posts_comments.dart';
export 'lounge_posts_likes.dart';
export 'lounge_posts_reports.dart';
export 'messages.dart';
export 'products.dart';
export 'products_images.dart';
export 'products_likes.dart';
export 'products_reports.dart';
export 'terms_and_conditions.dart';
export 'user_terms.dart';
export 'users.dart';

class Protocol extends _i1.SerializationManagerServer {
  Protocol._();

  factory Protocol() => _instance;

  static final Protocol _instance = Protocol._();

  static final List<_i2.TableDefinition> targetTableDefinitions = [
    _i2.TableDefinition(
      name: 'brands',
      dartName: 'Brands',
      schema: 'public',
      module: 'mulli',
      columns: [
        _i2.ColumnDefinition(
          name: 'id',
          columnType: _i2.ColumnType.bigint,
          isNullable: false,
          dartType: 'int?',
          columnDefault: 'nextval(\'brands_id_seq\'::regclass)',
        ),
        _i2.ColumnDefinition(
          name: 'name',
          columnType: _i2.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _i2.ColumnDefinition(
          name: 'englishName',
          columnType: _i2.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _i2.ColumnDefinition(
          name: 'logoImageUrl',
          columnType: _i2.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _i2.ColumnDefinition(
          name: 'createdAt',
          columnType: _i2.ColumnType.timestampWithoutTimeZone,
          isNullable: false,
          dartType: 'DateTime',
        ),
        _i2.ColumnDefinition(
          name: 'updatedAt',
          columnType: _i2.ColumnType.timestampWithoutTimeZone,
          isNullable: false,
          dartType: 'DateTime',
        ),
      ],
      foreignKeys: [],
      indexes: [
        _i2.IndexDefinition(
          indexName: 'brands_pkey',
          tableSpace: null,
          elements: [
            _i2.IndexElementDefinition(
              type: _i2.IndexElementDefinitionType.column,
              definition: 'id',
            )
          ],
          type: 'btree',
          isUnique: true,
          isPrimary: true,
        )
      ],
      managed: true,
    ),
    _i2.TableDefinition(
      name: 'chat_rooms',
      dartName: 'ChatRooms',
      schema: 'public',
      module: 'mulli',
      columns: [
        _i2.ColumnDefinition(
          name: 'id',
          columnType: _i2.ColumnType.bigint,
          isNullable: false,
          dartType: 'int?',
          columnDefault: 'nextval(\'chat_rooms_id_seq\'::regclass)',
        ),
        _i2.ColumnDefinition(
          name: 'productId',
          columnType: _i2.ColumnType.bigint,
          isNullable: false,
          dartType: 'int',
        ),
        _i2.ColumnDefinition(
          name: 'buyerId',
          columnType: _i2.ColumnType.bigint,
          isNullable: false,
          dartType: 'int',
        ),
        _i2.ColumnDefinition(
          name: 'sellerId',
          columnType: _i2.ColumnType.bigint,
          isNullable: false,
          dartType: 'int',
        ),
        _i2.ColumnDefinition(
          name: 'isDeleted',
          columnType: _i2.ColumnType.boolean,
          isNullable: false,
          dartType: 'bool',
        ),
        _i2.ColumnDefinition(
          name: 'createdAt',
          columnType: _i2.ColumnType.timestampWithoutTimeZone,
          isNullable: false,
          dartType: 'DateTime',
        ),
        _i2.ColumnDefinition(
          name: 'updatedAt',
          columnType: _i2.ColumnType.timestampWithoutTimeZone,
          isNullable: false,
          dartType: 'DateTime',
        ),
        _i2.ColumnDefinition(
          name: '_productsChatroomsProductsId',
          columnType: _i2.ColumnType.bigint,
          isNullable: true,
          dartType: 'int?',
        ),
        _i2.ColumnDefinition(
          name: '_usersBuyerchatroomsUsersId',
          columnType: _i2.ColumnType.bigint,
          isNullable: true,
          dartType: 'int?',
        ),
        _i2.ColumnDefinition(
          name: '_usersSellerchatroomsUsersId',
          columnType: _i2.ColumnType.bigint,
          isNullable: true,
          dartType: 'int?',
        ),
      ],
      foreignKeys: [
        _i2.ForeignKeyDefinition(
          constraintName: 'chat_rooms_fk_0',
          columns: ['_productsChatroomsProductsId'],
          referenceTable: 'products',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _i2.ForeignKeyAction.noAction,
          onDelete: _i2.ForeignKeyAction.noAction,
          matchType: null,
        ),
        _i2.ForeignKeyDefinition(
          constraintName: 'chat_rooms_fk_1',
          columns: ['_usersBuyerchatroomsUsersId'],
          referenceTable: 'users',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _i2.ForeignKeyAction.noAction,
          onDelete: _i2.ForeignKeyAction.noAction,
          matchType: null,
        ),
        _i2.ForeignKeyDefinition(
          constraintName: 'chat_rooms_fk_2',
          columns: ['_usersSellerchatroomsUsersId'],
          referenceTable: 'users',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _i2.ForeignKeyAction.noAction,
          onDelete: _i2.ForeignKeyAction.noAction,
          matchType: null,
        ),
      ],
      indexes: [
        _i2.IndexDefinition(
          indexName: 'chat_rooms_pkey',
          tableSpace: null,
          elements: [
            _i2.IndexElementDefinition(
              type: _i2.IndexElementDefinitionType.column,
              definition: 'id',
            )
          ],
          type: 'btree',
          isUnique: true,
          isPrimary: true,
        )
      ],
      managed: true,
    ),
    _i2.TableDefinition(
      name: 'lounge_posts',
      dartName: 'LoungePosts',
      schema: 'public',
      module: 'mulli',
      columns: [
        _i2.ColumnDefinition(
          name: 'id',
          columnType: _i2.ColumnType.bigint,
          isNullable: false,
          dartType: 'int?',
          columnDefault: 'nextval(\'lounge_posts_id_seq\'::regclass)',
        ),
        _i2.ColumnDefinition(
          name: 'userId',
          columnType: _i2.ColumnType.bigint,
          isNullable: false,
          dartType: 'int',
        ),
        _i2.ColumnDefinition(
          name: 'content',
          columnType: _i2.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _i2.ColumnDefinition(
          name: 'likesCount',
          columnType: _i2.ColumnType.bigint,
          isNullable: false,
          dartType: 'int',
        ),
        _i2.ColumnDefinition(
          name: 'reportsCount',
          columnType: _i2.ColumnType.bigint,
          isNullable: false,
          dartType: 'int',
        ),
        _i2.ColumnDefinition(
          name: 'isDeleted',
          columnType: _i2.ColumnType.boolean,
          isNullable: false,
          dartType: 'bool',
        ),
        _i2.ColumnDefinition(
          name: 'createdAt',
          columnType: _i2.ColumnType.timestampWithoutTimeZone,
          isNullable: false,
          dartType: 'DateTime',
        ),
        _i2.ColumnDefinition(
          name: 'updatedAt',
          columnType: _i2.ColumnType.timestampWithoutTimeZone,
          isNullable: false,
          dartType: 'DateTime',
        ),
        _i2.ColumnDefinition(
          name: '_usersLoungepostsUsersId',
          columnType: _i2.ColumnType.bigint,
          isNullable: true,
          dartType: 'int?',
        ),
      ],
      foreignKeys: [
        _i2.ForeignKeyDefinition(
          constraintName: 'lounge_posts_fk_0',
          columns: ['_usersLoungepostsUsersId'],
          referenceTable: 'users',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _i2.ForeignKeyAction.noAction,
          onDelete: _i2.ForeignKeyAction.noAction,
          matchType: null,
        )
      ],
      indexes: [
        _i2.IndexDefinition(
          indexName: 'lounge_posts_pkey',
          tableSpace: null,
          elements: [
            _i2.IndexElementDefinition(
              type: _i2.IndexElementDefinitionType.column,
              definition: 'id',
            )
          ],
          type: 'btree',
          isUnique: true,
          isPrimary: true,
        )
      ],
      managed: true,
    ),
    _i2.TableDefinition(
      name: 'lounge_posts_comments',
      dartName: 'LoungePostsComments',
      schema: 'public',
      module: 'mulli',
      columns: [
        _i2.ColumnDefinition(
          name: 'id',
          columnType: _i2.ColumnType.bigint,
          isNullable: false,
          dartType: 'int?',
          columnDefault: 'nextval(\'lounge_posts_comments_id_seq\'::regclass)',
        ),
        _i2.ColumnDefinition(
          name: 'userId',
          columnType: _i2.ColumnType.bigint,
          isNullable: false,
          dartType: 'int',
        ),
        _i2.ColumnDefinition(
          name: 'postId',
          columnType: _i2.ColumnType.bigint,
          isNullable: false,
          dartType: 'int',
        ),
        _i2.ColumnDefinition(
          name: 'content',
          columnType: _i2.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _i2.ColumnDefinition(
          name: 'likesCount',
          columnType: _i2.ColumnType.bigint,
          isNullable: false,
          dartType: 'int',
        ),
        _i2.ColumnDefinition(
          name: 'reportsCount',
          columnType: _i2.ColumnType.bigint,
          isNullable: false,
          dartType: 'int',
        ),
        _i2.ColumnDefinition(
          name: 'isDeleted',
          columnType: _i2.ColumnType.boolean,
          isNullable: false,
          dartType: 'bool',
        ),
        _i2.ColumnDefinition(
          name: 'createdAt',
          columnType: _i2.ColumnType.timestampWithoutTimeZone,
          isNullable: false,
          dartType: 'DateTime',
        ),
        _i2.ColumnDefinition(
          name: 'updatedAt',
          columnType: _i2.ColumnType.timestampWithoutTimeZone,
          isNullable: false,
          dartType: 'DateTime',
        ),
        _i2.ColumnDefinition(
          name: '_loungePostsCommentsLoungePostsId',
          columnType: _i2.ColumnType.bigint,
          isNullable: true,
          dartType: 'int?',
        ),
        _i2.ColumnDefinition(
          name: '_usersLoungecommentsUsersId',
          columnType: _i2.ColumnType.bigint,
          isNullable: true,
          dartType: 'int?',
        ),
      ],
      foreignKeys: [
        _i2.ForeignKeyDefinition(
          constraintName: 'lounge_posts_comments_fk_0',
          columns: ['_loungePostsCommentsLoungePostsId'],
          referenceTable: 'lounge_posts',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _i2.ForeignKeyAction.noAction,
          onDelete: _i2.ForeignKeyAction.noAction,
          matchType: null,
        ),
        _i2.ForeignKeyDefinition(
          constraintName: 'lounge_posts_comments_fk_1',
          columns: ['_usersLoungecommentsUsersId'],
          referenceTable: 'users',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _i2.ForeignKeyAction.noAction,
          onDelete: _i2.ForeignKeyAction.noAction,
          matchType: null,
        ),
      ],
      indexes: [
        _i2.IndexDefinition(
          indexName: 'lounge_posts_comments_pkey',
          tableSpace: null,
          elements: [
            _i2.IndexElementDefinition(
              type: _i2.IndexElementDefinitionType.column,
              definition: 'id',
            )
          ],
          type: 'btree',
          isUnique: true,
          isPrimary: true,
        )
      ],
      managed: true,
    ),
    _i2.TableDefinition(
      name: 'lounge_posts_likes',
      dartName: 'LoungePostsLikes',
      schema: 'public',
      module: 'mulli',
      columns: [
        _i2.ColumnDefinition(
          name: 'id',
          columnType: _i2.ColumnType.bigint,
          isNullable: false,
          dartType: 'int?',
          columnDefault: 'nextval(\'lounge_posts_likes_id_seq\'::regclass)',
        ),
        _i2.ColumnDefinition(
          name: 'postId',
          columnType: _i2.ColumnType.bigint,
          isNullable: false,
          dartType: 'int',
        ),
        _i2.ColumnDefinition(
          name: 'userId',
          columnType: _i2.ColumnType.bigint,
          isNullable: false,
          dartType: 'int',
        ),
        _i2.ColumnDefinition(
          name: 'isDeleted',
          columnType: _i2.ColumnType.boolean,
          isNullable: false,
          dartType: 'bool',
        ),
        _i2.ColumnDefinition(
          name: 'createdAt',
          columnType: _i2.ColumnType.timestampWithoutTimeZone,
          isNullable: false,
          dartType: 'DateTime',
        ),
        _i2.ColumnDefinition(
          name: 'updatedAt',
          columnType: _i2.ColumnType.timestampWithoutTimeZone,
          isNullable: false,
          dartType: 'DateTime',
        ),
        _i2.ColumnDefinition(
          name: '_loungePostsLikesLoungePostsId',
          columnType: _i2.ColumnType.bigint,
          isNullable: true,
          dartType: 'int?',
        ),
        _i2.ColumnDefinition(
          name: '_usersPostlikesUsersId',
          columnType: _i2.ColumnType.bigint,
          isNullable: true,
          dartType: 'int?',
        ),
      ],
      foreignKeys: [
        _i2.ForeignKeyDefinition(
          constraintName: 'lounge_posts_likes_fk_0',
          columns: ['_loungePostsLikesLoungePostsId'],
          referenceTable: 'lounge_posts',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _i2.ForeignKeyAction.noAction,
          onDelete: _i2.ForeignKeyAction.noAction,
          matchType: null,
        ),
        _i2.ForeignKeyDefinition(
          constraintName: 'lounge_posts_likes_fk_1',
          columns: ['_usersPostlikesUsersId'],
          referenceTable: 'users',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _i2.ForeignKeyAction.noAction,
          onDelete: _i2.ForeignKeyAction.noAction,
          matchType: null,
        ),
      ],
      indexes: [
        _i2.IndexDefinition(
          indexName: 'lounge_posts_likes_pkey',
          tableSpace: null,
          elements: [
            _i2.IndexElementDefinition(
              type: _i2.IndexElementDefinitionType.column,
              definition: 'id',
            )
          ],
          type: 'btree',
          isUnique: true,
          isPrimary: true,
        )
      ],
      managed: true,
    ),
    _i2.TableDefinition(
      name: 'lounge_posts_reports',
      dartName: 'LoungePostsReports',
      schema: 'public',
      module: 'mulli',
      columns: [
        _i2.ColumnDefinition(
          name: 'id',
          columnType: _i2.ColumnType.bigint,
          isNullable: false,
          dartType: 'int?',
          columnDefault: 'nextval(\'lounge_posts_reports_id_seq\'::regclass)',
        ),
        _i2.ColumnDefinition(
          name: 'userId',
          columnType: _i2.ColumnType.bigint,
          isNullable: false,
          dartType: 'int',
        ),
        _i2.ColumnDefinition(
          name: 'postId',
          columnType: _i2.ColumnType.bigint,
          isNullable: false,
          dartType: 'int',
        ),
        _i2.ColumnDefinition(
          name: 'reason',
          columnType: _i2.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _i2.ColumnDefinition(
          name: 'createdAt',
          columnType: _i2.ColumnType.timestampWithoutTimeZone,
          isNullable: false,
          dartType: 'DateTime',
        ),
        _i2.ColumnDefinition(
          name: 'updatedAt',
          columnType: _i2.ColumnType.timestampWithoutTimeZone,
          isNullable: false,
          dartType: 'DateTime',
        ),
        _i2.ColumnDefinition(
          name: '_loungePostsReportsLoungePostsId',
          columnType: _i2.ColumnType.bigint,
          isNullable: true,
          dartType: 'int?',
        ),
        _i2.ColumnDefinition(
          name: '_usersPostreportsUsersId',
          columnType: _i2.ColumnType.bigint,
          isNullable: true,
          dartType: 'int?',
        ),
      ],
      foreignKeys: [
        _i2.ForeignKeyDefinition(
          constraintName: 'lounge_posts_reports_fk_0',
          columns: ['_loungePostsReportsLoungePostsId'],
          referenceTable: 'lounge_posts',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _i2.ForeignKeyAction.noAction,
          onDelete: _i2.ForeignKeyAction.noAction,
          matchType: null,
        ),
        _i2.ForeignKeyDefinition(
          constraintName: 'lounge_posts_reports_fk_1',
          columns: ['_usersPostreportsUsersId'],
          referenceTable: 'users',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _i2.ForeignKeyAction.noAction,
          onDelete: _i2.ForeignKeyAction.noAction,
          matchType: null,
        ),
      ],
      indexes: [
        _i2.IndexDefinition(
          indexName: 'lounge_posts_reports_pkey',
          tableSpace: null,
          elements: [
            _i2.IndexElementDefinition(
              type: _i2.IndexElementDefinitionType.column,
              definition: 'id',
            )
          ],
          type: 'btree',
          isUnique: true,
          isPrimary: true,
        )
      ],
      managed: true,
    ),
    _i2.TableDefinition(
      name: 'messages',
      dartName: 'Messages',
      schema: 'public',
      module: 'mulli',
      columns: [
        _i2.ColumnDefinition(
          name: 'id',
          columnType: _i2.ColumnType.bigint,
          isNullable: false,
          dartType: 'int?',
          columnDefault: 'nextval(\'messages_id_seq\'::regclass)',
        ),
        _i2.ColumnDefinition(
          name: 'chatRoomId',
          columnType: _i2.ColumnType.bigint,
          isNullable: false,
          dartType: 'int',
        ),
        _i2.ColumnDefinition(
          name: 'senderId',
          columnType: _i2.ColumnType.bigint,
          isNullable: false,
          dartType: 'int',
        ),
        _i2.ColumnDefinition(
          name: 'messageType',
          columnType: _i2.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _i2.ColumnDefinition(
          name: 'content',
          columnType: _i2.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _i2.ColumnDefinition(
          name: 'isRead',
          columnType: _i2.ColumnType.boolean,
          isNullable: false,
          dartType: 'bool',
        ),
        _i2.ColumnDefinition(
          name: 'isDeleted',
          columnType: _i2.ColumnType.boolean,
          isNullable: false,
          dartType: 'bool',
        ),
        _i2.ColumnDefinition(
          name: 'createdAt',
          columnType: _i2.ColumnType.timestampWithoutTimeZone,
          isNullable: false,
          dartType: 'DateTime',
        ),
        _i2.ColumnDefinition(
          name: 'updatedAt',
          columnType: _i2.ColumnType.timestampWithoutTimeZone,
          isNullable: false,
          dartType: 'DateTime',
        ),
        _i2.ColumnDefinition(
          name: '_chatRoomsMessagesChatRoomsId',
          columnType: _i2.ColumnType.bigint,
          isNullable: true,
          dartType: 'int?',
        ),
        _i2.ColumnDefinition(
          name: '_usersMessagesUsersId',
          columnType: _i2.ColumnType.bigint,
          isNullable: true,
          dartType: 'int?',
        ),
      ],
      foreignKeys: [
        _i2.ForeignKeyDefinition(
          constraintName: 'messages_fk_0',
          columns: ['_chatRoomsMessagesChatRoomsId'],
          referenceTable: 'chat_rooms',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _i2.ForeignKeyAction.noAction,
          onDelete: _i2.ForeignKeyAction.noAction,
          matchType: null,
        ),
        _i2.ForeignKeyDefinition(
          constraintName: 'messages_fk_1',
          columns: ['_usersMessagesUsersId'],
          referenceTable: 'users',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _i2.ForeignKeyAction.noAction,
          onDelete: _i2.ForeignKeyAction.noAction,
          matchType: null,
        ),
      ],
      indexes: [
        _i2.IndexDefinition(
          indexName: 'messages_pkey',
          tableSpace: null,
          elements: [
            _i2.IndexElementDefinition(
              type: _i2.IndexElementDefinitionType.column,
              definition: 'id',
            )
          ],
          type: 'btree',
          isUnique: true,
          isPrimary: true,
        )
      ],
      managed: true,
    ),
    _i2.TableDefinition(
      name: 'products',
      dartName: 'Products',
      schema: 'public',
      module: 'mulli',
      columns: [
        _i2.ColumnDefinition(
          name: 'id',
          columnType: _i2.ColumnType.bigint,
          isNullable: false,
          dartType: 'int?',
          columnDefault: 'nextval(\'products_id_seq\'::regclass)',
        ),
        _i2.ColumnDefinition(
          name: 'userId',
          columnType: _i2.ColumnType.bigint,
          isNullable: false,
          dartType: 'int',
        ),
        _i2.ColumnDefinition(
          name: 'title',
          columnType: _i2.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _i2.ColumnDefinition(
          name: 'description',
          columnType: _i2.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _i2.ColumnDefinition(
          name: 'price',
          columnType: _i2.ColumnType.doublePrecision,
          isNullable: false,
          dartType: 'double',
        ),
        _i2.ColumnDefinition(
          name: 'brandId',
          columnType: _i2.ColumnType.bigint,
          isNullable: false,
          dartType: 'int',
        ),
        _i2.ColumnDefinition(
          name: 'clubType',
          columnType: _i2.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _i2.ColumnDefinition(
          name: 'shaftType',
          columnType: _i2.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _i2.ColumnDefinition(
          name: 'flexType',
          columnType: _i2.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _i2.ColumnDefinition(
          name: 'year',
          columnType: _i2.ColumnType.bigint,
          isNullable: false,
          dartType: 'int',
        ),
        _i2.ColumnDefinition(
          name: 'region1',
          columnType: _i2.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _i2.ColumnDefinition(
          name: 'region2',
          columnType: _i2.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _i2.ColumnDefinition(
          name: 'region3',
          columnType: _i2.ColumnType.text,
          isNullable: true,
          dartType: 'String?',
        ),
        _i2.ColumnDefinition(
          name: 'region4',
          columnType: _i2.ColumnType.text,
          isNullable: true,
          dartType: 'String?',
        ),
        _i2.ColumnDefinition(
          name: 'salesStatus',
          columnType: _i2.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _i2.ColumnDefinition(
          name: 'lat',
          columnType: _i2.ColumnType.doublePrecision,
          isNullable: true,
          dartType: 'double?',
        ),
        _i2.ColumnDefinition(
          name: 'lng',
          columnType: _i2.ColumnType.doublePrecision,
          isNullable: true,
          dartType: 'double?',
        ),
        _i2.ColumnDefinition(
          name: 'likesCount',
          columnType: _i2.ColumnType.bigint,
          isNullable: false,
          dartType: 'int',
        ),
        _i2.ColumnDefinition(
          name: 'reportsCount',
          columnType: _i2.ColumnType.bigint,
          isNullable: false,
          dartType: 'int',
        ),
        _i2.ColumnDefinition(
          name: 'isDeleted',
          columnType: _i2.ColumnType.boolean,
          isNullable: false,
          dartType: 'bool',
        ),
        _i2.ColumnDefinition(
          name: 'createdAt',
          columnType: _i2.ColumnType.timestampWithoutTimeZone,
          isNullable: false,
          dartType: 'DateTime',
        ),
        _i2.ColumnDefinition(
          name: 'updatedAt',
          columnType: _i2.ColumnType.timestampWithoutTimeZone,
          isNullable: false,
          dartType: 'DateTime',
        ),
        _i2.ColumnDefinition(
          name: '_brandsProductsBrandsId',
          columnType: _i2.ColumnType.bigint,
          isNullable: true,
          dartType: 'int?',
        ),
        _i2.ColumnDefinition(
          name: '_usersProductsUsersId',
          columnType: _i2.ColumnType.bigint,
          isNullable: true,
          dartType: 'int?',
        ),
      ],
      foreignKeys: [
        _i2.ForeignKeyDefinition(
          constraintName: 'products_fk_0',
          columns: ['_brandsProductsBrandsId'],
          referenceTable: 'brands',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _i2.ForeignKeyAction.noAction,
          onDelete: _i2.ForeignKeyAction.noAction,
          matchType: null,
        ),
        _i2.ForeignKeyDefinition(
          constraintName: 'products_fk_1',
          columns: ['_usersProductsUsersId'],
          referenceTable: 'users',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _i2.ForeignKeyAction.noAction,
          onDelete: _i2.ForeignKeyAction.noAction,
          matchType: null,
        ),
      ],
      indexes: [
        _i2.IndexDefinition(
          indexName: 'products_pkey',
          tableSpace: null,
          elements: [
            _i2.IndexElementDefinition(
              type: _i2.IndexElementDefinitionType.column,
              definition: 'id',
            )
          ],
          type: 'btree',
          isUnique: true,
          isPrimary: true,
        )
      ],
      managed: true,
    ),
    _i2.TableDefinition(
      name: 'products_images',
      dartName: 'ProductsImages',
      schema: 'public',
      module: 'mulli',
      columns: [
        _i2.ColumnDefinition(
          name: 'id',
          columnType: _i2.ColumnType.bigint,
          isNullable: false,
          dartType: 'int?',
          columnDefault: 'nextval(\'products_images_id_seq\'::regclass)',
        ),
        _i2.ColumnDefinition(
          name: 'productId',
          columnType: _i2.ColumnType.bigint,
          isNullable: false,
          dartType: 'int',
        ),
        _i2.ColumnDefinition(
          name: 's3Url',
          columnType: _i2.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _i2.ColumnDefinition(
          name: 'isThumbnail',
          columnType: _i2.ColumnType.boolean,
          isNullable: false,
          dartType: 'bool',
        ),
        _i2.ColumnDefinition(
          name: 'createdAt',
          columnType: _i2.ColumnType.timestampWithoutTimeZone,
          isNullable: false,
          dartType: 'DateTime',
        ),
        _i2.ColumnDefinition(
          name: 'updatedAt',
          columnType: _i2.ColumnType.timestampWithoutTimeZone,
          isNullable: false,
          dartType: 'DateTime',
        ),
        _i2.ColumnDefinition(
          name: '_productsImagesProductsId',
          columnType: _i2.ColumnType.bigint,
          isNullable: true,
          dartType: 'int?',
        ),
      ],
      foreignKeys: [
        _i2.ForeignKeyDefinition(
          constraintName: 'products_images_fk_0',
          columns: ['_productsImagesProductsId'],
          referenceTable: 'products',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _i2.ForeignKeyAction.noAction,
          onDelete: _i2.ForeignKeyAction.noAction,
          matchType: null,
        )
      ],
      indexes: [
        _i2.IndexDefinition(
          indexName: 'products_images_pkey',
          tableSpace: null,
          elements: [
            _i2.IndexElementDefinition(
              type: _i2.IndexElementDefinitionType.column,
              definition: 'id',
            )
          ],
          type: 'btree',
          isUnique: true,
          isPrimary: true,
        )
      ],
      managed: true,
    ),
    _i2.TableDefinition(
      name: 'products_likes',
      dartName: 'ProductsLikes',
      schema: 'public',
      module: 'mulli',
      columns: [
        _i2.ColumnDefinition(
          name: 'id',
          columnType: _i2.ColumnType.bigint,
          isNullable: false,
          dartType: 'int?',
          columnDefault: 'nextval(\'products_likes_id_seq\'::regclass)',
        ),
        _i2.ColumnDefinition(
          name: 'productId',
          columnType: _i2.ColumnType.bigint,
          isNullable: false,
          dartType: 'int',
        ),
        _i2.ColumnDefinition(
          name: 'userId',
          columnType: _i2.ColumnType.bigint,
          isNullable: false,
          dartType: 'int',
        ),
        _i2.ColumnDefinition(
          name: 'isDeleted',
          columnType: _i2.ColumnType.boolean,
          isNullable: false,
          dartType: 'bool',
        ),
        _i2.ColumnDefinition(
          name: 'createdAt',
          columnType: _i2.ColumnType.timestampWithoutTimeZone,
          isNullable: false,
          dartType: 'DateTime',
        ),
        _i2.ColumnDefinition(
          name: 'updatedAt',
          columnType: _i2.ColumnType.timestampWithoutTimeZone,
          isNullable: false,
          dartType: 'DateTime',
        ),
        _i2.ColumnDefinition(
          name: '_productsLikesProductsId',
          columnType: _i2.ColumnType.bigint,
          isNullable: true,
          dartType: 'int?',
        ),
        _i2.ColumnDefinition(
          name: '_usersProductlikesUsersId',
          columnType: _i2.ColumnType.bigint,
          isNullable: true,
          dartType: 'int?',
        ),
      ],
      foreignKeys: [
        _i2.ForeignKeyDefinition(
          constraintName: 'products_likes_fk_0',
          columns: ['_productsLikesProductsId'],
          referenceTable: 'products',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _i2.ForeignKeyAction.noAction,
          onDelete: _i2.ForeignKeyAction.noAction,
          matchType: null,
        ),
        _i2.ForeignKeyDefinition(
          constraintName: 'products_likes_fk_1',
          columns: ['_usersProductlikesUsersId'],
          referenceTable: 'users',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _i2.ForeignKeyAction.noAction,
          onDelete: _i2.ForeignKeyAction.noAction,
          matchType: null,
        ),
      ],
      indexes: [
        _i2.IndexDefinition(
          indexName: 'products_likes_pkey',
          tableSpace: null,
          elements: [
            _i2.IndexElementDefinition(
              type: _i2.IndexElementDefinitionType.column,
              definition: 'id',
            )
          ],
          type: 'btree',
          isUnique: true,
          isPrimary: true,
        )
      ],
      managed: true,
    ),
    _i2.TableDefinition(
      name: 'products_reports',
      dartName: 'ProductsReports',
      schema: 'public',
      module: 'mulli',
      columns: [
        _i2.ColumnDefinition(
          name: 'id',
          columnType: _i2.ColumnType.bigint,
          isNullable: false,
          dartType: 'int?',
          columnDefault: 'nextval(\'products_reports_id_seq\'::regclass)',
        ),
        _i2.ColumnDefinition(
          name: 'userId',
          columnType: _i2.ColumnType.bigint,
          isNullable: false,
          dartType: 'int',
        ),
        _i2.ColumnDefinition(
          name: 'productId',
          columnType: _i2.ColumnType.bigint,
          isNullable: false,
          dartType: 'int',
        ),
        _i2.ColumnDefinition(
          name: 'reason',
          columnType: _i2.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _i2.ColumnDefinition(
          name: 'createdAt',
          columnType: _i2.ColumnType.timestampWithoutTimeZone,
          isNullable: false,
          dartType: 'DateTime',
        ),
        _i2.ColumnDefinition(
          name: 'updatedAt',
          columnType: _i2.ColumnType.timestampWithoutTimeZone,
          isNullable: false,
          dartType: 'DateTime',
        ),
        _i2.ColumnDefinition(
          name: '_productsReportsProductsId',
          columnType: _i2.ColumnType.bigint,
          isNullable: true,
          dartType: 'int?',
        ),
        _i2.ColumnDefinition(
          name: '_usersProductreportsUsersId',
          columnType: _i2.ColumnType.bigint,
          isNullable: true,
          dartType: 'int?',
        ),
      ],
      foreignKeys: [
        _i2.ForeignKeyDefinition(
          constraintName: 'products_reports_fk_0',
          columns: ['_productsReportsProductsId'],
          referenceTable: 'products',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _i2.ForeignKeyAction.noAction,
          onDelete: _i2.ForeignKeyAction.noAction,
          matchType: null,
        ),
        _i2.ForeignKeyDefinition(
          constraintName: 'products_reports_fk_1',
          columns: ['_usersProductreportsUsersId'],
          referenceTable: 'users',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _i2.ForeignKeyAction.noAction,
          onDelete: _i2.ForeignKeyAction.noAction,
          matchType: null,
        ),
      ],
      indexes: [
        _i2.IndexDefinition(
          indexName: 'products_reports_pkey',
          tableSpace: null,
          elements: [
            _i2.IndexElementDefinition(
              type: _i2.IndexElementDefinitionType.column,
              definition: 'id',
            )
          ],
          type: 'btree',
          isUnique: true,
          isPrimary: true,
        )
      ],
      managed: true,
    ),
    _i2.TableDefinition(
      name: 'terms_and_conditions',
      dartName: 'TermsAndConditions',
      schema: 'public',
      module: 'mulli',
      columns: [
        _i2.ColumnDefinition(
          name: 'id',
          columnType: _i2.ColumnType.bigint,
          isNullable: false,
          dartType: 'int?',
          columnDefault: 'nextval(\'terms_and_conditions_id_seq\'::regclass)',
        ),
        _i2.ColumnDefinition(
          name: 'title',
          columnType: _i2.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _i2.ColumnDefinition(
          name: 'description',
          columnType: _i2.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _i2.ColumnDefinition(
          name: 'isRequired',
          columnType: _i2.ColumnType.boolean,
          isNullable: false,
          dartType: 'bool',
        ),
        _i2.ColumnDefinition(
          name: 'version',
          columnType: _i2.ColumnType.bigint,
          isNullable: false,
          dartType: 'int',
        ),
        _i2.ColumnDefinition(
          name: 'createdAt',
          columnType: _i2.ColumnType.timestampWithoutTimeZone,
          isNullable: false,
          dartType: 'DateTime',
        ),
        _i2.ColumnDefinition(
          name: 'updatedAt',
          columnType: _i2.ColumnType.timestampWithoutTimeZone,
          isNullable: false,
          dartType: 'DateTime',
        ),
      ],
      foreignKeys: [],
      indexes: [
        _i2.IndexDefinition(
          indexName: 'terms_and_conditions_pkey',
          tableSpace: null,
          elements: [
            _i2.IndexElementDefinition(
              type: _i2.IndexElementDefinitionType.column,
              definition: 'id',
            )
          ],
          type: 'btree',
          isUnique: true,
          isPrimary: true,
        )
      ],
      managed: true,
    ),
    _i2.TableDefinition(
      name: 'user_terms',
      dartName: 'UserTerms',
      schema: 'public',
      module: 'mulli',
      columns: [
        _i2.ColumnDefinition(
          name: 'id',
          columnType: _i2.ColumnType.bigint,
          isNullable: false,
          dartType: 'int?',
          columnDefault: 'nextval(\'user_terms_id_seq\'::regclass)',
        ),
        _i2.ColumnDefinition(
          name: 'userId',
          columnType: _i2.ColumnType.bigint,
          isNullable: false,
          dartType: 'int',
        ),
        _i2.ColumnDefinition(
          name: 'termId',
          columnType: _i2.ColumnType.bigint,
          isNullable: false,
          dartType: 'int',
        ),
        _i2.ColumnDefinition(
          name: 'isAgreed',
          columnType: _i2.ColumnType.boolean,
          isNullable: false,
          dartType: 'bool',
        ),
        _i2.ColumnDefinition(
          name: 'agreedAt',
          columnType: _i2.ColumnType.timestampWithoutTimeZone,
          isNullable: false,
          dartType: 'DateTime',
        ),
        _i2.ColumnDefinition(
          name: 'createdAt',
          columnType: _i2.ColumnType.timestampWithoutTimeZone,
          isNullable: false,
          dartType: 'DateTime',
        ),
        _i2.ColumnDefinition(
          name: '_termsAndConditionsUsertermsTermsAndConditionsId',
          columnType: _i2.ColumnType.bigint,
          isNullable: true,
          dartType: 'int?',
        ),
        _i2.ColumnDefinition(
          name: '_usersUsertermsUsersId',
          columnType: _i2.ColumnType.bigint,
          isNullable: true,
          dartType: 'int?',
        ),
      ],
      foreignKeys: [
        _i2.ForeignKeyDefinition(
          constraintName: 'user_terms_fk_0',
          columns: ['_termsAndConditionsUsertermsTermsAndConditionsId'],
          referenceTable: 'terms_and_conditions',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _i2.ForeignKeyAction.noAction,
          onDelete: _i2.ForeignKeyAction.noAction,
          matchType: null,
        ),
        _i2.ForeignKeyDefinition(
          constraintName: 'user_terms_fk_1',
          columns: ['_usersUsertermsUsersId'],
          referenceTable: 'users',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _i2.ForeignKeyAction.noAction,
          onDelete: _i2.ForeignKeyAction.noAction,
          matchType: null,
        ),
      ],
      indexes: [
        _i2.IndexDefinition(
          indexName: 'user_terms_pkey',
          tableSpace: null,
          elements: [
            _i2.IndexElementDefinition(
              type: _i2.IndexElementDefinitionType.column,
              definition: 'id',
            )
          ],
          type: 'btree',
          isUnique: true,
          isPrimary: true,
        )
      ],
      managed: true,
    ),
    _i2.TableDefinition(
      name: 'users',
      dartName: 'Users',
      schema: 'public',
      module: 'mulli',
      columns: [
        _i2.ColumnDefinition(
          name: 'id',
          columnType: _i2.ColumnType.bigint,
          isNullable: false,
          dartType: 'int?',
          columnDefault: 'nextval(\'users_id_seq\'::regclass)',
        ),
        _i2.ColumnDefinition(
          name: 'socialId',
          columnType: _i2.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _i2.ColumnDefinition(
          name: 'socialType',
          columnType: _i2.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _i2.ColumnDefinition(
          name: 'name',
          columnType: _i2.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _i2.ColumnDefinition(
          name: 'email',
          columnType: _i2.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _i2.ColumnDefinition(
          name: 'userProfileUrl',
          columnType: _i2.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _i2.ColumnDefinition(
          name: 'region1',
          columnType: _i2.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _i2.ColumnDefinition(
          name: 'region2',
          columnType: _i2.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _i2.ColumnDefinition(
          name: 'region3',
          columnType: _i2.ColumnType.text,
          isNullable: true,
          dartType: 'String?',
        ),
        _i2.ColumnDefinition(
          name: 'region4',
          columnType: _i2.ColumnType.text,
          isNullable: true,
          dartType: 'String?',
        ),
        _i2.ColumnDefinition(
          name: 'lat',
          columnType: _i2.ColumnType.doublePrecision,
          isNullable: true,
          dartType: 'double?',
        ),
        _i2.ColumnDefinition(
          name: 'lng',
          columnType: _i2.ColumnType.doublePrecision,
          isNullable: true,
          dartType: 'double?',
        ),
        _i2.ColumnDefinition(
          name: 'createdAt',
          columnType: _i2.ColumnType.timestampWithoutTimeZone,
          isNullable: false,
          dartType: 'DateTime',
        ),
        _i2.ColumnDefinition(
          name: 'updatedAt',
          columnType: _i2.ColumnType.timestampWithoutTimeZone,
          isNullable: false,
          dartType: 'DateTime',
        ),
      ],
      foreignKeys: [],
      indexes: [
        _i2.IndexDefinition(
          indexName: 'users_pkey',
          tableSpace: null,
          elements: [
            _i2.IndexElementDefinition(
              type: _i2.IndexElementDefinitionType.column,
              definition: 'id',
            )
          ],
          type: 'btree',
          isUnique: true,
          isPrimary: true,
        )
      ],
      managed: true,
    ),
    ..._i2.Protocol.targetTableDefinitions,
  ];

  @override
  T deserialize<T>(
    dynamic data, [
    Type? t,
  ]) {
    t ??= T;
    if (t == _i3.Brands) {
      return _i3.Brands.fromJson(data) as T;
    }
    if (t == _i4.ChatRooms) {
      return _i4.ChatRooms.fromJson(data) as T;
    }
    if (t == _i5.Example) {
      return _i5.Example.fromJson(data) as T;
    }
    if (t == _i6.LoungePosts) {
      return _i6.LoungePosts.fromJson(data) as T;
    }
    if (t == _i7.LoungePostsComments) {
      return _i7.LoungePostsComments.fromJson(data) as T;
    }
    if (t == _i8.LoungePostsLikes) {
      return _i8.LoungePostsLikes.fromJson(data) as T;
    }
    if (t == _i9.LoungePostsReports) {
      return _i9.LoungePostsReports.fromJson(data) as T;
    }
    if (t == _i10.Messages) {
      return _i10.Messages.fromJson(data) as T;
    }
    if (t == _i11.Products) {
      return _i11.Products.fromJson(data) as T;
    }
    if (t == _i12.ProductsImages) {
      return _i12.ProductsImages.fromJson(data) as T;
    }
    if (t == _i13.ProductsLikes) {
      return _i13.ProductsLikes.fromJson(data) as T;
    }
    if (t == _i14.ProductsReports) {
      return _i14.ProductsReports.fromJson(data) as T;
    }
    if (t == _i15.TermsAndConditions) {
      return _i15.TermsAndConditions.fromJson(data) as T;
    }
    if (t == _i16.UserTerms) {
      return _i16.UserTerms.fromJson(data) as T;
    }
    if (t == _i17.Users) {
      return _i17.Users.fromJson(data) as T;
    }
    if (t == _i1.getType<_i3.Brands?>()) {
      return (data != null ? _i3.Brands.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i4.ChatRooms?>()) {
      return (data != null ? _i4.ChatRooms.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i5.Example?>()) {
      return (data != null ? _i5.Example.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i6.LoungePosts?>()) {
      return (data != null ? _i6.LoungePosts.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i7.LoungePostsComments?>()) {
      return (data != null ? _i7.LoungePostsComments.fromJson(data) : null)
          as T;
    }
    if (t == _i1.getType<_i8.LoungePostsLikes?>()) {
      return (data != null ? _i8.LoungePostsLikes.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i9.LoungePostsReports?>()) {
      return (data != null ? _i9.LoungePostsReports.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i10.Messages?>()) {
      return (data != null ? _i10.Messages.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i11.Products?>()) {
      return (data != null ? _i11.Products.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i12.ProductsImages?>()) {
      return (data != null ? _i12.ProductsImages.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i13.ProductsLikes?>()) {
      return (data != null ? _i13.ProductsLikes.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i14.ProductsReports?>()) {
      return (data != null ? _i14.ProductsReports.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i15.TermsAndConditions?>()) {
      return (data != null ? _i15.TermsAndConditions.fromJson(data) : null)
          as T;
    }
    if (t == _i1.getType<_i16.UserTerms?>()) {
      return (data != null ? _i16.UserTerms.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i17.Users?>()) {
      return (data != null ? _i17.Users.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<List<_i11.Products>?>()) {
      return (data != null
          ? (data as List).map((e) => deserialize<_i11.Products>(e)).toList()
          : null) as dynamic;
    }
    if (t == _i1.getType<List<_i10.Messages>?>()) {
      return (data != null
          ? (data as List).map((e) => deserialize<_i10.Messages>(e)).toList()
          : null) as dynamic;
    }
    if (t == _i1.getType<List<_i7.LoungePostsComments>?>()) {
      return (data != null
          ? (data as List)
              .map((e) => deserialize<_i7.LoungePostsComments>(e))
              .toList()
          : null) as dynamic;
    }
    if (t == _i1.getType<List<_i8.LoungePostsLikes>?>()) {
      return (data != null
          ? (data as List)
              .map((e) => deserialize<_i8.LoungePostsLikes>(e))
              .toList()
          : null) as dynamic;
    }
    if (t == _i1.getType<List<_i9.LoungePostsReports>?>()) {
      return (data != null
          ? (data as List)
              .map((e) => deserialize<_i9.LoungePostsReports>(e))
              .toList()
          : null) as dynamic;
    }
    if (t == _i1.getType<List<_i12.ProductsImages>?>()) {
      return (data != null
          ? (data as List)
              .map((e) => deserialize<_i12.ProductsImages>(e))
              .toList()
          : null) as dynamic;
    }
    if (t == _i1.getType<List<_i13.ProductsLikes>?>()) {
      return (data != null
          ? (data as List)
              .map((e) => deserialize<_i13.ProductsLikes>(e))
              .toList()
          : null) as dynamic;
    }
    if (t == _i1.getType<List<_i14.ProductsReports>?>()) {
      return (data != null
          ? (data as List)
              .map((e) => deserialize<_i14.ProductsReports>(e))
              .toList()
          : null) as dynamic;
    }
    if (t == _i1.getType<List<_i4.ChatRooms>?>()) {
      return (data != null
          ? (data as List).map((e) => deserialize<_i4.ChatRooms>(e)).toList()
          : null) as dynamic;
    }
    if (t == _i1.getType<List<_i16.UserTerms>?>()) {
      return (data != null
          ? (data as List).map((e) => deserialize<_i16.UserTerms>(e)).toList()
          : null) as dynamic;
    }
    if (t == _i1.getType<List<_i11.Products>?>()) {
      return (data != null
          ? (data as List).map((e) => deserialize<_i11.Products>(e)).toList()
          : null) as dynamic;
    }
    if (t == _i1.getType<List<_i6.LoungePosts>?>()) {
      return (data != null
          ? (data as List).map((e) => deserialize<_i6.LoungePosts>(e)).toList()
          : null) as dynamic;
    }
    if (t == _i1.getType<List<_i7.LoungePostsComments>?>()) {
      return (data != null
          ? (data as List)
              .map((e) => deserialize<_i7.LoungePostsComments>(e))
              .toList()
          : null) as dynamic;
    }
    if (t == _i1.getType<List<_i13.ProductsLikes>?>()) {
      return (data != null
          ? (data as List)
              .map((e) => deserialize<_i13.ProductsLikes>(e))
              .toList()
          : null) as dynamic;
    }
    if (t == _i1.getType<List<_i14.ProductsReports>?>()) {
      return (data != null
          ? (data as List)
              .map((e) => deserialize<_i14.ProductsReports>(e))
              .toList()
          : null) as dynamic;
    }
    if (t == _i1.getType<List<_i8.LoungePostsLikes>?>()) {
      return (data != null
          ? (data as List)
              .map((e) => deserialize<_i8.LoungePostsLikes>(e))
              .toList()
          : null) as dynamic;
    }
    if (t == _i1.getType<List<_i9.LoungePostsReports>?>()) {
      return (data != null
          ? (data as List)
              .map((e) => deserialize<_i9.LoungePostsReports>(e))
              .toList()
          : null) as dynamic;
    }
    if (t == _i1.getType<List<_i4.ChatRooms>?>()) {
      return (data != null
          ? (data as List).map((e) => deserialize<_i4.ChatRooms>(e)).toList()
          : null) as dynamic;
    }
    if (t == _i1.getType<List<_i4.ChatRooms>?>()) {
      return (data != null
          ? (data as List).map((e) => deserialize<_i4.ChatRooms>(e)).toList()
          : null) as dynamic;
    }
    if (t == _i1.getType<List<_i10.Messages>?>()) {
      return (data != null
          ? (data as List).map((e) => deserialize<_i10.Messages>(e)).toList()
          : null) as dynamic;
    }
    if (t == _i1.getType<List<_i16.UserTerms>?>()) {
      return (data != null
          ? (data as List).map((e) => deserialize<_i16.UserTerms>(e)).toList()
          : null) as dynamic;
    }
    if (t == List<_i18.Brands>) {
      return (data as List).map((e) => deserialize<_i18.Brands>(e)).toList()
          as dynamic;
    }
    if (t == List<_i19.Products>) {
      return (data as List).map((e) => deserialize<_i19.Products>(e)).toList()
          as dynamic;
    }
    if (t == List<_i20.Users>) {
      return (data as List).map((e) => deserialize<_i20.Users>(e)).toList()
          as dynamic;
    }
    try {
      return _i2.Protocol().deserialize<T>(data, t);
    } on _i1.DeserializationTypeNotFoundException catch (_) {}
    return super.deserialize<T>(data, t);
  }

  @override
  String? getClassNameForObject(Object? data) {
    String? className = super.getClassNameForObject(data);
    if (className != null) return className;
    if (data is _i3.Brands) {
      return 'Brands';
    }
    if (data is _i4.ChatRooms) {
      return 'ChatRooms';
    }
    if (data is _i5.Example) {
      return 'Example';
    }
    if (data is _i6.LoungePosts) {
      return 'LoungePosts';
    }
    if (data is _i7.LoungePostsComments) {
      return 'LoungePostsComments';
    }
    if (data is _i8.LoungePostsLikes) {
      return 'LoungePostsLikes';
    }
    if (data is _i9.LoungePostsReports) {
      return 'LoungePostsReports';
    }
    if (data is _i10.Messages) {
      return 'Messages';
    }
    if (data is _i11.Products) {
      return 'Products';
    }
    if (data is _i12.ProductsImages) {
      return 'ProductsImages';
    }
    if (data is _i13.ProductsLikes) {
      return 'ProductsLikes';
    }
    if (data is _i14.ProductsReports) {
      return 'ProductsReports';
    }
    if (data is _i15.TermsAndConditions) {
      return 'TermsAndConditions';
    }
    if (data is _i16.UserTerms) {
      return 'UserTerms';
    }
    if (data is _i17.Users) {
      return 'Users';
    }
    className = _i2.Protocol().getClassNameForObject(data);
    if (className != null) {
      return 'serverpod.$className';
    }
    return null;
  }

  @override
  dynamic deserializeByClassName(Map<String, dynamic> data) {
    var dataClassName = data['className'];
    if (dataClassName is! String) {
      return super.deserializeByClassName(data);
    }
    if (dataClassName == 'Brands') {
      return deserialize<_i3.Brands>(data['data']);
    }
    if (dataClassName == 'ChatRooms') {
      return deserialize<_i4.ChatRooms>(data['data']);
    }
    if (dataClassName == 'Example') {
      return deserialize<_i5.Example>(data['data']);
    }
    if (dataClassName == 'LoungePosts') {
      return deserialize<_i6.LoungePosts>(data['data']);
    }
    if (dataClassName == 'LoungePostsComments') {
      return deserialize<_i7.LoungePostsComments>(data['data']);
    }
    if (dataClassName == 'LoungePostsLikes') {
      return deserialize<_i8.LoungePostsLikes>(data['data']);
    }
    if (dataClassName == 'LoungePostsReports') {
      return deserialize<_i9.LoungePostsReports>(data['data']);
    }
    if (dataClassName == 'Messages') {
      return deserialize<_i10.Messages>(data['data']);
    }
    if (dataClassName == 'Products') {
      return deserialize<_i11.Products>(data['data']);
    }
    if (dataClassName == 'ProductsImages') {
      return deserialize<_i12.ProductsImages>(data['data']);
    }
    if (dataClassName == 'ProductsLikes') {
      return deserialize<_i13.ProductsLikes>(data['data']);
    }
    if (dataClassName == 'ProductsReports') {
      return deserialize<_i14.ProductsReports>(data['data']);
    }
    if (dataClassName == 'TermsAndConditions') {
      return deserialize<_i15.TermsAndConditions>(data['data']);
    }
    if (dataClassName == 'UserTerms') {
      return deserialize<_i16.UserTerms>(data['data']);
    }
    if (dataClassName == 'Users') {
      return deserialize<_i17.Users>(data['data']);
    }
    if (dataClassName.startsWith('serverpod.')) {
      data['className'] = dataClassName.substring(10);
      return _i2.Protocol().deserializeByClassName(data);
    }
    return super.deserializeByClassName(data);
  }

  @override
  _i1.Table? getTableForType(Type t) {
    {
      var table = _i2.Protocol().getTableForType(t);
      if (table != null) {
        return table;
      }
    }
    switch (t) {
      case _i3.Brands:
        return _i3.Brands.t;
      case _i4.ChatRooms:
        return _i4.ChatRooms.t;
      case _i6.LoungePosts:
        return _i6.LoungePosts.t;
      case _i7.LoungePostsComments:
        return _i7.LoungePostsComments.t;
      case _i8.LoungePostsLikes:
        return _i8.LoungePostsLikes.t;
      case _i9.LoungePostsReports:
        return _i9.LoungePostsReports.t;
      case _i10.Messages:
        return _i10.Messages.t;
      case _i11.Products:
        return _i11.Products.t;
      case _i12.ProductsImages:
        return _i12.ProductsImages.t;
      case _i13.ProductsLikes:
        return _i13.ProductsLikes.t;
      case _i14.ProductsReports:
        return _i14.ProductsReports.t;
      case _i15.TermsAndConditions:
        return _i15.TermsAndConditions.t;
      case _i16.UserTerms:
        return _i16.UserTerms.t;
      case _i17.Users:
        return _i17.Users.t;
    }
    return null;
  }

  @override
  List<_i2.TableDefinition> getTargetTableDefinitions() =>
      targetTableDefinitions;

  @override
  String getModuleName() => 'mulli';
}
