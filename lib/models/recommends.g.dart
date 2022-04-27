// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'recommends.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// ignore_for_file: duplicate_ignore, non_constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast

extension GetRecommendCollection on Isar {
  IsarCollection<Recommend> get recommends {
    return getCollection('Recommend');
  }
}

final RecommendSchema = CollectionSchema(
  name: 'Recommend',
  schema:
      '{"name":"Recommend","idName":"id","properties":[{"name":"cover","type":"String"},{"name":"name","type":"String"}],"indexes":[{"name":"name","unique":true,"properties":[{"name":"name","type":"Hash","caseSensitive":true}]}],"links":[]}',
  nativeAdapter: const _RecommendNativeAdapter(),
  webAdapter: const _RecommendWebAdapter(),
  idName: 'id',
  propertyIds: {'cover': 0, 'name': 1},
  listProperties: {},
  indexIds: {'name': 0},
  indexTypes: {
    'name': [
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

class _RecommendWebAdapter extends IsarWebTypeAdapter<Recommend> {
  const _RecommendWebAdapter();

  @override
  Object serialize(IsarCollection<Recommend> collection, Recommend object) {
    final jsObj = IsarNative.newJsObject();
    IsarNative.jsObjectSet(jsObj, 'cover', object.cover);
    IsarNative.jsObjectSet(jsObj, 'id', object.id);
    IsarNative.jsObjectSet(jsObj, 'name', object.name);
    return jsObj;
  }

  @override
  Recommend deserialize(IsarCollection<Recommend> collection, dynamic jsObj) {
    final object = Recommend();
    object.cover = IsarNative.jsObjectGet(jsObj, 'cover') ?? '';
    object.id = IsarNative.jsObjectGet(jsObj, 'id') ?? double.negativeInfinity;
    object.name = IsarNative.jsObjectGet(jsObj, 'name') ?? '';
    return object;
  }

  @override
  P deserializeProperty<P>(Object jsObj, String propertyName) {
    switch (propertyName) {
      case 'cover':
        return (IsarNative.jsObjectGet(jsObj, 'cover') ?? '') as P;
      case 'id':
        return (IsarNative.jsObjectGet(jsObj, 'id') ?? double.negativeInfinity)
            as P;
      case 'name':
        return (IsarNative.jsObjectGet(jsObj, 'name') ?? '') as P;
      default:
        throw 'Illegal propertyName';
    }
  }

  @override
  void attachLinks(Isar isar, int id, Recommend object) {}
}

class _RecommendNativeAdapter extends IsarNativeTypeAdapter<Recommend> {
  const _RecommendNativeAdapter();

  @override
  void serialize(IsarCollection<Recommend> collection, IsarRawObject rawObj,
      Recommend object, int staticSize, List<int> offsets, AdapterAlloc alloc) {
    var dynamicSize = 0;
    final value0 = object.cover;
    final _cover = IsarBinaryWriter.utf8Encoder.convert(value0);
    dynamicSize += (_cover.length) as int;
    final value1 = object.name;
    final _name = IsarBinaryWriter.utf8Encoder.convert(value1);
    dynamicSize += (_name.length) as int;
    final size = staticSize + dynamicSize;

    rawObj.buffer = alloc(size);
    rawObj.buffer_length = size;
    final buffer = IsarNative.bufAsBytes(rawObj.buffer, size);
    final writer = IsarBinaryWriter(buffer, staticSize);
    writer.writeBytes(offsets[0], _cover);
    writer.writeBytes(offsets[1], _name);
  }

  @override
  Recommend deserialize(IsarCollection<Recommend> collection, int id,
      IsarBinaryReader reader, List<int> offsets) {
    final object = Recommend();
    object.cover = reader.readString(offsets[0]);
    object.id = id;
    object.name = reader.readString(offsets[1]);
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
        return (reader.readString(offset)) as P;
      default:
        throw 'Illegal propertyIndex';
    }
  }

  @override
  void attachLinks(Isar isar, int id, Recommend object) {}
}

extension RecommendByIndex on IsarCollection<Recommend> {
  Future<Recommend?> getByName(String name) {
    return getByIndex('name', [name]);
  }

  Recommend? getByNameSync(String name) {
    return getByIndexSync('name', [name]);
  }

  Future<bool> deleteByName(String name) {
    return deleteByIndex('name', [name]);
  }

  bool deleteByNameSync(String name) {
    return deleteByIndexSync('name', [name]);
  }

  Future<List<Recommend?>> getAllByName(List<String> nameValues) {
    final values = nameValues.map((e) => [e]).toList();
    return getAllByIndex('name', values);
  }

  List<Recommend?> getAllByNameSync(List<String> nameValues) {
    final values = nameValues.map((e) => [e]).toList();
    return getAllByIndexSync('name', values);
  }

  Future<int> deleteAllByName(List<String> nameValues) {
    final values = nameValues.map((e) => [e]).toList();
    return deleteAllByIndex('name', values);
  }

  int deleteAllByNameSync(List<String> nameValues) {
    final values = nameValues.map((e) => [e]).toList();
    return deleteAllByIndexSync('name', values);
  }
}

extension RecommendQueryWhereSort
    on QueryBuilder<Recommend, Recommend, QWhere> {
  QueryBuilder<Recommend, Recommend, QAfterWhere> anyId() {
    return addWhereClauseInternal(const WhereClause(indexName: null));
  }

  QueryBuilder<Recommend, Recommend, QAfterWhere> anyName() {
    return addWhereClauseInternal(const WhereClause(indexName: 'name'));
  }
}

extension RecommendQueryWhere
    on QueryBuilder<Recommend, Recommend, QWhereClause> {
  QueryBuilder<Recommend, Recommend, QAfterWhereClause> idEqualTo(int id) {
    return addWhereClauseInternal(WhereClause(
      indexName: null,
      lower: [id],
      includeLower: true,
      upper: [id],
      includeUpper: true,
    ));
  }

  QueryBuilder<Recommend, Recommend, QAfterWhereClause> idNotEqualTo(int id) {
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

  QueryBuilder<Recommend, Recommend, QAfterWhereClause> idGreaterThan(
    int id, {
    bool include = false,
  }) {
    return addWhereClauseInternal(WhereClause(
      indexName: null,
      lower: [id],
      includeLower: include,
    ));
  }

  QueryBuilder<Recommend, Recommend, QAfterWhereClause> idLessThan(
    int id, {
    bool include = false,
  }) {
    return addWhereClauseInternal(WhereClause(
      indexName: null,
      upper: [id],
      includeUpper: include,
    ));
  }

  QueryBuilder<Recommend, Recommend, QAfterWhereClause> idBetween(
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

  QueryBuilder<Recommend, Recommend, QAfterWhereClause> nameEqualTo(
      String name) {
    return addWhereClauseInternal(WhereClause(
      indexName: 'name',
      lower: [name],
      includeLower: true,
      upper: [name],
      includeUpper: true,
    ));
  }

  QueryBuilder<Recommend, Recommend, QAfterWhereClause> nameNotEqualTo(
      String name) {
    if (whereSortInternal == Sort.asc) {
      return addWhereClauseInternal(WhereClause(
        indexName: 'name',
        upper: [name],
        includeUpper: false,
      )).addWhereClauseInternal(WhereClause(
        indexName: 'name',
        lower: [name],
        includeLower: false,
      ));
    } else {
      return addWhereClauseInternal(WhereClause(
        indexName: 'name',
        lower: [name],
        includeLower: false,
      )).addWhereClauseInternal(WhereClause(
        indexName: 'name',
        upper: [name],
        includeUpper: false,
      ));
    }
  }
}

extension RecommendQueryFilter
    on QueryBuilder<Recommend, Recommend, QFilterCondition> {
  QueryBuilder<Recommend, Recommend, QAfterFilterCondition> coverEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'cover',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Recommend, Recommend, QAfterFilterCondition> coverGreaterThan(
    String value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'cover',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Recommend, Recommend, QAfterFilterCondition> coverLessThan(
    String value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'cover',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Recommend, Recommend, QAfterFilterCondition> coverBetween(
    String lower,
    String upper, {
    bool caseSensitive = true,
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'cover',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Recommend, Recommend, QAfterFilterCondition> coverStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.startsWith,
      property: 'cover',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Recommend, Recommend, QAfterFilterCondition> coverEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.endsWith,
      property: 'cover',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Recommend, Recommend, QAfterFilterCondition> coverContains(
      String value,
      {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.contains,
      property: 'cover',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Recommend, Recommend, QAfterFilterCondition> coverMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.matches,
      property: 'cover',
      value: pattern,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Recommend, Recommend, QAfterFilterCondition> idEqualTo(
      int value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'id',
      value: value,
    ));
  }

  QueryBuilder<Recommend, Recommend, QAfterFilterCondition> idGreaterThan(
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

  QueryBuilder<Recommend, Recommend, QAfterFilterCondition> idLessThan(
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

  QueryBuilder<Recommend, Recommend, QAfterFilterCondition> idBetween(
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

  QueryBuilder<Recommend, Recommend, QAfterFilterCondition> nameEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'name',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Recommend, Recommend, QAfterFilterCondition> nameGreaterThan(
    String value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'name',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Recommend, Recommend, QAfterFilterCondition> nameLessThan(
    String value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'name',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Recommend, Recommend, QAfterFilterCondition> nameBetween(
    String lower,
    String upper, {
    bool caseSensitive = true,
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'name',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Recommend, Recommend, QAfterFilterCondition> nameStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.startsWith,
      property: 'name',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Recommend, Recommend, QAfterFilterCondition> nameEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.endsWith,
      property: 'name',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Recommend, Recommend, QAfterFilterCondition> nameContains(
      String value,
      {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.contains,
      property: 'name',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Recommend, Recommend, QAfterFilterCondition> nameMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.matches,
      property: 'name',
      value: pattern,
      caseSensitive: caseSensitive,
    ));
  }
}

extension RecommendQueryLinks
    on QueryBuilder<Recommend, Recommend, QFilterCondition> {}

extension RecommendQueryWhereSortBy
    on QueryBuilder<Recommend, Recommend, QSortBy> {
  QueryBuilder<Recommend, Recommend, QAfterSortBy> sortByCover() {
    return addSortByInternal('cover', Sort.asc);
  }

  QueryBuilder<Recommend, Recommend, QAfterSortBy> sortByCoverDesc() {
    return addSortByInternal('cover', Sort.desc);
  }

  QueryBuilder<Recommend, Recommend, QAfterSortBy> sortById() {
    return addSortByInternal('id', Sort.asc);
  }

  QueryBuilder<Recommend, Recommend, QAfterSortBy> sortByIdDesc() {
    return addSortByInternal('id', Sort.desc);
  }

  QueryBuilder<Recommend, Recommend, QAfterSortBy> sortByName() {
    return addSortByInternal('name', Sort.asc);
  }

  QueryBuilder<Recommend, Recommend, QAfterSortBy> sortByNameDesc() {
    return addSortByInternal('name', Sort.desc);
  }
}

extension RecommendQueryWhereSortThenBy
    on QueryBuilder<Recommend, Recommend, QSortThenBy> {
  QueryBuilder<Recommend, Recommend, QAfterSortBy> thenByCover() {
    return addSortByInternal('cover', Sort.asc);
  }

  QueryBuilder<Recommend, Recommend, QAfterSortBy> thenByCoverDesc() {
    return addSortByInternal('cover', Sort.desc);
  }

  QueryBuilder<Recommend, Recommend, QAfterSortBy> thenById() {
    return addSortByInternal('id', Sort.asc);
  }

  QueryBuilder<Recommend, Recommend, QAfterSortBy> thenByIdDesc() {
    return addSortByInternal('id', Sort.desc);
  }

  QueryBuilder<Recommend, Recommend, QAfterSortBy> thenByName() {
    return addSortByInternal('name', Sort.asc);
  }

  QueryBuilder<Recommend, Recommend, QAfterSortBy> thenByNameDesc() {
    return addSortByInternal('name', Sort.desc);
  }
}

extension RecommendQueryWhereDistinct
    on QueryBuilder<Recommend, Recommend, QDistinct> {
  QueryBuilder<Recommend, Recommend, QDistinct> distinctByCover(
      {bool caseSensitive = true}) {
    return addDistinctByInternal('cover', caseSensitive: caseSensitive);
  }

  QueryBuilder<Recommend, Recommend, QDistinct> distinctById() {
    return addDistinctByInternal('id');
  }

  QueryBuilder<Recommend, Recommend, QDistinct> distinctByName(
      {bool caseSensitive = true}) {
    return addDistinctByInternal('name', caseSensitive: caseSensitive);
  }
}

extension RecommendQueryProperty
    on QueryBuilder<Recommend, Recommend, QQueryProperty> {
  QueryBuilder<Recommend, String, QQueryOperations> coverProperty() {
    return addPropertyNameInternal('cover');
  }

  QueryBuilder<Recommend, int, QQueryOperations> idProperty() {
    return addPropertyNameInternal('id');
  }

  QueryBuilder<Recommend, String, QQueryOperations> nameProperty() {
    return addPropertyNameInternal('name');
  }
}
