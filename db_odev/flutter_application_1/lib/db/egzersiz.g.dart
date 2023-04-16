// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'egzersiz.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters

extension GetEgzersizCollection on Isar {
  IsarCollection<Egzersiz> get egzersizs => this.collection();
}

const EgzersizSchema = CollectionSchema(
  name: r'Egzersiz',
  id: 725125852290716376,
  properties: {
    r'egzersizBolge': PropertySchema(
      id: 0,
      name: r'egzersizBolge',
      type: IsarType.string,
    ),
    r'egzersizSaat': PropertySchema(
      id: 1,
      name: r'egzersizSaat',
      type: IsarType.string,
    ),
    r'egzersizSet': PropertySchema(
      id: 2,
      name: r'egzersizSet',
      type: IsarType.long,
    ),
    r'egzersizTekrar': PropertySchema(
      id: 3,
      name: r'egzersizTekrar',
      type: IsarType.long,
    ),
    r'egzersizTitle': PropertySchema(
      id: 4,
      name: r'egzersizTitle',
      type: IsarType.string,
    )
  },
  estimateSize: _egzersizEstimateSize,
  serialize: _egzersizSerialize,
  deserialize: _egzersizDeserialize,
  deserializeProp: _egzersizDeserializeProp,
  idName: r'id',
  indexes: {},
  links: {},
  embeddedSchemas: {},
  getId: _egzersizGetId,
  getLinks: _egzersizGetLinks,
  attach: _egzersizAttach,
  version: '3.0.5',
);

int _egzersizEstimateSize(
  Egzersiz object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  {
    final value = object.egzersizBolge;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.egzersizSaat;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.egzersizTitle;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  return bytesCount;
}

void _egzersizSerialize(
  Egzersiz object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.egzersizBolge);
  writer.writeString(offsets[1], object.egzersizSaat);
  writer.writeLong(offsets[2], object.egzersizSet);
  writer.writeLong(offsets[3], object.egzersizTekrar);
  writer.writeString(offsets[4], object.egzersizTitle);
}

Egzersiz _egzersizDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = Egzersiz();
  object.egzersizBolge = reader.readStringOrNull(offsets[0]);
  object.egzersizSaat = reader.readStringOrNull(offsets[1]);
  object.egzersizSet = reader.readLongOrNull(offsets[2]);
  object.egzersizTekrar = reader.readLongOrNull(offsets[3]);
  object.egzersizTitle = reader.readStringOrNull(offsets[4]);
  object.id = id;
  return object;
}

P _egzersizDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readStringOrNull(offset)) as P;
    case 1:
      return (reader.readStringOrNull(offset)) as P;
    case 2:
      return (reader.readLongOrNull(offset)) as P;
    case 3:
      return (reader.readLongOrNull(offset)) as P;
    case 4:
      return (reader.readStringOrNull(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _egzersizGetId(Egzersiz object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _egzersizGetLinks(Egzersiz object) {
  return [];
}

void _egzersizAttach(IsarCollection<dynamic> col, Id id, Egzersiz object) {
  object.id = id;
}

extension EgzersizQueryWhereSort on QueryBuilder<Egzersiz, Egzersiz, QWhere> {
  QueryBuilder<Egzersiz, Egzersiz, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension EgzersizQueryWhere on QueryBuilder<Egzersiz, Egzersiz, QWhereClause> {
  QueryBuilder<Egzersiz, Egzersiz, QAfterWhereClause> idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<Egzersiz, Egzersiz, QAfterWhereClause> idNotEqualTo(Id id) {
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

  QueryBuilder<Egzersiz, Egzersiz, QAfterWhereClause> idGreaterThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<Egzersiz, Egzersiz, QAfterWhereClause> idLessThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<Egzersiz, Egzersiz, QAfterWhereClause> idBetween(
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
}

extension EgzersizQueryFilter
    on QueryBuilder<Egzersiz, Egzersiz, QFilterCondition> {
  QueryBuilder<Egzersiz, Egzersiz, QAfterFilterCondition>
      egzersizBolgeIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'egzersizBolge',
      ));
    });
  }

  QueryBuilder<Egzersiz, Egzersiz, QAfterFilterCondition>
      egzersizBolgeIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'egzersizBolge',
      ));
    });
  }

  QueryBuilder<Egzersiz, Egzersiz, QAfterFilterCondition> egzersizBolgeEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'egzersizBolge',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Egzersiz, Egzersiz, QAfterFilterCondition>
      egzersizBolgeGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'egzersizBolge',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Egzersiz, Egzersiz, QAfterFilterCondition> egzersizBolgeLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'egzersizBolge',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Egzersiz, Egzersiz, QAfterFilterCondition> egzersizBolgeBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'egzersizBolge',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Egzersiz, Egzersiz, QAfterFilterCondition>
      egzersizBolgeStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'egzersizBolge',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Egzersiz, Egzersiz, QAfterFilterCondition> egzersizBolgeEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'egzersizBolge',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Egzersiz, Egzersiz, QAfterFilterCondition> egzersizBolgeContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'egzersizBolge',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Egzersiz, Egzersiz, QAfterFilterCondition> egzersizBolgeMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'egzersizBolge',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Egzersiz, Egzersiz, QAfterFilterCondition>
      egzersizBolgeIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'egzersizBolge',
        value: '',
      ));
    });
  }

  QueryBuilder<Egzersiz, Egzersiz, QAfterFilterCondition>
      egzersizBolgeIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'egzersizBolge',
        value: '',
      ));
    });
  }

  QueryBuilder<Egzersiz, Egzersiz, QAfterFilterCondition> egzersizSaatIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'egzersizSaat',
      ));
    });
  }

  QueryBuilder<Egzersiz, Egzersiz, QAfterFilterCondition>
      egzersizSaatIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'egzersizSaat',
      ));
    });
  }

  QueryBuilder<Egzersiz, Egzersiz, QAfterFilterCondition> egzersizSaatEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'egzersizSaat',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Egzersiz, Egzersiz, QAfterFilterCondition>
      egzersizSaatGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'egzersizSaat',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Egzersiz, Egzersiz, QAfterFilterCondition> egzersizSaatLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'egzersizSaat',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Egzersiz, Egzersiz, QAfterFilterCondition> egzersizSaatBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'egzersizSaat',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Egzersiz, Egzersiz, QAfterFilterCondition>
      egzersizSaatStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'egzersizSaat',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Egzersiz, Egzersiz, QAfterFilterCondition> egzersizSaatEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'egzersizSaat',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Egzersiz, Egzersiz, QAfterFilterCondition> egzersizSaatContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'egzersizSaat',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Egzersiz, Egzersiz, QAfterFilterCondition> egzersizSaatMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'egzersizSaat',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Egzersiz, Egzersiz, QAfterFilterCondition>
      egzersizSaatIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'egzersizSaat',
        value: '',
      ));
    });
  }

  QueryBuilder<Egzersiz, Egzersiz, QAfterFilterCondition>
      egzersizSaatIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'egzersizSaat',
        value: '',
      ));
    });
  }

  QueryBuilder<Egzersiz, Egzersiz, QAfterFilterCondition> egzersizSetIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'egzersizSet',
      ));
    });
  }

  QueryBuilder<Egzersiz, Egzersiz, QAfterFilterCondition>
      egzersizSetIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'egzersizSet',
      ));
    });
  }

  QueryBuilder<Egzersiz, Egzersiz, QAfterFilterCondition> egzersizSetEqualTo(
      int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'egzersizSet',
        value: value,
      ));
    });
  }

  QueryBuilder<Egzersiz, Egzersiz, QAfterFilterCondition>
      egzersizSetGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'egzersizSet',
        value: value,
      ));
    });
  }

  QueryBuilder<Egzersiz, Egzersiz, QAfterFilterCondition> egzersizSetLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'egzersizSet',
        value: value,
      ));
    });
  }

  QueryBuilder<Egzersiz, Egzersiz, QAfterFilterCondition> egzersizSetBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'egzersizSet',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Egzersiz, Egzersiz, QAfterFilterCondition>
      egzersizTekrarIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'egzersizTekrar',
      ));
    });
  }

  QueryBuilder<Egzersiz, Egzersiz, QAfterFilterCondition>
      egzersizTekrarIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'egzersizTekrar',
      ));
    });
  }

  QueryBuilder<Egzersiz, Egzersiz, QAfterFilterCondition> egzersizTekrarEqualTo(
      int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'egzersizTekrar',
        value: value,
      ));
    });
  }

  QueryBuilder<Egzersiz, Egzersiz, QAfterFilterCondition>
      egzersizTekrarGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'egzersizTekrar',
        value: value,
      ));
    });
  }

  QueryBuilder<Egzersiz, Egzersiz, QAfterFilterCondition>
      egzersizTekrarLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'egzersizTekrar',
        value: value,
      ));
    });
  }

  QueryBuilder<Egzersiz, Egzersiz, QAfterFilterCondition> egzersizTekrarBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'egzersizTekrar',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Egzersiz, Egzersiz, QAfterFilterCondition>
      egzersizTitleIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'egzersizTitle',
      ));
    });
  }

  QueryBuilder<Egzersiz, Egzersiz, QAfterFilterCondition>
      egzersizTitleIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'egzersizTitle',
      ));
    });
  }

  QueryBuilder<Egzersiz, Egzersiz, QAfterFilterCondition> egzersizTitleEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'egzersizTitle',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Egzersiz, Egzersiz, QAfterFilterCondition>
      egzersizTitleGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'egzersizTitle',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Egzersiz, Egzersiz, QAfterFilterCondition> egzersizTitleLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'egzersizTitle',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Egzersiz, Egzersiz, QAfterFilterCondition> egzersizTitleBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'egzersizTitle',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Egzersiz, Egzersiz, QAfterFilterCondition>
      egzersizTitleStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'egzersizTitle',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Egzersiz, Egzersiz, QAfterFilterCondition> egzersizTitleEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'egzersizTitle',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Egzersiz, Egzersiz, QAfterFilterCondition> egzersizTitleContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'egzersizTitle',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Egzersiz, Egzersiz, QAfterFilterCondition> egzersizTitleMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'egzersizTitle',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Egzersiz, Egzersiz, QAfterFilterCondition>
      egzersizTitleIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'egzersizTitle',
        value: '',
      ));
    });
  }

  QueryBuilder<Egzersiz, Egzersiz, QAfterFilterCondition>
      egzersizTitleIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'egzersizTitle',
        value: '',
      ));
    });
  }

  QueryBuilder<Egzersiz, Egzersiz, QAfterFilterCondition> idEqualTo(Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<Egzersiz, Egzersiz, QAfterFilterCondition> idGreaterThan(
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

  QueryBuilder<Egzersiz, Egzersiz, QAfterFilterCondition> idLessThan(
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

  QueryBuilder<Egzersiz, Egzersiz, QAfterFilterCondition> idBetween(
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
}

extension EgzersizQueryObject
    on QueryBuilder<Egzersiz, Egzersiz, QFilterCondition> {}

extension EgzersizQueryLinks
    on QueryBuilder<Egzersiz, Egzersiz, QFilterCondition> {}

extension EgzersizQuerySortBy on QueryBuilder<Egzersiz, Egzersiz, QSortBy> {
  QueryBuilder<Egzersiz, Egzersiz, QAfterSortBy> sortByEgzersizBolge() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'egzersizBolge', Sort.asc);
    });
  }

  QueryBuilder<Egzersiz, Egzersiz, QAfterSortBy> sortByEgzersizBolgeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'egzersizBolge', Sort.desc);
    });
  }

  QueryBuilder<Egzersiz, Egzersiz, QAfterSortBy> sortByEgzersizSaat() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'egzersizSaat', Sort.asc);
    });
  }

  QueryBuilder<Egzersiz, Egzersiz, QAfterSortBy> sortByEgzersizSaatDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'egzersizSaat', Sort.desc);
    });
  }

  QueryBuilder<Egzersiz, Egzersiz, QAfterSortBy> sortByEgzersizSet() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'egzersizSet', Sort.asc);
    });
  }

  QueryBuilder<Egzersiz, Egzersiz, QAfterSortBy> sortByEgzersizSetDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'egzersizSet', Sort.desc);
    });
  }

  QueryBuilder<Egzersiz, Egzersiz, QAfterSortBy> sortByEgzersizTekrar() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'egzersizTekrar', Sort.asc);
    });
  }

  QueryBuilder<Egzersiz, Egzersiz, QAfterSortBy> sortByEgzersizTekrarDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'egzersizTekrar', Sort.desc);
    });
  }

  QueryBuilder<Egzersiz, Egzersiz, QAfterSortBy> sortByEgzersizTitle() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'egzersizTitle', Sort.asc);
    });
  }

  QueryBuilder<Egzersiz, Egzersiz, QAfterSortBy> sortByEgzersizTitleDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'egzersizTitle', Sort.desc);
    });
  }
}

extension EgzersizQuerySortThenBy
    on QueryBuilder<Egzersiz, Egzersiz, QSortThenBy> {
  QueryBuilder<Egzersiz, Egzersiz, QAfterSortBy> thenByEgzersizBolge() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'egzersizBolge', Sort.asc);
    });
  }

  QueryBuilder<Egzersiz, Egzersiz, QAfterSortBy> thenByEgzersizBolgeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'egzersizBolge', Sort.desc);
    });
  }

  QueryBuilder<Egzersiz, Egzersiz, QAfterSortBy> thenByEgzersizSaat() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'egzersizSaat', Sort.asc);
    });
  }

  QueryBuilder<Egzersiz, Egzersiz, QAfterSortBy> thenByEgzersizSaatDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'egzersizSaat', Sort.desc);
    });
  }

  QueryBuilder<Egzersiz, Egzersiz, QAfterSortBy> thenByEgzersizSet() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'egzersizSet', Sort.asc);
    });
  }

  QueryBuilder<Egzersiz, Egzersiz, QAfterSortBy> thenByEgzersizSetDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'egzersizSet', Sort.desc);
    });
  }

  QueryBuilder<Egzersiz, Egzersiz, QAfterSortBy> thenByEgzersizTekrar() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'egzersizTekrar', Sort.asc);
    });
  }

  QueryBuilder<Egzersiz, Egzersiz, QAfterSortBy> thenByEgzersizTekrarDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'egzersizTekrar', Sort.desc);
    });
  }

  QueryBuilder<Egzersiz, Egzersiz, QAfterSortBy> thenByEgzersizTitle() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'egzersizTitle', Sort.asc);
    });
  }

  QueryBuilder<Egzersiz, Egzersiz, QAfterSortBy> thenByEgzersizTitleDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'egzersizTitle', Sort.desc);
    });
  }

  QueryBuilder<Egzersiz, Egzersiz, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<Egzersiz, Egzersiz, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }
}

extension EgzersizQueryWhereDistinct
    on QueryBuilder<Egzersiz, Egzersiz, QDistinct> {
  QueryBuilder<Egzersiz, Egzersiz, QDistinct> distinctByEgzersizBolge(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'egzersizBolge',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Egzersiz, Egzersiz, QDistinct> distinctByEgzersizSaat(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'egzersizSaat', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Egzersiz, Egzersiz, QDistinct> distinctByEgzersizSet() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'egzersizSet');
    });
  }

  QueryBuilder<Egzersiz, Egzersiz, QDistinct> distinctByEgzersizTekrar() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'egzersizTekrar');
    });
  }

  QueryBuilder<Egzersiz, Egzersiz, QDistinct> distinctByEgzersizTitle(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'egzersizTitle',
          caseSensitive: caseSensitive);
    });
  }
}

extension EgzersizQueryProperty
    on QueryBuilder<Egzersiz, Egzersiz, QQueryProperty> {
  QueryBuilder<Egzersiz, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<Egzersiz, String?, QQueryOperations> egzersizBolgeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'egzersizBolge');
    });
  }

  QueryBuilder<Egzersiz, String?, QQueryOperations> egzersizSaatProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'egzersizSaat');
    });
  }

  QueryBuilder<Egzersiz, int?, QQueryOperations> egzersizSetProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'egzersizSet');
    });
  }

  QueryBuilder<Egzersiz, int?, QQueryOperations> egzersizTekrarProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'egzersizTekrar');
    });
  }

  QueryBuilder<Egzersiz, String?, QQueryOperations> egzersizTitleProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'egzersizTitle');
    });
  }
}
