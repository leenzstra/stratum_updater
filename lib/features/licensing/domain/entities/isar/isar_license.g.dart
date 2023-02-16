// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'isar_license.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters

extension GetIsarLicenseCollection on Isar {
  IsarCollection<IsarLicense> get isarLicenses => this.collection();
}

const IsarLicenseSchema = CollectionSchema(
  name: r'IsarLicense',
  id: -3832742381306551172,
  properties: {
    r'expiration': PropertySchema(
      id: 0,
      name: r'expiration',
      type: IsarType.dateTime,
    ),
    r'expired': PropertySchema(
      id: 1,
      name: r'expired',
      type: IsarType.bool,
    ),
    r'hash': PropertySchema(
      id: 2,
      name: r'hash',
      type: IsarType.string,
    ),
    r'key': PropertySchema(
      id: 3,
      name: r'key',
      type: IsarType.string,
    ),
    r'subjects': PropertySchema(
      id: 4,
      name: r'subjects',
      type: IsarType.objectList,
      target: r'IsarSubjectData',
    )
  },
  estimateSize: _isarLicenseEstimateSize,
  serialize: _isarLicenseSerialize,
  deserialize: _isarLicenseDeserialize,
  deserializeProp: _isarLicenseDeserializeProp,
  idName: r'id',
  indexes: {
    r'key': IndexSchema(
      id: -4906094122524121629,
      name: r'key',
      unique: true,
      replace: false,
      properties: [
        IndexPropertySchema(
          name: r'key',
          type: IndexType.hash,
          caseSensitive: true,
        )
      ],
    )
  },
  links: {},
  embeddedSchemas: {r'IsarSubjectData': IsarSubjectDataSchema},
  getId: _isarLicenseGetId,
  getLinks: _isarLicenseGetLinks,
  attach: _isarLicenseAttach,
  version: '3.0.5',
);

int _isarLicenseEstimateSize(
  IsarLicense object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  bytesCount += 3 + object.hash.length * 3;
  bytesCount += 3 + object.key.length * 3;
  bytesCount += 3 + object.subjects.length * 3;
  {
    final offsets = allOffsets[IsarSubjectData]!;
    for (var i = 0; i < object.subjects.length; i++) {
      final value = object.subjects[i];
      bytesCount +=
          IsarSubjectDataSchema.estimateSize(value, offsets, allOffsets);
    }
  }
  return bytesCount;
}

void _isarLicenseSerialize(
  IsarLicense object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeDateTime(offsets[0], object.expiration);
  writer.writeBool(offsets[1], object.expired);
  writer.writeString(offsets[2], object.hash);
  writer.writeString(offsets[3], object.key);
  writer.writeObjectList<IsarSubjectData>(
    offsets[4],
    allOffsets,
    IsarSubjectDataSchema.serialize,
    object.subjects,
  );
}

IsarLicense _isarLicenseDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = IsarLicense(
    expiration: reader.readDateTime(offsets[0]),
    expired: reader.readBool(offsets[1]),
    hash: reader.readString(offsets[2]),
    key: reader.readString(offsets[3]),
    subjects: reader.readObjectList<IsarSubjectData>(
          offsets[4],
          IsarSubjectDataSchema.deserialize,
          allOffsets,
          IsarSubjectData(),
        ) ??
        [],
  );
  object.id = id;
  return object;
}

P _isarLicenseDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readDateTime(offset)) as P;
    case 1:
      return (reader.readBool(offset)) as P;
    case 2:
      return (reader.readString(offset)) as P;
    case 3:
      return (reader.readString(offset)) as P;
    case 4:
      return (reader.readObjectList<IsarSubjectData>(
            offset,
            IsarSubjectDataSchema.deserialize,
            allOffsets,
            IsarSubjectData(),
          ) ??
          []) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _isarLicenseGetId(IsarLicense object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _isarLicenseGetLinks(IsarLicense object) {
  return [];
}

void _isarLicenseAttach(
    IsarCollection<dynamic> col, Id id, IsarLicense object) {
  object.id = id;
}

extension IsarLicenseByIndex on IsarCollection<IsarLicense> {
  Future<IsarLicense?> getByKey(String key) {
    return getByIndex(r'key', [key]);
  }

  IsarLicense? getByKeySync(String key) {
    return getByIndexSync(r'key', [key]);
  }

  Future<bool> deleteByKey(String key) {
    return deleteByIndex(r'key', [key]);
  }

  bool deleteByKeySync(String key) {
    return deleteByIndexSync(r'key', [key]);
  }

  Future<List<IsarLicense?>> getAllByKey(List<String> keyValues) {
    final values = keyValues.map((e) => [e]).toList();
    return getAllByIndex(r'key', values);
  }

  List<IsarLicense?> getAllByKeySync(List<String> keyValues) {
    final values = keyValues.map((e) => [e]).toList();
    return getAllByIndexSync(r'key', values);
  }

  Future<int> deleteAllByKey(List<String> keyValues) {
    final values = keyValues.map((e) => [e]).toList();
    return deleteAllByIndex(r'key', values);
  }

  int deleteAllByKeySync(List<String> keyValues) {
    final values = keyValues.map((e) => [e]).toList();
    return deleteAllByIndexSync(r'key', values);
  }

  Future<Id> putByKey(IsarLicense object) {
    return putByIndex(r'key', object);
  }

  Id putByKeySync(IsarLicense object, {bool saveLinks = true}) {
    return putByIndexSync(r'key', object, saveLinks: saveLinks);
  }

  Future<List<Id>> putAllByKey(List<IsarLicense> objects) {
    return putAllByIndex(r'key', objects);
  }

  List<Id> putAllByKeySync(List<IsarLicense> objects, {bool saveLinks = true}) {
    return putAllByIndexSync(r'key', objects, saveLinks: saveLinks);
  }
}

extension IsarLicenseQueryWhereSort
    on QueryBuilder<IsarLicense, IsarLicense, QWhere> {
  QueryBuilder<IsarLicense, IsarLicense, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension IsarLicenseQueryWhere
    on QueryBuilder<IsarLicense, IsarLicense, QWhereClause> {
  QueryBuilder<IsarLicense, IsarLicense, QAfterWhereClause> idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<IsarLicense, IsarLicense, QAfterWhereClause> idNotEqualTo(
      Id id) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            )
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            );
      } else {
        return query
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            )
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            );
      }
    });
  }

  QueryBuilder<IsarLicense, IsarLicense, QAfterWhereClause> idGreaterThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<IsarLicense, IsarLicense, QAfterWhereClause> idLessThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<IsarLicense, IsarLicense, QAfterWhereClause> idBetween(
    Id lowerId,
    Id upperId, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: lowerId,
        includeLower: includeLower,
        upper: upperId,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<IsarLicense, IsarLicense, QAfterWhereClause> keyEqualTo(
      String key) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'key',
        value: [key],
      ));
    });
  }

  QueryBuilder<IsarLicense, IsarLicense, QAfterWhereClause> keyNotEqualTo(
      String key) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'key',
              lower: [],
              upper: [key],
              includeUpper: false,
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'key',
              lower: [key],
              includeLower: false,
              upper: [],
            ));
      } else {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'key',
              lower: [key],
              includeLower: false,
              upper: [],
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'key',
              lower: [],
              upper: [key],
              includeUpper: false,
            ));
      }
    });
  }
}

extension IsarLicenseQueryFilter
    on QueryBuilder<IsarLicense, IsarLicense, QFilterCondition> {
  QueryBuilder<IsarLicense, IsarLicense, QAfterFilterCondition>
      expirationEqualTo(DateTime value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'expiration',
        value: value,
      ));
    });
  }

  QueryBuilder<IsarLicense, IsarLicense, QAfterFilterCondition>
      expirationGreaterThan(
    DateTime value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'expiration',
        value: value,
      ));
    });
  }

  QueryBuilder<IsarLicense, IsarLicense, QAfterFilterCondition>
      expirationLessThan(
    DateTime value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'expiration',
        value: value,
      ));
    });
  }

  QueryBuilder<IsarLicense, IsarLicense, QAfterFilterCondition>
      expirationBetween(
    DateTime lower,
    DateTime upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'expiration',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<IsarLicense, IsarLicense, QAfterFilterCondition> expiredEqualTo(
      bool value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'expired',
        value: value,
      ));
    });
  }

  QueryBuilder<IsarLicense, IsarLicense, QAfterFilterCondition> hashEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'hash',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarLicense, IsarLicense, QAfterFilterCondition> hashGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'hash',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarLicense, IsarLicense, QAfterFilterCondition> hashLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'hash',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarLicense, IsarLicense, QAfterFilterCondition> hashBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'hash',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarLicense, IsarLicense, QAfterFilterCondition> hashStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'hash',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarLicense, IsarLicense, QAfterFilterCondition> hashEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'hash',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarLicense, IsarLicense, QAfterFilterCondition> hashContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'hash',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarLicense, IsarLicense, QAfterFilterCondition> hashMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'hash',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarLicense, IsarLicense, QAfterFilterCondition> hashIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'hash',
        value: '',
      ));
    });
  }

  QueryBuilder<IsarLicense, IsarLicense, QAfterFilterCondition>
      hashIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'hash',
        value: '',
      ));
    });
  }

  QueryBuilder<IsarLicense, IsarLicense, QAfterFilterCondition> idEqualTo(
      Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<IsarLicense, IsarLicense, QAfterFilterCondition> idGreaterThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<IsarLicense, IsarLicense, QAfterFilterCondition> idLessThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<IsarLicense, IsarLicense, QAfterFilterCondition> idBetween(
    Id lower,
    Id upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'id',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<IsarLicense, IsarLicense, QAfterFilterCondition> keyEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'key',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarLicense, IsarLicense, QAfterFilterCondition> keyGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'key',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarLicense, IsarLicense, QAfterFilterCondition> keyLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'key',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarLicense, IsarLicense, QAfterFilterCondition> keyBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'key',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarLicense, IsarLicense, QAfterFilterCondition> keyStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'key',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarLicense, IsarLicense, QAfterFilterCondition> keyEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'key',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarLicense, IsarLicense, QAfterFilterCondition> keyContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'key',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarLicense, IsarLicense, QAfterFilterCondition> keyMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'key',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarLicense, IsarLicense, QAfterFilterCondition> keyIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'key',
        value: '',
      ));
    });
  }

  QueryBuilder<IsarLicense, IsarLicense, QAfterFilterCondition>
      keyIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'key',
        value: '',
      ));
    });
  }

  QueryBuilder<IsarLicense, IsarLicense, QAfterFilterCondition>
      subjectsLengthEqualTo(int length) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'subjects',
        length,
        true,
        length,
        true,
      );
    });
  }

  QueryBuilder<IsarLicense, IsarLicense, QAfterFilterCondition>
      subjectsIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'subjects',
        0,
        true,
        0,
        true,
      );
    });
  }

  QueryBuilder<IsarLicense, IsarLicense, QAfterFilterCondition>
      subjectsIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'subjects',
        0,
        false,
        999999,
        true,
      );
    });
  }

  QueryBuilder<IsarLicense, IsarLicense, QAfterFilterCondition>
      subjectsLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'subjects',
        0,
        true,
        length,
        include,
      );
    });
  }

  QueryBuilder<IsarLicense, IsarLicense, QAfterFilterCondition>
      subjectsLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'subjects',
        length,
        include,
        999999,
        true,
      );
    });
  }

  QueryBuilder<IsarLicense, IsarLicense, QAfterFilterCondition>
      subjectsLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'subjects',
        lower,
        includeLower,
        upper,
        includeUpper,
      );
    });
  }
}

extension IsarLicenseQueryObject
    on QueryBuilder<IsarLicense, IsarLicense, QFilterCondition> {
  QueryBuilder<IsarLicense, IsarLicense, QAfterFilterCondition> subjectsElement(
      FilterQuery<IsarSubjectData> q) {
    return QueryBuilder.apply(this, (query) {
      return query.object(q, r'subjects');
    });
  }
}

extension IsarLicenseQueryLinks
    on QueryBuilder<IsarLicense, IsarLicense, QFilterCondition> {}

extension IsarLicenseQuerySortBy
    on QueryBuilder<IsarLicense, IsarLicense, QSortBy> {
  QueryBuilder<IsarLicense, IsarLicense, QAfterSortBy> sortByExpiration() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'expiration', Sort.asc);
    });
  }

  QueryBuilder<IsarLicense, IsarLicense, QAfterSortBy> sortByExpirationDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'expiration', Sort.desc);
    });
  }

  QueryBuilder<IsarLicense, IsarLicense, QAfterSortBy> sortByExpired() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'expired', Sort.asc);
    });
  }

  QueryBuilder<IsarLicense, IsarLicense, QAfterSortBy> sortByExpiredDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'expired', Sort.desc);
    });
  }

  QueryBuilder<IsarLicense, IsarLicense, QAfterSortBy> sortByHash() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'hash', Sort.asc);
    });
  }

  QueryBuilder<IsarLicense, IsarLicense, QAfterSortBy> sortByHashDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'hash', Sort.desc);
    });
  }

  QueryBuilder<IsarLicense, IsarLicense, QAfterSortBy> sortByKey() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'key', Sort.asc);
    });
  }

  QueryBuilder<IsarLicense, IsarLicense, QAfterSortBy> sortByKeyDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'key', Sort.desc);
    });
  }
}

extension IsarLicenseQuerySortThenBy
    on QueryBuilder<IsarLicense, IsarLicense, QSortThenBy> {
  QueryBuilder<IsarLicense, IsarLicense, QAfterSortBy> thenByExpiration() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'expiration', Sort.asc);
    });
  }

  QueryBuilder<IsarLicense, IsarLicense, QAfterSortBy> thenByExpirationDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'expiration', Sort.desc);
    });
  }

  QueryBuilder<IsarLicense, IsarLicense, QAfterSortBy> thenByExpired() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'expired', Sort.asc);
    });
  }

  QueryBuilder<IsarLicense, IsarLicense, QAfterSortBy> thenByExpiredDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'expired', Sort.desc);
    });
  }

  QueryBuilder<IsarLicense, IsarLicense, QAfterSortBy> thenByHash() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'hash', Sort.asc);
    });
  }

  QueryBuilder<IsarLicense, IsarLicense, QAfterSortBy> thenByHashDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'hash', Sort.desc);
    });
  }

  QueryBuilder<IsarLicense, IsarLicense, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<IsarLicense, IsarLicense, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<IsarLicense, IsarLicense, QAfterSortBy> thenByKey() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'key', Sort.asc);
    });
  }

  QueryBuilder<IsarLicense, IsarLicense, QAfterSortBy> thenByKeyDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'key', Sort.desc);
    });
  }
}

extension IsarLicenseQueryWhereDistinct
    on QueryBuilder<IsarLicense, IsarLicense, QDistinct> {
  QueryBuilder<IsarLicense, IsarLicense, QDistinct> distinctByExpiration() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'expiration');
    });
  }

  QueryBuilder<IsarLicense, IsarLicense, QDistinct> distinctByExpired() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'expired');
    });
  }

  QueryBuilder<IsarLicense, IsarLicense, QDistinct> distinctByHash(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'hash', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<IsarLicense, IsarLicense, QDistinct> distinctByKey(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'key', caseSensitive: caseSensitive);
    });
  }
}

extension IsarLicenseQueryProperty
    on QueryBuilder<IsarLicense, IsarLicense, QQueryProperty> {
  QueryBuilder<IsarLicense, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<IsarLicense, DateTime, QQueryOperations> expirationProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'expiration');
    });
  }

  QueryBuilder<IsarLicense, bool, QQueryOperations> expiredProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'expired');
    });
  }

  QueryBuilder<IsarLicense, String, QQueryOperations> hashProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'hash');
    });
  }

  QueryBuilder<IsarLicense, String, QQueryOperations> keyProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'key');
    });
  }

  QueryBuilder<IsarLicense, List<IsarSubjectData>, QQueryOperations>
      subjectsProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'subjects');
    });
  }
}
