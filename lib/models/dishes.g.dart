// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dishes.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// ignore_for_file: duplicate_ignore, non_constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast

extension GetDishCollection on Isar {
  IsarCollection<Dish> get dishes {
    return getCollection('Dish');
  }
}

final DishSchema = CollectionSchema(
  name: 'Dish',
  schema:
      '{"name":"Dish","idName":"id","properties":[{"name":"category","type":"String"},{"name":"extra","type":"String"},{"name":"formula","type":"String"},{"name":"hash","type":"String"},{"name":"ingredients","type":"String"},{"name":"name","type":"String"},{"name":"priority","type":"Long"},{"name":"steps","type":"String"},{"name":"summary","type":"String"},{"name":"updatedAt","type":"Long"}],"indexes":[{"name":"name","unique":true,"properties":[{"name":"name","type":"Hash","caseSensitive":true}]}],"links":[]}',
  nativeAdapter: const _DishNativeAdapter(),
  webAdapter: const _DishWebAdapter(),
  idName: 'id',
  propertyIds: {
    'category': 0,
    'extra': 1,
    'formula': 2,
    'hash': 3,
    'ingredients': 4,
    'name': 5,
    'priority': 6,
    'steps': 7,
    'summary': 8,
    'updatedAt': 9
  },
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

class _DishWebAdapter extends IsarWebTypeAdapter<Dish> {
  const _DishWebAdapter();

  @override
  Object serialize(IsarCollection<Dish> collection, Dish object) {
    final jsObj = IsarNative.newJsObject();
    IsarNative.jsObjectSet(jsObj, 'category', object.category);
    IsarNative.jsObjectSet(jsObj, 'extra', object.extra);
    IsarNative.jsObjectSet(jsObj, 'formula', object.formula);
    IsarNative.jsObjectSet(jsObj, 'hash', object.hash);
    IsarNative.jsObjectSet(jsObj, 'id', object.id);
    IsarNative.jsObjectSet(jsObj, 'ingredients', object.ingredients);
    IsarNative.jsObjectSet(jsObj, 'name', object.name);
    IsarNative.jsObjectSet(jsObj, 'priority', object.priority);
    IsarNative.jsObjectSet(jsObj, 'steps', object.steps);
    IsarNative.jsObjectSet(jsObj, 'summary', object.summary);
    IsarNative.jsObjectSet(
        jsObj, 'updatedAt', object.updatedAt.toUtc().millisecondsSinceEpoch);
    return jsObj;
  }

  @override
  Dish deserialize(IsarCollection<Dish> collection, dynamic jsObj) {
    final object = Dish();
    object.category = IsarNative.jsObjectGet(jsObj, 'category') ?? '';
    object.extra = IsarNative.jsObjectGet(jsObj, 'extra');
    object.formula = IsarNative.jsObjectGet(jsObj, 'formula');
    object.hash = IsarNative.jsObjectGet(jsObj, 'hash') ?? '';
    object.id = IsarNative.jsObjectGet(jsObj, 'id') ?? double.negativeInfinity;
    object.ingredients = IsarNative.jsObjectGet(jsObj, 'ingredients') ?? '';
    object.name = IsarNative.jsObjectGet(jsObj, 'name') ?? '';
    object.priority =
        IsarNative.jsObjectGet(jsObj, 'priority') ?? double.negativeInfinity;
    object.steps = IsarNative.jsObjectGet(jsObj, 'steps') ?? '';
    object.summary = IsarNative.jsObjectGet(jsObj, 'summary');
    object.updatedAt = IsarNative.jsObjectGet(jsObj, 'updatedAt') != null
        ? DateTime.fromMillisecondsSinceEpoch(
                IsarNative.jsObjectGet(jsObj, 'updatedAt'),
                isUtc: true)
            .toLocal()
        : DateTime.fromMillisecondsSinceEpoch(0);
    return object;
  }

  @override
  P deserializeProperty<P>(Object jsObj, String propertyName) {
    switch (propertyName) {
      case 'category':
        return (IsarNative.jsObjectGet(jsObj, 'category') ?? '') as P;
      case 'extra':
        return (IsarNative.jsObjectGet(jsObj, 'extra')) as P;
      case 'formula':
        return (IsarNative.jsObjectGet(jsObj, 'formula')) as P;
      case 'hash':
        return (IsarNative.jsObjectGet(jsObj, 'hash') ?? '') as P;
      case 'id':
        return (IsarNative.jsObjectGet(jsObj, 'id') ?? double.negativeInfinity)
            as P;
      case 'ingredients':
        return (IsarNative.jsObjectGet(jsObj, 'ingredients') ?? '') as P;
      case 'name':
        return (IsarNative.jsObjectGet(jsObj, 'name') ?? '') as P;
      case 'priority':
        return (IsarNative.jsObjectGet(jsObj, 'priority') ??
            double.negativeInfinity) as P;
      case 'steps':
        return (IsarNative.jsObjectGet(jsObj, 'steps') ?? '') as P;
      case 'summary':
        return (IsarNative.jsObjectGet(jsObj, 'summary')) as P;
      case 'updatedAt':
        return (IsarNative.jsObjectGet(jsObj, 'updatedAt') != null
            ? DateTime.fromMillisecondsSinceEpoch(
                    IsarNative.jsObjectGet(jsObj, 'updatedAt'),
                    isUtc: true)
                .toLocal()
            : DateTime.fromMillisecondsSinceEpoch(0)) as P;
      default:
        throw 'Illegal propertyName';
    }
  }

  @override
  void attachLinks(Isar isar, int id, Dish object) {}
}

class _DishNativeAdapter extends IsarNativeTypeAdapter<Dish> {
  const _DishNativeAdapter();

  @override
  void serialize(IsarCollection<Dish> collection, IsarRawObject rawObj,
      Dish object, int staticSize, List<int> offsets, AdapterAlloc alloc) {
    var dynamicSize = 0;
    final value0 = object.category;
    final _category = IsarBinaryWriter.utf8Encoder.convert(value0);
    dynamicSize += (_category.length) as int;
    final value1 = object.extra;
    IsarUint8List? _extra;
    if (value1 != null) {
      _extra = IsarBinaryWriter.utf8Encoder.convert(value1);
    }
    dynamicSize += (_extra?.length ?? 0) as int;
    final value2 = object.formula;
    IsarUint8List? _formula;
    if (value2 != null) {
      _formula = IsarBinaryWriter.utf8Encoder.convert(value2);
    }
    dynamicSize += (_formula?.length ?? 0) as int;
    final value3 = object.hash;
    final _hash = IsarBinaryWriter.utf8Encoder.convert(value3);
    dynamicSize += (_hash.length) as int;
    final value4 = object.ingredients;
    final _ingredients = IsarBinaryWriter.utf8Encoder.convert(value4);
    dynamicSize += (_ingredients.length) as int;
    final value5 = object.name;
    final _name = IsarBinaryWriter.utf8Encoder.convert(value5);
    dynamicSize += (_name.length) as int;
    final value6 = object.priority;
    final _priority = value6;
    final value7 = object.steps;
    final _steps = IsarBinaryWriter.utf8Encoder.convert(value7);
    dynamicSize += (_steps.length) as int;
    final value8 = object.summary;
    IsarUint8List? _summary;
    if (value8 != null) {
      _summary = IsarBinaryWriter.utf8Encoder.convert(value8);
    }
    dynamicSize += (_summary?.length ?? 0) as int;
    final value9 = object.updatedAt;
    final _updatedAt = value9;
    final size = staticSize + dynamicSize;

    rawObj.buffer = alloc(size);
    rawObj.buffer_length = size;
    final buffer = IsarNative.bufAsBytes(rawObj.buffer, size);
    final writer = IsarBinaryWriter(buffer, staticSize);
    writer.writeBytes(offsets[0], _category);
    writer.writeBytes(offsets[1], _extra);
    writer.writeBytes(offsets[2], _formula);
    writer.writeBytes(offsets[3], _hash);
    writer.writeBytes(offsets[4], _ingredients);
    writer.writeBytes(offsets[5], _name);
    writer.writeLong(offsets[6], _priority);
    writer.writeBytes(offsets[7], _steps);
    writer.writeBytes(offsets[8], _summary);
    writer.writeDateTime(offsets[9], _updatedAt);
  }

  @override
  Dish deserialize(IsarCollection<Dish> collection, int id,
      IsarBinaryReader reader, List<int> offsets) {
    final object = Dish();
    object.category = reader.readString(offsets[0]);
    object.extra = reader.readStringOrNull(offsets[1]);
    object.formula = reader.readStringOrNull(offsets[2]);
    object.hash = reader.readString(offsets[3]);
    object.id = id;
    object.ingredients = reader.readString(offsets[4]);
    object.name = reader.readString(offsets[5]);
    object.priority = reader.readLong(offsets[6]);
    object.steps = reader.readString(offsets[7]);
    object.summary = reader.readStringOrNull(offsets[8]);
    object.updatedAt = reader.readDateTime(offsets[9]);
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
        return (reader.readStringOrNull(offset)) as P;
      case 2:
        return (reader.readStringOrNull(offset)) as P;
      case 3:
        return (reader.readString(offset)) as P;
      case 4:
        return (reader.readString(offset)) as P;
      case 5:
        return (reader.readString(offset)) as P;
      case 6:
        return (reader.readLong(offset)) as P;
      case 7:
        return (reader.readString(offset)) as P;
      case 8:
        return (reader.readStringOrNull(offset)) as P;
      case 9:
        return (reader.readDateTime(offset)) as P;
      default:
        throw 'Illegal propertyIndex';
    }
  }

  @override
  void attachLinks(Isar isar, int id, Dish object) {}
}

extension DishByIndex on IsarCollection<Dish> {
  Future<Dish?> getByName(String name) {
    return getByIndex('name', [name]);
  }

  Dish? getByNameSync(String name) {
    return getByIndexSync('name', [name]);
  }

  Future<bool> deleteByName(String name) {
    return deleteByIndex('name', [name]);
  }

  bool deleteByNameSync(String name) {
    return deleteByIndexSync('name', [name]);
  }

  Future<List<Dish?>> getAllByName(List<String> nameValues) {
    final values = nameValues.map((e) => [e]).toList();
    return getAllByIndex('name', values);
  }

  List<Dish?> getAllByNameSync(List<String> nameValues) {
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

extension DishQueryWhereSort on QueryBuilder<Dish, Dish, QWhere> {
  QueryBuilder<Dish, Dish, QAfterWhere> anyId() {
    return addWhereClauseInternal(const WhereClause(indexName: null));
  }

  QueryBuilder<Dish, Dish, QAfterWhere> anyName() {
    return addWhereClauseInternal(const WhereClause(indexName: 'name'));
  }
}

extension DishQueryWhere on QueryBuilder<Dish, Dish, QWhereClause> {
  QueryBuilder<Dish, Dish, QAfterWhereClause> idEqualTo(int id) {
    return addWhereClauseInternal(WhereClause(
      indexName: null,
      lower: [id],
      includeLower: true,
      upper: [id],
      includeUpper: true,
    ));
  }

  QueryBuilder<Dish, Dish, QAfterWhereClause> idNotEqualTo(int id) {
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

  QueryBuilder<Dish, Dish, QAfterWhereClause> idGreaterThan(
    int id, {
    bool include = false,
  }) {
    return addWhereClauseInternal(WhereClause(
      indexName: null,
      lower: [id],
      includeLower: include,
    ));
  }

  QueryBuilder<Dish, Dish, QAfterWhereClause> idLessThan(
    int id, {
    bool include = false,
  }) {
    return addWhereClauseInternal(WhereClause(
      indexName: null,
      upper: [id],
      includeUpper: include,
    ));
  }

  QueryBuilder<Dish, Dish, QAfterWhereClause> idBetween(
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

  QueryBuilder<Dish, Dish, QAfterWhereClause> nameEqualTo(String name) {
    return addWhereClauseInternal(WhereClause(
      indexName: 'name',
      lower: [name],
      includeLower: true,
      upper: [name],
      includeUpper: true,
    ));
  }

  QueryBuilder<Dish, Dish, QAfterWhereClause> nameNotEqualTo(String name) {
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

extension DishQueryFilter on QueryBuilder<Dish, Dish, QFilterCondition> {
  QueryBuilder<Dish, Dish, QAfterFilterCondition> categoryEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'category',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Dish, Dish, QAfterFilterCondition> categoryGreaterThan(
    String value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'category',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Dish, Dish, QAfterFilterCondition> categoryLessThan(
    String value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'category',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Dish, Dish, QAfterFilterCondition> categoryBetween(
    String lower,
    String upper, {
    bool caseSensitive = true,
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'category',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Dish, Dish, QAfterFilterCondition> categoryStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.startsWith,
      property: 'category',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Dish, Dish, QAfterFilterCondition> categoryEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.endsWith,
      property: 'category',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Dish, Dish, QAfterFilterCondition> categoryContains(String value,
      {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.contains,
      property: 'category',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Dish, Dish, QAfterFilterCondition> categoryMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.matches,
      property: 'category',
      value: pattern,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Dish, Dish, QAfterFilterCondition> extraIsNull() {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.isNull,
      property: 'extra',
      value: null,
    ));
  }

  QueryBuilder<Dish, Dish, QAfterFilterCondition> extraEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'extra',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Dish, Dish, QAfterFilterCondition> extraGreaterThan(
    String? value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'extra',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Dish, Dish, QAfterFilterCondition> extraLessThan(
    String? value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'extra',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Dish, Dish, QAfterFilterCondition> extraBetween(
    String? lower,
    String? upper, {
    bool caseSensitive = true,
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'extra',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Dish, Dish, QAfterFilterCondition> extraStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.startsWith,
      property: 'extra',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Dish, Dish, QAfterFilterCondition> extraEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.endsWith,
      property: 'extra',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Dish, Dish, QAfterFilterCondition> extraContains(String value,
      {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.contains,
      property: 'extra',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Dish, Dish, QAfterFilterCondition> extraMatches(String pattern,
      {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.matches,
      property: 'extra',
      value: pattern,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Dish, Dish, QAfterFilterCondition> formulaIsNull() {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.isNull,
      property: 'formula',
      value: null,
    ));
  }

  QueryBuilder<Dish, Dish, QAfterFilterCondition> formulaEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'formula',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Dish, Dish, QAfterFilterCondition> formulaGreaterThan(
    String? value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'formula',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Dish, Dish, QAfterFilterCondition> formulaLessThan(
    String? value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'formula',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Dish, Dish, QAfterFilterCondition> formulaBetween(
    String? lower,
    String? upper, {
    bool caseSensitive = true,
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'formula',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Dish, Dish, QAfterFilterCondition> formulaStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.startsWith,
      property: 'formula',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Dish, Dish, QAfterFilterCondition> formulaEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.endsWith,
      property: 'formula',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Dish, Dish, QAfterFilterCondition> formulaContains(String value,
      {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.contains,
      property: 'formula',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Dish, Dish, QAfterFilterCondition> formulaMatches(String pattern,
      {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.matches,
      property: 'formula',
      value: pattern,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Dish, Dish, QAfterFilterCondition> hashEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'hash',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Dish, Dish, QAfterFilterCondition> hashGreaterThan(
    String value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'hash',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Dish, Dish, QAfterFilterCondition> hashLessThan(
    String value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'hash',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Dish, Dish, QAfterFilterCondition> hashBetween(
    String lower,
    String upper, {
    bool caseSensitive = true,
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'hash',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Dish, Dish, QAfterFilterCondition> hashStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.startsWith,
      property: 'hash',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Dish, Dish, QAfterFilterCondition> hashEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.endsWith,
      property: 'hash',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Dish, Dish, QAfterFilterCondition> hashContains(String value,
      {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.contains,
      property: 'hash',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Dish, Dish, QAfterFilterCondition> hashMatches(String pattern,
      {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.matches,
      property: 'hash',
      value: pattern,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Dish, Dish, QAfterFilterCondition> idEqualTo(int value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'id',
      value: value,
    ));
  }

  QueryBuilder<Dish, Dish, QAfterFilterCondition> idGreaterThan(
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

  QueryBuilder<Dish, Dish, QAfterFilterCondition> idLessThan(
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

  QueryBuilder<Dish, Dish, QAfterFilterCondition> idBetween(
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

  QueryBuilder<Dish, Dish, QAfterFilterCondition> ingredientsEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'ingredients',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Dish, Dish, QAfterFilterCondition> ingredientsGreaterThan(
    String value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'ingredients',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Dish, Dish, QAfterFilterCondition> ingredientsLessThan(
    String value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'ingredients',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Dish, Dish, QAfterFilterCondition> ingredientsBetween(
    String lower,
    String upper, {
    bool caseSensitive = true,
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'ingredients',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Dish, Dish, QAfterFilterCondition> ingredientsStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.startsWith,
      property: 'ingredients',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Dish, Dish, QAfterFilterCondition> ingredientsEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.endsWith,
      property: 'ingredients',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Dish, Dish, QAfterFilterCondition> ingredientsContains(
      String value,
      {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.contains,
      property: 'ingredients',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Dish, Dish, QAfterFilterCondition> ingredientsMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.matches,
      property: 'ingredients',
      value: pattern,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Dish, Dish, QAfterFilterCondition> nameEqualTo(
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

  QueryBuilder<Dish, Dish, QAfterFilterCondition> nameGreaterThan(
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

  QueryBuilder<Dish, Dish, QAfterFilterCondition> nameLessThan(
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

  QueryBuilder<Dish, Dish, QAfterFilterCondition> nameBetween(
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

  QueryBuilder<Dish, Dish, QAfterFilterCondition> nameStartsWith(
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

  QueryBuilder<Dish, Dish, QAfterFilterCondition> nameEndsWith(
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

  QueryBuilder<Dish, Dish, QAfterFilterCondition> nameContains(String value,
      {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.contains,
      property: 'name',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Dish, Dish, QAfterFilterCondition> nameMatches(String pattern,
      {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.matches,
      property: 'name',
      value: pattern,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Dish, Dish, QAfterFilterCondition> priorityEqualTo(int value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'priority',
      value: value,
    ));
  }

  QueryBuilder<Dish, Dish, QAfterFilterCondition> priorityGreaterThan(
    int value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'priority',
      value: value,
    ));
  }

  QueryBuilder<Dish, Dish, QAfterFilterCondition> priorityLessThan(
    int value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'priority',
      value: value,
    ));
  }

  QueryBuilder<Dish, Dish, QAfterFilterCondition> priorityBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'priority',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
    ));
  }

  QueryBuilder<Dish, Dish, QAfterFilterCondition> stepsEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'steps',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Dish, Dish, QAfterFilterCondition> stepsGreaterThan(
    String value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'steps',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Dish, Dish, QAfterFilterCondition> stepsLessThan(
    String value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'steps',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Dish, Dish, QAfterFilterCondition> stepsBetween(
    String lower,
    String upper, {
    bool caseSensitive = true,
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'steps',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Dish, Dish, QAfterFilterCondition> stepsStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.startsWith,
      property: 'steps',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Dish, Dish, QAfterFilterCondition> stepsEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.endsWith,
      property: 'steps',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Dish, Dish, QAfterFilterCondition> stepsContains(String value,
      {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.contains,
      property: 'steps',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Dish, Dish, QAfterFilterCondition> stepsMatches(String pattern,
      {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.matches,
      property: 'steps',
      value: pattern,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Dish, Dish, QAfterFilterCondition> summaryIsNull() {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.isNull,
      property: 'summary',
      value: null,
    ));
  }

  QueryBuilder<Dish, Dish, QAfterFilterCondition> summaryEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'summary',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Dish, Dish, QAfterFilterCondition> summaryGreaterThan(
    String? value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'summary',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Dish, Dish, QAfterFilterCondition> summaryLessThan(
    String? value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'summary',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Dish, Dish, QAfterFilterCondition> summaryBetween(
    String? lower,
    String? upper, {
    bool caseSensitive = true,
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'summary',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Dish, Dish, QAfterFilterCondition> summaryStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.startsWith,
      property: 'summary',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Dish, Dish, QAfterFilterCondition> summaryEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.endsWith,
      property: 'summary',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Dish, Dish, QAfterFilterCondition> summaryContains(String value,
      {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.contains,
      property: 'summary',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Dish, Dish, QAfterFilterCondition> summaryMatches(String pattern,
      {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.matches,
      property: 'summary',
      value: pattern,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Dish, Dish, QAfterFilterCondition> updatedAtEqualTo(
      DateTime value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'updatedAt',
      value: value,
    ));
  }

  QueryBuilder<Dish, Dish, QAfterFilterCondition> updatedAtGreaterThan(
    DateTime value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'updatedAt',
      value: value,
    ));
  }

  QueryBuilder<Dish, Dish, QAfterFilterCondition> updatedAtLessThan(
    DateTime value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'updatedAt',
      value: value,
    ));
  }

  QueryBuilder<Dish, Dish, QAfterFilterCondition> updatedAtBetween(
    DateTime lower,
    DateTime upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'updatedAt',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
    ));
  }
}

extension DishQueryLinks on QueryBuilder<Dish, Dish, QFilterCondition> {}

extension DishQueryWhereSortBy on QueryBuilder<Dish, Dish, QSortBy> {
  QueryBuilder<Dish, Dish, QAfterSortBy> sortByCategory() {
    return addSortByInternal('category', Sort.asc);
  }

  QueryBuilder<Dish, Dish, QAfterSortBy> sortByCategoryDesc() {
    return addSortByInternal('category', Sort.desc);
  }

  QueryBuilder<Dish, Dish, QAfterSortBy> sortByExtra() {
    return addSortByInternal('extra', Sort.asc);
  }

  QueryBuilder<Dish, Dish, QAfterSortBy> sortByExtraDesc() {
    return addSortByInternal('extra', Sort.desc);
  }

  QueryBuilder<Dish, Dish, QAfterSortBy> sortByFormula() {
    return addSortByInternal('formula', Sort.asc);
  }

  QueryBuilder<Dish, Dish, QAfterSortBy> sortByFormulaDesc() {
    return addSortByInternal('formula', Sort.desc);
  }

  QueryBuilder<Dish, Dish, QAfterSortBy> sortByHash() {
    return addSortByInternal('hash', Sort.asc);
  }

  QueryBuilder<Dish, Dish, QAfterSortBy> sortByHashDesc() {
    return addSortByInternal('hash', Sort.desc);
  }

  QueryBuilder<Dish, Dish, QAfterSortBy> sortById() {
    return addSortByInternal('id', Sort.asc);
  }

  QueryBuilder<Dish, Dish, QAfterSortBy> sortByIdDesc() {
    return addSortByInternal('id', Sort.desc);
  }

  QueryBuilder<Dish, Dish, QAfterSortBy> sortByIngredients() {
    return addSortByInternal('ingredients', Sort.asc);
  }

  QueryBuilder<Dish, Dish, QAfterSortBy> sortByIngredientsDesc() {
    return addSortByInternal('ingredients', Sort.desc);
  }

  QueryBuilder<Dish, Dish, QAfterSortBy> sortByName() {
    return addSortByInternal('name', Sort.asc);
  }

  QueryBuilder<Dish, Dish, QAfterSortBy> sortByNameDesc() {
    return addSortByInternal('name', Sort.desc);
  }

  QueryBuilder<Dish, Dish, QAfterSortBy> sortByPriority() {
    return addSortByInternal('priority', Sort.asc);
  }

  QueryBuilder<Dish, Dish, QAfterSortBy> sortByPriorityDesc() {
    return addSortByInternal('priority', Sort.desc);
  }

  QueryBuilder<Dish, Dish, QAfterSortBy> sortBySteps() {
    return addSortByInternal('steps', Sort.asc);
  }

  QueryBuilder<Dish, Dish, QAfterSortBy> sortByStepsDesc() {
    return addSortByInternal('steps', Sort.desc);
  }

  QueryBuilder<Dish, Dish, QAfterSortBy> sortBySummary() {
    return addSortByInternal('summary', Sort.asc);
  }

  QueryBuilder<Dish, Dish, QAfterSortBy> sortBySummaryDesc() {
    return addSortByInternal('summary', Sort.desc);
  }

  QueryBuilder<Dish, Dish, QAfterSortBy> sortByUpdatedAt() {
    return addSortByInternal('updatedAt', Sort.asc);
  }

  QueryBuilder<Dish, Dish, QAfterSortBy> sortByUpdatedAtDesc() {
    return addSortByInternal('updatedAt', Sort.desc);
  }
}

extension DishQueryWhereSortThenBy on QueryBuilder<Dish, Dish, QSortThenBy> {
  QueryBuilder<Dish, Dish, QAfterSortBy> thenByCategory() {
    return addSortByInternal('category', Sort.asc);
  }

  QueryBuilder<Dish, Dish, QAfterSortBy> thenByCategoryDesc() {
    return addSortByInternal('category', Sort.desc);
  }

  QueryBuilder<Dish, Dish, QAfterSortBy> thenByExtra() {
    return addSortByInternal('extra', Sort.asc);
  }

  QueryBuilder<Dish, Dish, QAfterSortBy> thenByExtraDesc() {
    return addSortByInternal('extra', Sort.desc);
  }

  QueryBuilder<Dish, Dish, QAfterSortBy> thenByFormula() {
    return addSortByInternal('formula', Sort.asc);
  }

  QueryBuilder<Dish, Dish, QAfterSortBy> thenByFormulaDesc() {
    return addSortByInternal('formula', Sort.desc);
  }

  QueryBuilder<Dish, Dish, QAfterSortBy> thenByHash() {
    return addSortByInternal('hash', Sort.asc);
  }

  QueryBuilder<Dish, Dish, QAfterSortBy> thenByHashDesc() {
    return addSortByInternal('hash', Sort.desc);
  }

  QueryBuilder<Dish, Dish, QAfterSortBy> thenById() {
    return addSortByInternal('id', Sort.asc);
  }

  QueryBuilder<Dish, Dish, QAfterSortBy> thenByIdDesc() {
    return addSortByInternal('id', Sort.desc);
  }

  QueryBuilder<Dish, Dish, QAfterSortBy> thenByIngredients() {
    return addSortByInternal('ingredients', Sort.asc);
  }

  QueryBuilder<Dish, Dish, QAfterSortBy> thenByIngredientsDesc() {
    return addSortByInternal('ingredients', Sort.desc);
  }

  QueryBuilder<Dish, Dish, QAfterSortBy> thenByName() {
    return addSortByInternal('name', Sort.asc);
  }

  QueryBuilder<Dish, Dish, QAfterSortBy> thenByNameDesc() {
    return addSortByInternal('name', Sort.desc);
  }

  QueryBuilder<Dish, Dish, QAfterSortBy> thenByPriority() {
    return addSortByInternal('priority', Sort.asc);
  }

  QueryBuilder<Dish, Dish, QAfterSortBy> thenByPriorityDesc() {
    return addSortByInternal('priority', Sort.desc);
  }

  QueryBuilder<Dish, Dish, QAfterSortBy> thenBySteps() {
    return addSortByInternal('steps', Sort.asc);
  }

  QueryBuilder<Dish, Dish, QAfterSortBy> thenByStepsDesc() {
    return addSortByInternal('steps', Sort.desc);
  }

  QueryBuilder<Dish, Dish, QAfterSortBy> thenBySummary() {
    return addSortByInternal('summary', Sort.asc);
  }

  QueryBuilder<Dish, Dish, QAfterSortBy> thenBySummaryDesc() {
    return addSortByInternal('summary', Sort.desc);
  }

  QueryBuilder<Dish, Dish, QAfterSortBy> thenByUpdatedAt() {
    return addSortByInternal('updatedAt', Sort.asc);
  }

  QueryBuilder<Dish, Dish, QAfterSortBy> thenByUpdatedAtDesc() {
    return addSortByInternal('updatedAt', Sort.desc);
  }
}

extension DishQueryWhereDistinct on QueryBuilder<Dish, Dish, QDistinct> {
  QueryBuilder<Dish, Dish, QDistinct> distinctByCategory(
      {bool caseSensitive = true}) {
    return addDistinctByInternal('category', caseSensitive: caseSensitive);
  }

  QueryBuilder<Dish, Dish, QDistinct> distinctByExtra(
      {bool caseSensitive = true}) {
    return addDistinctByInternal('extra', caseSensitive: caseSensitive);
  }

  QueryBuilder<Dish, Dish, QDistinct> distinctByFormula(
      {bool caseSensitive = true}) {
    return addDistinctByInternal('formula', caseSensitive: caseSensitive);
  }

  QueryBuilder<Dish, Dish, QDistinct> distinctByHash(
      {bool caseSensitive = true}) {
    return addDistinctByInternal('hash', caseSensitive: caseSensitive);
  }

  QueryBuilder<Dish, Dish, QDistinct> distinctById() {
    return addDistinctByInternal('id');
  }

  QueryBuilder<Dish, Dish, QDistinct> distinctByIngredients(
      {bool caseSensitive = true}) {
    return addDistinctByInternal('ingredients', caseSensitive: caseSensitive);
  }

  QueryBuilder<Dish, Dish, QDistinct> distinctByName(
      {bool caseSensitive = true}) {
    return addDistinctByInternal('name', caseSensitive: caseSensitive);
  }

  QueryBuilder<Dish, Dish, QDistinct> distinctByPriority() {
    return addDistinctByInternal('priority');
  }

  QueryBuilder<Dish, Dish, QDistinct> distinctBySteps(
      {bool caseSensitive = true}) {
    return addDistinctByInternal('steps', caseSensitive: caseSensitive);
  }

  QueryBuilder<Dish, Dish, QDistinct> distinctBySummary(
      {bool caseSensitive = true}) {
    return addDistinctByInternal('summary', caseSensitive: caseSensitive);
  }

  QueryBuilder<Dish, Dish, QDistinct> distinctByUpdatedAt() {
    return addDistinctByInternal('updatedAt');
  }
}

extension DishQueryProperty on QueryBuilder<Dish, Dish, QQueryProperty> {
  QueryBuilder<Dish, String, QQueryOperations> categoryProperty() {
    return addPropertyNameInternal('category');
  }

  QueryBuilder<Dish, String?, QQueryOperations> extraProperty() {
    return addPropertyNameInternal('extra');
  }

  QueryBuilder<Dish, String?, QQueryOperations> formulaProperty() {
    return addPropertyNameInternal('formula');
  }

  QueryBuilder<Dish, String, QQueryOperations> hashProperty() {
    return addPropertyNameInternal('hash');
  }

  QueryBuilder<Dish, int, QQueryOperations> idProperty() {
    return addPropertyNameInternal('id');
  }

  QueryBuilder<Dish, String, QQueryOperations> ingredientsProperty() {
    return addPropertyNameInternal('ingredients');
  }

  QueryBuilder<Dish, String, QQueryOperations> nameProperty() {
    return addPropertyNameInternal('name');
  }

  QueryBuilder<Dish, int, QQueryOperations> priorityProperty() {
    return addPropertyNameInternal('priority');
  }

  QueryBuilder<Dish, String, QQueryOperations> stepsProperty() {
    return addPropertyNameInternal('steps');
  }

  QueryBuilder<Dish, String?, QQueryOperations> summaryProperty() {
    return addPropertyNameInternal('summary');
  }

  QueryBuilder<Dish, DateTime, QQueryOperations> updatedAtProperty() {
    return addPropertyNameInternal('updatedAt');
  }
}
