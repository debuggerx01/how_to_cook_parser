// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'change_logs.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// ignore_for_file: duplicate_ignore, non_constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast

extension GetChangeLogCollection on Isar {
  IsarCollection<ChangeLog> get changeLogs {
    return getCollection('ChangeLog');
  }
}

final ChangeLogSchema = CollectionSchema(
  name: 'ChangeLog',
  schema:
      '{"name":"ChangeLog","idName":"id","properties":[{"name":"commitId","type":"String"},{"name":"createdAt","type":"Long"},{"name":"createdDishes","type":"StringList"},{"name":"updatedDishes","type":"StringList"}],"indexes":[{"name":"commitId","unique":true,"properties":[{"name":"commitId","type":"Hash","caseSensitive":true}]}],"links":[]}',
  nativeAdapter: const _ChangeLogNativeAdapter(),
  webAdapter: const _ChangeLogWebAdapter(),
  idName: 'id',
  propertyIds: {
    'commitId': 0,
    'createdAt': 1,
    'createdDishes': 2,
    'updatedDishes': 3
  },
  listProperties: {'createdDishes', 'updatedDishes'},
  indexIds: {'commitId': 0},
  indexTypes: {
    'commitId': [
      NativeIndexType.stringHash,
    ]
  },
  linkIds: {},
  backlinkIds: {},
  linkedCollections: [],
  getId: (obj) {
    if (obj.id == Isar.autoIncrement) {
      return null;
    } else {
      return obj.id;
    }
  },
  setId: (obj, id) => obj.id = id,
  getLinks: (obj) => [],
  version: 2,
);

class _ChangeLogWebAdapter extends IsarWebTypeAdapter<ChangeLog> {
  const _ChangeLogWebAdapter();

  @override
  Object serialize(IsarCollection<ChangeLog> collection, ChangeLog object) {
    final jsObj = IsarNative.newJsObject();
    IsarNative.jsObjectSet(jsObj, 'commitId', object.commitId);
    IsarNative.jsObjectSet(
        jsObj, 'createdAt', object.createdAt.toUtc().millisecondsSinceEpoch);
    IsarNative.jsObjectSet(jsObj, 'createdDishes', object.createdDishes);
    IsarNative.jsObjectSet(jsObj, 'id', object.id);
    IsarNative.jsObjectSet(jsObj, 'updatedDishes', object.updatedDishes);
    return jsObj;
  }

  @override
  ChangeLog deserialize(IsarCollection<ChangeLog> collection, dynamic jsObj) {
    final object = ChangeLog();
    object.commitId = IsarNative.jsObjectGet(jsObj, 'commitId') ?? '';
    object.createdAt = IsarNative.jsObjectGet(jsObj, 'createdAt') != null
        ? DateTime.fromMillisecondsSinceEpoch(
                IsarNative.jsObjectGet(jsObj, 'createdAt'),
                isUtc: true)
            .toLocal()
        : DateTime.fromMillisecondsSinceEpoch(0);
    object.createdDishes =
        (IsarNative.jsObjectGet(jsObj, 'createdDishes') as List?)
                ?.map((e) => e ?? '')
                .toList()
                .cast<String>() ??
            [];
    object.id = IsarNative.jsObjectGet(jsObj, 'id') ?? double.negativeInfinity;
    object.updatedDishes =
        (IsarNative.jsObjectGet(jsObj, 'updatedDishes') as List?)
                ?.map((e) => e ?? '')
                .toList()
                .cast<String>() ??
            [];
    return object;
  }

  @override
  P deserializeProperty<P>(Object jsObj, String propertyName) {
    switch (propertyName) {
      case 'commitId':
        return (IsarNative.jsObjectGet(jsObj, 'commitId') ?? '') as P;
      case 'createdAt':
        return (IsarNative.jsObjectGet(jsObj, 'createdAt') != null
            ? DateTime.fromMillisecondsSinceEpoch(
                    IsarNative.jsObjectGet(jsObj, 'createdAt'),
                    isUtc: true)
                .toLocal()
            : DateTime.fromMillisecondsSinceEpoch(0)) as P;
      case 'createdDishes':
        return ((IsarNative.jsObjectGet(jsObj, 'createdDishes') as List?)
                ?.map((e) => e ?? '')
                .toList()
                .cast<String>() ??
            []) as P;
      case 'id':
        return (IsarNative.jsObjectGet(jsObj, 'id') ?? double.negativeInfinity)
            as P;
      case 'updatedDishes':
        return ((IsarNative.jsObjectGet(jsObj, 'updatedDishes') as List?)
                ?.map((e) => e ?? '')
                .toList()
                .cast<String>() ??
            []) as P;
      default:
        throw 'Illegal propertyName';
    }
  }

  @override
  void attachLinks(Isar isar, int id, ChangeLog object) {}
}

class _ChangeLogNativeAdapter extends IsarNativeTypeAdapter<ChangeLog> {
  const _ChangeLogNativeAdapter();

  @override
  void serialize(IsarCollection<ChangeLog> collection, IsarRawObject rawObj,
      ChangeLog object, int staticSize, List<int> offsets, AdapterAlloc alloc) {
    var dynamicSize = 0;
    final value0 = object.commitId;
    final _commitId = IsarBinaryWriter.utf8Encoder.convert(value0);
    dynamicSize += (_commitId.length) as int;
    final value1 = object.createdAt;
    final _createdAt = value1;
    final value2 = object.createdDishes;
    dynamicSize += (value2.length) * 8;
    final bytesList2 = <IsarUint8List>[];
    for (var str in value2) {
      final bytes = IsarBinaryWriter.utf8Encoder.convert(str);
      bytesList2.add(bytes);
      dynamicSize += bytes.length as int;
    }
    final _createdDishes = bytesList2;
    final value3 = object.updatedDishes;
    dynamicSize += (value3.length) * 8;
    final bytesList3 = <IsarUint8List>[];
    for (var str in value3) {
      final bytes = IsarBinaryWriter.utf8Encoder.convert(str);
      bytesList3.add(bytes);
      dynamicSize += bytes.length as int;
    }
    final _updatedDishes = bytesList3;
    final size = staticSize + dynamicSize;

    rawObj.buffer = alloc(size);
    rawObj.buffer_length = size;
    final buffer = IsarNative.bufAsBytes(rawObj.buffer, size);
    final writer = IsarBinaryWriter(buffer, staticSize);
    writer.writeBytes(offsets[0], _commitId);
    writer.writeDateTime(offsets[1], _createdAt);
    writer.writeStringList(offsets[2], _createdDishes);
    writer.writeStringList(offsets[3], _updatedDishes);
  }

  @override
  ChangeLog deserialize(IsarCollection<ChangeLog> collection, int id,
      IsarBinaryReader reader, List<int> offsets) {
    final object = ChangeLog();
    object.commitId = reader.readString(offsets[0]);
    object.createdAt = reader.readDateTime(offsets[1]);
    object.createdDishes = reader.readStringList(offsets[2]) ?? [];
    object.id = id;
    object.updatedDishes = reader.readStringList(offsets[3]) ?? [];
    return object;
  }

  @override
  P deserializeProperty<P>(
      int id, IsarBinaryReader reader, int propertyIndex, int offset) {
    switch (propertyIndex) {
      case -1:
        return id as P;
      case 0:
        return (reader.readString(offset)) as P;
      case 1:
        return (reader.readDateTime(offset)) as P;
      case 2:
        return (reader.readStringList(offset) ?? []) as P;
      case 3:
        return (reader.readStringList(offset) ?? []) as P;
      default:
        throw 'Illegal propertyIndex';
    }
  }

  @override
  void attachLinks(Isar isar, int id, ChangeLog object) {}
}

extension ChangeLogByIndex on IsarCollection<ChangeLog> {
  Future<ChangeLog?> getByCommitId(String commitId) {
    return getByIndex('commitId', [commitId]);
  }

  ChangeLog? getByCommitIdSync(String commitId) {
    return getByIndexSync('commitId', [commitId]);
  }

  Future<bool> deleteByCommitId(String commitId) {
    return deleteByIndex('commitId', [commitId]);
  }

  bool deleteByCommitIdSync(String commitId) {
    return deleteByIndexSync('commitId', [commitId]);
  }

  Future<List<ChangeLog?>> getAllByCommitId(List<String> commitIdValues) {
    final values = commitIdValues.map((e) => [e]).toList();
    return getAllByIndex('commitId', values);
  }

  List<ChangeLog?> getAllByCommitIdSync(List<String> commitIdValues) {
    final values = commitIdValues.map((e) => [e]).toList();
    return getAllByIndexSync('commitId', values);
  }

  Future<int> deleteAllByCommitId(List<String> commitIdValues) {
    final values = commitIdValues.map((e) => [e]).toList();
    return deleteAllByIndex('commitId', values);
  }

  int deleteAllByCommitIdSync(List<String> commitIdValues) {
    final values = commitIdValues.map((e) => [e]).toList();
    return deleteAllByIndexSync('commitId', values);
  }
}

extension ChangeLogQueryWhereSort
    on QueryBuilder<ChangeLog, ChangeLog, QWhere> {
  QueryBuilder<ChangeLog, ChangeLog, QAfterWhere> anyId() {
    return addWhereClauseInternal(const WhereClause(indexName: null));
  }

  QueryBuilder<ChangeLog, ChangeLog, QAfterWhere> anyCommitId() {
    return addWhereClauseInternal(const WhereClause(indexName: 'commitId'));
  }
}

extension ChangeLogQueryWhere
    on QueryBuilder<ChangeLog, ChangeLog, QWhereClause> {
  QueryBuilder<ChangeLog, ChangeLog, QAfterWhereClause> idEqualTo(int id) {
    return addWhereClauseInternal(WhereClause(
      indexName: null,
      lower: [id],
      includeLower: true,
      upper: [id],
      includeUpper: true,
    ));
  }

  QueryBuilder<ChangeLog, ChangeLog, QAfterWhereClause> idNotEqualTo(int id) {
    if (whereSortInternal == Sort.asc) {
      return addWhereClauseInternal(WhereClause(
        indexName: null,
        upper: [id],
        includeUpper: false,
      )).addWhereClauseInternal(WhereClause(
        indexName: null,
        lower: [id],
        includeLower: false,
      ));
    } else {
      return addWhereClauseInternal(WhereClause(
        indexName: null,
        lower: [id],
        includeLower: false,
      )).addWhereClauseInternal(WhereClause(
        indexName: null,
        upper: [id],
        includeUpper: false,
      ));
    }
  }

  QueryBuilder<ChangeLog, ChangeLog, QAfterWhereClause> idGreaterThan(
    int id, {
    bool include = false,
  }) {
    return addWhereClauseInternal(WhereClause(
      indexName: null,
      lower: [id],
      includeLower: include,
    ));
  }

  QueryBuilder<ChangeLog, ChangeLog, QAfterWhereClause> idLessThan(
    int id, {
    bool include = false,
  }) {
    return addWhereClauseInternal(WhereClause(
      indexName: null,
      upper: [id],
      includeUpper: include,
    ));
  }

  QueryBuilder<ChangeLog, ChangeLog, QAfterWhereClause> idBetween(
    int lowerId,
    int upperId, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addWhereClauseInternal(WhereClause(
      indexName: null,
      lower: [lowerId],
      includeLower: includeLower,
      upper: [upperId],
      includeUpper: includeUpper,
    ));
  }

  QueryBuilder<ChangeLog, ChangeLog, QAfterWhereClause> commitIdEqualTo(
      String commitId) {
    return addWhereClauseInternal(WhereClause(
      indexName: 'commitId',
      lower: [commitId],
      includeLower: true,
      upper: [commitId],
      includeUpper: true,
    ));
  }

  QueryBuilder<ChangeLog, ChangeLog, QAfterWhereClause> commitIdNotEqualTo(
      String commitId) {
    if (whereSortInternal == Sort.asc) {
      return addWhereClauseInternal(WhereClause(
        indexName: 'commitId',
        upper: [commitId],
        includeUpper: false,
      )).addWhereClauseInternal(WhereClause(
        indexName: 'commitId',
        lower: [commitId],
        includeLower: false,
      ));
    } else {
      return addWhereClauseInternal(WhereClause(
        indexName: 'commitId',
        lower: [commitId],
        includeLower: false,
      )).addWhereClauseInternal(WhereClause(
        indexName: 'commitId',
        upper: [commitId],
        includeUpper: false,
      ));
    }
  }
}

extension ChangeLogQueryFilter
    on QueryBuilder<ChangeLog, ChangeLog, QFilterCondition> {
  QueryBuilder<ChangeLog, ChangeLog, QAfterFilterCondition> commitIdEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'commitId',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<ChangeLog, ChangeLog, QAfterFilterCondition> commitIdGreaterThan(
    String value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'commitId',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<ChangeLog, ChangeLog, QAfterFilterCondition> commitIdLessThan(
    String value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'commitId',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<ChangeLog, ChangeLog, QAfterFilterCondition> commitIdBetween(
    String lower,
    String upper, {
    bool caseSensitive = true,
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'commitId',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<ChangeLog, ChangeLog, QAfterFilterCondition> commitIdStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.startsWith,
      property: 'commitId',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<ChangeLog, ChangeLog, QAfterFilterCondition> commitIdEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.endsWith,
      property: 'commitId',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<ChangeLog, ChangeLog, QAfterFilterCondition> commitIdContains(
      String value,
      {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.contains,
      property: 'commitId',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<ChangeLog, ChangeLog, QAfterFilterCondition> commitIdMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.matches,
      property: 'commitId',
      value: pattern,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<ChangeLog, ChangeLog, QAfterFilterCondition> createdAtEqualTo(
      DateTime value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'createdAt',
      value: value,
    ));
  }

  QueryBuilder<ChangeLog, ChangeLog, QAfterFilterCondition>
      createdAtGreaterThan(
    DateTime value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'createdAt',
      value: value,
    ));
  }

  QueryBuilder<ChangeLog, ChangeLog, QAfterFilterCondition> createdAtLessThan(
    DateTime value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'createdAt',
      value: value,
    ));
  }

  QueryBuilder<ChangeLog, ChangeLog, QAfterFilterCondition> createdAtBetween(
    DateTime lower,
    DateTime upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'createdAt',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
    ));
  }

  QueryBuilder<ChangeLog, ChangeLog, QAfterFilterCondition>
      createdDishesAnyEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'createdDishes',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<ChangeLog, ChangeLog, QAfterFilterCondition>
      createdDishesAnyGreaterThan(
    String value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'createdDishes',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<ChangeLog, ChangeLog, QAfterFilterCondition>
      createdDishesAnyLessThan(
    String value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'createdDishes',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<ChangeLog, ChangeLog, QAfterFilterCondition>
      createdDishesAnyBetween(
    String lower,
    String upper, {
    bool caseSensitive = true,
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'createdDishes',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<ChangeLog, ChangeLog, QAfterFilterCondition>
      createdDishesAnyStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.startsWith,
      property: 'createdDishes',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<ChangeLog, ChangeLog, QAfterFilterCondition>
      createdDishesAnyEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.endsWith,
      property: 'createdDishes',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<ChangeLog, ChangeLog, QAfterFilterCondition>
      createdDishesAnyContains(String value, {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.contains,
      property: 'createdDishes',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<ChangeLog, ChangeLog, QAfterFilterCondition>
      createdDishesAnyMatches(String pattern, {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.matches,
      property: 'createdDishes',
      value: pattern,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<ChangeLog, ChangeLog, QAfterFilterCondition> idEqualTo(
      int value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'id',
      value: value,
    ));
  }

  QueryBuilder<ChangeLog, ChangeLog, QAfterFilterCondition> idGreaterThan(
    int value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'id',
      value: value,
    ));
  }

  QueryBuilder<ChangeLog, ChangeLog, QAfterFilterCondition> idLessThan(
    int value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'id',
      value: value,
    ));
  }

  QueryBuilder<ChangeLog, ChangeLog, QAfterFilterCondition> idBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'id',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
    ));
  }

  QueryBuilder<ChangeLog, ChangeLog, QAfterFilterCondition>
      updatedDishesAnyEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'updatedDishes',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<ChangeLog, ChangeLog, QAfterFilterCondition>
      updatedDishesAnyGreaterThan(
    String value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'updatedDishes',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<ChangeLog, ChangeLog, QAfterFilterCondition>
      updatedDishesAnyLessThan(
    String value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'updatedDishes',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<ChangeLog, ChangeLog, QAfterFilterCondition>
      updatedDishesAnyBetween(
    String lower,
    String upper, {
    bool caseSensitive = true,
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'updatedDishes',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<ChangeLog, ChangeLog, QAfterFilterCondition>
      updatedDishesAnyStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.startsWith,
      property: 'updatedDishes',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<ChangeLog, ChangeLog, QAfterFilterCondition>
      updatedDishesAnyEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.endsWith,
      property: 'updatedDishes',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<ChangeLog, ChangeLog, QAfterFilterCondition>
      updatedDishesAnyContains(String value, {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.contains,
      property: 'updatedDishes',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<ChangeLog, ChangeLog, QAfterFilterCondition>
      updatedDishesAnyMatches(String pattern, {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.matches,
      property: 'updatedDishes',
      value: pattern,
      caseSensitive: caseSensitive,
    ));
  }
}

extension ChangeLogQueryLinks
    on QueryBuilder<ChangeLog, ChangeLog, QFilterCondition> {}

extension ChangeLogQueryWhereSortBy
    on QueryBuilder<ChangeLog, ChangeLog, QSortBy> {
  QueryBuilder<ChangeLog, ChangeLog, QAfterSortBy> sortByCommitId() {
    return addSortByInternal('commitId', Sort.asc);
  }

  QueryBuilder<ChangeLog, ChangeLog, QAfterSortBy> sortByCommitIdDesc() {
    return addSortByInternal('commitId', Sort.desc);
  }

  QueryBuilder<ChangeLog, ChangeLog, QAfterSortBy> sortByCreatedAt() {
    return addSortByInternal('createdAt', Sort.asc);
  }

  QueryBuilder<ChangeLog, ChangeLog, QAfterSortBy> sortByCreatedAtDesc() {
    return addSortByInternal('createdAt', Sort.desc);
  }

  QueryBuilder<ChangeLog, ChangeLog, QAfterSortBy> sortById() {
    return addSortByInternal('id', Sort.asc);
  }

  QueryBuilder<ChangeLog, ChangeLog, QAfterSortBy> sortByIdDesc() {
    return addSortByInternal('id', Sort.desc);
  }
}

extension ChangeLogQueryWhereSortThenBy
    on QueryBuilder<ChangeLog, ChangeLog, QSortThenBy> {
  QueryBuilder<ChangeLog, ChangeLog, QAfterSortBy> thenByCommitId() {
    return addSortByInternal('commitId', Sort.asc);
  }

  QueryBuilder<ChangeLog, ChangeLog, QAfterSortBy> thenByCommitIdDesc() {
    return addSortByInternal('commitId', Sort.desc);
  }

  QueryBuilder<ChangeLog, ChangeLog, QAfterSortBy> thenByCreatedAt() {
    return addSortByInternal('createdAt', Sort.asc);
  }

  QueryBuilder<ChangeLog, ChangeLog, QAfterSortBy> thenByCreatedAtDesc() {
    return addSortByInternal('createdAt', Sort.desc);
  }

  QueryBuilder<ChangeLog, ChangeLog, QAfterSortBy> thenById() {
    return addSortByInternal('id', Sort.asc);
  }

  QueryBuilder<ChangeLog, ChangeLog, QAfterSortBy> thenByIdDesc() {
    return addSortByInternal('id', Sort.desc);
  }
}

extension ChangeLogQueryWhereDistinct
    on QueryBuilder<ChangeLog, ChangeLog, QDistinct> {
  QueryBuilder<ChangeLog, ChangeLog, QDistinct> distinctByCommitId(
      {bool caseSensitive = true}) {
    return addDistinctByInternal('commitId', caseSensitive: caseSensitive);
  }

  QueryBuilder<ChangeLog, ChangeLog, QDistinct> distinctByCreatedAt() {
    return addDistinctByInternal('createdAt');
  }

  QueryBuilder<ChangeLog, ChangeLog, QDistinct> distinctById() {
    return addDistinctByInternal('id');
  }
}

extension ChangeLogQueryProperty
    on QueryBuilder<ChangeLog, ChangeLog, QQueryProperty> {
  QueryBuilder<ChangeLog, String, QQueryOperations> commitIdProperty() {
    return addPropertyNameInternal('commitId');
  }

  QueryBuilder<ChangeLog, DateTime, QQueryOperations> createdAtProperty() {
    return addPropertyNameInternal('createdAt');
  }

  QueryBuilder<ChangeLog, List<String>, QQueryOperations>
      createdDishesProperty() {
    return addPropertyNameInternal('createdDishes');
  }

  QueryBuilder<ChangeLog, int, QQueryOperations> idProperty() {
    return addPropertyNameInternal('id');
  }

  QueryBuilder<ChangeLog, List<String>, QQueryOperations>
      updatedDishesProperty() {
    return addPropertyNameInternal('updatedDishes');
  }
}
