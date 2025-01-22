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

abstract class TermsAndConditions
    implements _i1.TableRow, _i1.ProtocolSerialization {
  TermsAndConditions._({
    this.id,
    required this.title,
    required this.description,
    required this.isRequired,
    required this.version,
    required this.createdAt,
    required this.updatedAt,
  });

  factory TermsAndConditions({
    int? id,
    required String title,
    required String description,
    required bool isRequired,
    required int version,
    required DateTime createdAt,
    required DateTime updatedAt,
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
    );
  }

  static final t = TermsAndConditionsTable();

  static const db = TermsAndConditionsRepository._();

  @override
  int? id;

  String title;

  String description;

  bool isRequired;

  int version;

  DateTime createdAt;

  DateTime updatedAt;

  @override
  _i1.Table get table => t;

  TermsAndConditions copyWith({
    int? id,
    String? title,
    String? description,
    bool? isRequired,
    int? version,
    DateTime? createdAt,
    DateTime? updatedAt,
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
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      if (id != null) 'id': id,
      'title': title,
      'description': description,
      'isRequired': isRequired,
      'version': version,
      'createdAt': createdAt.toJson(),
      'updatedAt': updatedAt.toJson(),
    };
  }

  static TermsAndConditionsInclude include() {
    return TermsAndConditionsInclude._();
  }

  static TermsAndConditionsIncludeList includeList({
    _i1.WhereExpressionBuilder<TermsAndConditionsTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<TermsAndConditionsTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<TermsAndConditionsTable>? orderByList,
    TermsAndConditionsInclude? include,
  }) {
    return TermsAndConditionsIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(TermsAndConditions.t),
      orderDescending: orderDescending,
      orderByList: orderByList?.call(TermsAndConditions.t),
      include: include,
    );
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
  }) : super._(
          id: id,
          title: title,
          description: description,
          isRequired: isRequired,
          version: version,
          createdAt: createdAt,
          updatedAt: updatedAt,
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
  }) {
    return TermsAndConditions(
      id: id is int? ? id : this.id,
      title: title ?? this.title,
      description: description ?? this.description,
      isRequired: isRequired ?? this.isRequired,
      version: version ?? this.version,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
    );
  }
}

class TermsAndConditionsTable extends _i1.Table {
  TermsAndConditionsTable({super.tableRelation})
      : super(tableName: 'terms_and_conditions') {
    title = _i1.ColumnString(
      'title',
      this,
    );
    description = _i1.ColumnString(
      'description',
      this,
    );
    isRequired = _i1.ColumnBool(
      'isRequired',
      this,
    );
    version = _i1.ColumnInt(
      'version',
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

  late final _i1.ColumnString title;

  late final _i1.ColumnString description;

  late final _i1.ColumnBool isRequired;

  late final _i1.ColumnInt version;

  late final _i1.ColumnDateTime createdAt;

  late final _i1.ColumnDateTime updatedAt;

  @override
  List<_i1.Column> get columns => [
        id,
        title,
        description,
        isRequired,
        version,
        createdAt,
        updatedAt,
      ];
}

class TermsAndConditionsInclude extends _i1.IncludeObject {
  TermsAndConditionsInclude._();

  @override
  Map<String, _i1.Include?> get includes => {};

  @override
  _i1.Table get table => TermsAndConditions.t;
}

class TermsAndConditionsIncludeList extends _i1.IncludeList {
  TermsAndConditionsIncludeList._({
    _i1.WhereExpressionBuilder<TermsAndConditionsTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderDescending,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(TermsAndConditions.t);
  }

  @override
  Map<String, _i1.Include?> get includes => include?.includes ?? {};

  @override
  _i1.Table get table => TermsAndConditions.t;
}

class TermsAndConditionsRepository {
  const TermsAndConditionsRepository._();

  Future<List<TermsAndConditions>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<TermsAndConditionsTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<TermsAndConditionsTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<TermsAndConditionsTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return session.db.find<TermsAndConditions>(
      where: where?.call(TermsAndConditions.t),
      orderBy: orderBy?.call(TermsAndConditions.t),
      orderByList: orderByList?.call(TermsAndConditions.t),
      orderDescending: orderDescending,
      limit: limit,
      offset: offset,
      transaction: transaction,
    );
  }

  Future<TermsAndConditions?> findFirstRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<TermsAndConditionsTable>? where,
    int? offset,
    _i1.OrderByBuilder<TermsAndConditionsTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<TermsAndConditionsTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return session.db.findFirstRow<TermsAndConditions>(
      where: where?.call(TermsAndConditions.t),
      orderBy: orderBy?.call(TermsAndConditions.t),
      orderByList: orderByList?.call(TermsAndConditions.t),
      orderDescending: orderDescending,
      offset: offset,
      transaction: transaction,
    );
  }

  Future<TermsAndConditions?> findById(
    _i1.Session session,
    int id, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.findById<TermsAndConditions>(
      id,
      transaction: transaction,
    );
  }

  Future<List<TermsAndConditions>> insert(
    _i1.Session session,
    List<TermsAndConditions> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insert<TermsAndConditions>(
      rows,
      transaction: transaction,
    );
  }

  Future<TermsAndConditions> insertRow(
    _i1.Session session,
    TermsAndConditions row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insertRow<TermsAndConditions>(
      row,
      transaction: transaction,
    );
  }

  Future<List<TermsAndConditions>> update(
    _i1.Session session,
    List<TermsAndConditions> rows, {
    _i1.ColumnSelections<TermsAndConditionsTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.update<TermsAndConditions>(
      rows,
      columns: columns?.call(TermsAndConditions.t),
      transaction: transaction,
    );
  }

  Future<TermsAndConditions> updateRow(
    _i1.Session session,
    TermsAndConditions row, {
    _i1.ColumnSelections<TermsAndConditionsTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateRow<TermsAndConditions>(
      row,
      columns: columns?.call(TermsAndConditions.t),
      transaction: transaction,
    );
  }

  Future<List<TermsAndConditions>> delete(
    _i1.Session session,
    List<TermsAndConditions> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<TermsAndConditions>(
      rows,
      transaction: transaction,
    );
  }

  Future<TermsAndConditions> deleteRow(
    _i1.Session session,
    TermsAndConditions row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteRow<TermsAndConditions>(
      row,
      transaction: transaction,
    );
  }

  Future<List<TermsAndConditions>> deleteWhere(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<TermsAndConditionsTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteWhere<TermsAndConditions>(
      where: where(TermsAndConditions.t),
      transaction: transaction,
    );
  }

  Future<int> count(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<TermsAndConditionsTable>? where,
    int? limit,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<TermsAndConditions>(
      where: where?.call(TermsAndConditions.t),
      limit: limit,
      transaction: transaction,
    );
  }
}
