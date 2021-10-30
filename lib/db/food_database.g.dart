// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'food_database.dart';

// **************************************************************************
// MoorGenerator
// **************************************************************************

// ignore_for_file: unnecessary_brace_in_string_interps, unnecessary_this
class Food extends DataClass implements Insertable<Food> {
  final int id;
  final int idMeal;
  final String strMeal;
  final String strArea;
  final String strCategory;
  final String strMealThumb;
  final String strInstruction;
  final String strIngredient1;
  final String strIngredient2;
  final String strIngredient3;
  final String strIngredient4;
  final String strIngredient5;
  final String strMeasure1;
  final String strMeasure2;
  final String strMeasure3;
  final String strMeasure4;
  final String strMeasure5;
  Food(
      {required this.id,
      required this.idMeal,
      required this.strMeal,
      required this.strArea,
      required this.strCategory,
      required this.strMealThumb,
      required this.strInstruction,
      required this.strIngredient1,
      required this.strIngredient2,
      required this.strIngredient3,
      required this.strIngredient4,
      required this.strIngredient5,
      required this.strMeasure1,
      required this.strMeasure2,
      required this.strMeasure3,
      required this.strMeasure4,
      required this.strMeasure5});
  factory Food.fromData(Map<String, dynamic> data, GeneratedDatabase db,
      {String? prefix}) {
    final effectivePrefix = prefix ?? '';
    return Food(
      id: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}id'])!,
      idMeal: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}id_meal'])!,
      strMeal: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}str_meal'])!,
      strArea: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}str_area'])!,
      strCategory: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}str_category'])!,
      strMealThumb: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}str_meal_thumb'])!,
      strInstruction: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}str_instruction'])!,
      strIngredient1: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}str_ingredient1'])!,
      strIngredient2: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}str_ingredient2'])!,
      strIngredient3: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}str_ingredient3'])!,
      strIngredient4: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}str_ingredient4'])!,
      strIngredient5: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}str_ingredient5'])!,
      strMeasure1: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}str_measure1'])!,
      strMeasure2: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}str_measure2'])!,
      strMeasure3: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}str_measure3'])!,
      strMeasure4: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}str_measure4'])!,
      strMeasure5: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}str_measure5'])!,
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['id_meal'] = Variable<int>(idMeal);
    map['str_meal'] = Variable<String>(strMeal);
    map['str_area'] = Variable<String>(strArea);
    map['str_category'] = Variable<String>(strCategory);
    map['str_meal_thumb'] = Variable<String>(strMealThumb);
    map['str_instruction'] = Variable<String>(strInstruction);
    map['str_ingredient1'] = Variable<String>(strIngredient1);
    map['str_ingredient2'] = Variable<String>(strIngredient2);
    map['str_ingredient3'] = Variable<String>(strIngredient3);
    map['str_ingredient4'] = Variable<String>(strIngredient4);
    map['str_ingredient5'] = Variable<String>(strIngredient5);
    map['str_measure1'] = Variable<String>(strMeasure1);
    map['str_measure2'] = Variable<String>(strMeasure2);
    map['str_measure3'] = Variable<String>(strMeasure3);
    map['str_measure4'] = Variable<String>(strMeasure4);
    map['str_measure5'] = Variable<String>(strMeasure5);
    return map;
  }

  FoodsCompanion toCompanion(bool nullToAbsent) {
    return FoodsCompanion(
      id: Value(id),
      idMeal: Value(idMeal),
      strMeal: Value(strMeal),
      strArea: Value(strArea),
      strCategory: Value(strCategory),
      strMealThumb: Value(strMealThumb),
      strInstruction: Value(strInstruction),
      strIngredient1: Value(strIngredient1),
      strIngredient2: Value(strIngredient2),
      strIngredient3: Value(strIngredient3),
      strIngredient4: Value(strIngredient4),
      strIngredient5: Value(strIngredient5),
      strMeasure1: Value(strMeasure1),
      strMeasure2: Value(strMeasure2),
      strMeasure3: Value(strMeasure3),
      strMeasure4: Value(strMeasure4),
      strMeasure5: Value(strMeasure5),
    );
  }

  factory Food.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return Food(
      id: serializer.fromJson<int>(json['id']),
      idMeal: serializer.fromJson<int>(json['idMeal']),
      strMeal: serializer.fromJson<String>(json['strMeal']),
      strArea: serializer.fromJson<String>(json['strArea']),
      strCategory: serializer.fromJson<String>(json['strCategory']),
      strMealThumb: serializer.fromJson<String>(json['strMealThumb']),
      strInstruction: serializer.fromJson<String>(json['strInstruction']),
      strIngredient1: serializer.fromJson<String>(json['strIngredient1']),
      strIngredient2: serializer.fromJson<String>(json['strIngredient2']),
      strIngredient3: serializer.fromJson<String>(json['strIngredient3']),
      strIngredient4: serializer.fromJson<String>(json['strIngredient4']),
      strIngredient5: serializer.fromJson<String>(json['strIngredient5']),
      strMeasure1: serializer.fromJson<String>(json['strMeasure1']),
      strMeasure2: serializer.fromJson<String>(json['strMeasure2']),
      strMeasure3: serializer.fromJson<String>(json['strMeasure3']),
      strMeasure4: serializer.fromJson<String>(json['strMeasure4']),
      strMeasure5: serializer.fromJson<String>(json['strMeasure5']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'idMeal': serializer.toJson<int>(idMeal),
      'strMeal': serializer.toJson<String>(strMeal),
      'strArea': serializer.toJson<String>(strArea),
      'strCategory': serializer.toJson<String>(strCategory),
      'strMealThumb': serializer.toJson<String>(strMealThumb),
      'strInstruction': serializer.toJson<String>(strInstruction),
      'strIngredient1': serializer.toJson<String>(strIngredient1),
      'strIngredient2': serializer.toJson<String>(strIngredient2),
      'strIngredient3': serializer.toJson<String>(strIngredient3),
      'strIngredient4': serializer.toJson<String>(strIngredient4),
      'strIngredient5': serializer.toJson<String>(strIngredient5),
      'strMeasure1': serializer.toJson<String>(strMeasure1),
      'strMeasure2': serializer.toJson<String>(strMeasure2),
      'strMeasure3': serializer.toJson<String>(strMeasure3),
      'strMeasure4': serializer.toJson<String>(strMeasure4),
      'strMeasure5': serializer.toJson<String>(strMeasure5),
    };
  }

  Food copyWith(
          {int? id,
          int? idMeal,
          String? strMeal,
          String? strArea,
          String? strCategory,
          String? strMealThumb,
          String? strInstruction,
          String? strIngredient1,
          String? strIngredient2,
          String? strIngredient3,
          String? strIngredient4,
          String? strIngredient5,
          String? strMeasure1,
          String? strMeasure2,
          String? strMeasure3,
          String? strMeasure4,
          String? strMeasure5}) =>
      Food(
        id: id ?? this.id,
        idMeal: idMeal ?? this.idMeal,
        strMeal: strMeal ?? this.strMeal,
        strArea: strArea ?? this.strArea,
        strCategory: strCategory ?? this.strCategory,
        strMealThumb: strMealThumb ?? this.strMealThumb,
        strInstruction: strInstruction ?? this.strInstruction,
        strIngredient1: strIngredient1 ?? this.strIngredient1,
        strIngredient2: strIngredient2 ?? this.strIngredient2,
        strIngredient3: strIngredient3 ?? this.strIngredient3,
        strIngredient4: strIngredient4 ?? this.strIngredient4,
        strIngredient5: strIngredient5 ?? this.strIngredient5,
        strMeasure1: strMeasure1 ?? this.strMeasure1,
        strMeasure2: strMeasure2 ?? this.strMeasure2,
        strMeasure3: strMeasure3 ?? this.strMeasure3,
        strMeasure4: strMeasure4 ?? this.strMeasure4,
        strMeasure5: strMeasure5 ?? this.strMeasure5,
      );
  @override
  String toString() {
    return (StringBuffer('Food(')
          ..write('id: $id, ')
          ..write('idMeal: $idMeal, ')
          ..write('strMeal: $strMeal, ')
          ..write('strArea: $strArea, ')
          ..write('strCategory: $strCategory, ')
          ..write('strMealThumb: $strMealThumb, ')
          ..write('strInstruction: $strInstruction, ')
          ..write('strIngredient1: $strIngredient1, ')
          ..write('strIngredient2: $strIngredient2, ')
          ..write('strIngredient3: $strIngredient3, ')
          ..write('strIngredient4: $strIngredient4, ')
          ..write('strIngredient5: $strIngredient5, ')
          ..write('strMeasure1: $strMeasure1, ')
          ..write('strMeasure2: $strMeasure2, ')
          ..write('strMeasure3: $strMeasure3, ')
          ..write('strMeasure4: $strMeasure4, ')
          ..write('strMeasure5: $strMeasure5')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
      id,
      idMeal,
      strMeal,
      strArea,
      strCategory,
      strMealThumb,
      strInstruction,
      strIngredient1,
      strIngredient2,
      strIngredient3,
      strIngredient4,
      strIngredient5,
      strMeasure1,
      strMeasure2,
      strMeasure3,
      strMeasure4,
      strMeasure5);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Food &&
          other.id == this.id &&
          other.idMeal == this.idMeal &&
          other.strMeal == this.strMeal &&
          other.strArea == this.strArea &&
          other.strCategory == this.strCategory &&
          other.strMealThumb == this.strMealThumb &&
          other.strInstruction == this.strInstruction &&
          other.strIngredient1 == this.strIngredient1 &&
          other.strIngredient2 == this.strIngredient2 &&
          other.strIngredient3 == this.strIngredient3 &&
          other.strIngredient4 == this.strIngredient4 &&
          other.strIngredient5 == this.strIngredient5 &&
          other.strMeasure1 == this.strMeasure1 &&
          other.strMeasure2 == this.strMeasure2 &&
          other.strMeasure3 == this.strMeasure3 &&
          other.strMeasure4 == this.strMeasure4 &&
          other.strMeasure5 == this.strMeasure5);
}

class FoodsCompanion extends UpdateCompanion<Food> {
  final Value<int> id;
  final Value<int> idMeal;
  final Value<String> strMeal;
  final Value<String> strArea;
  final Value<String> strCategory;
  final Value<String> strMealThumb;
  final Value<String> strInstruction;
  final Value<String> strIngredient1;
  final Value<String> strIngredient2;
  final Value<String> strIngredient3;
  final Value<String> strIngredient4;
  final Value<String> strIngredient5;
  final Value<String> strMeasure1;
  final Value<String> strMeasure2;
  final Value<String> strMeasure3;
  final Value<String> strMeasure4;
  final Value<String> strMeasure5;
  const FoodsCompanion({
    this.id = const Value.absent(),
    this.idMeal = const Value.absent(),
    this.strMeal = const Value.absent(),
    this.strArea = const Value.absent(),
    this.strCategory = const Value.absent(),
    this.strMealThumb = const Value.absent(),
    this.strInstruction = const Value.absent(),
    this.strIngredient1 = const Value.absent(),
    this.strIngredient2 = const Value.absent(),
    this.strIngredient3 = const Value.absent(),
    this.strIngredient4 = const Value.absent(),
    this.strIngredient5 = const Value.absent(),
    this.strMeasure1 = const Value.absent(),
    this.strMeasure2 = const Value.absent(),
    this.strMeasure3 = const Value.absent(),
    this.strMeasure4 = const Value.absent(),
    this.strMeasure5 = const Value.absent(),
  });
  FoodsCompanion.insert({
    this.id = const Value.absent(),
    required int idMeal,
    required String strMeal,
    required String strArea,
    required String strCategory,
    required String strMealThumb,
    required String strInstruction,
    required String strIngredient1,
    required String strIngredient2,
    required String strIngredient3,
    required String strIngredient4,
    required String strIngredient5,
    required String strMeasure1,
    required String strMeasure2,
    required String strMeasure3,
    required String strMeasure4,
    required String strMeasure5,
  })  : idMeal = Value(idMeal),
        strMeal = Value(strMeal),
        strArea = Value(strArea),
        strCategory = Value(strCategory),
        strMealThumb = Value(strMealThumb),
        strInstruction = Value(strInstruction),
        strIngredient1 = Value(strIngredient1),
        strIngredient2 = Value(strIngredient2),
        strIngredient3 = Value(strIngredient3),
        strIngredient4 = Value(strIngredient4),
        strIngredient5 = Value(strIngredient5),
        strMeasure1 = Value(strMeasure1),
        strMeasure2 = Value(strMeasure2),
        strMeasure3 = Value(strMeasure3),
        strMeasure4 = Value(strMeasure4),
        strMeasure5 = Value(strMeasure5);
  static Insertable<Food> custom({
    Expression<int>? id,
    Expression<int>? idMeal,
    Expression<String>? strMeal,
    Expression<String>? strArea,
    Expression<String>? strCategory,
    Expression<String>? strMealThumb,
    Expression<String>? strInstruction,
    Expression<String>? strIngredient1,
    Expression<String>? strIngredient2,
    Expression<String>? strIngredient3,
    Expression<String>? strIngredient4,
    Expression<String>? strIngredient5,
    Expression<String>? strMeasure1,
    Expression<String>? strMeasure2,
    Expression<String>? strMeasure3,
    Expression<String>? strMeasure4,
    Expression<String>? strMeasure5,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (idMeal != null) 'id_meal': idMeal,
      if (strMeal != null) 'str_meal': strMeal,
      if (strArea != null) 'str_area': strArea,
      if (strCategory != null) 'str_category': strCategory,
      if (strMealThumb != null) 'str_meal_thumb': strMealThumb,
      if (strInstruction != null) 'str_instruction': strInstruction,
      if (strIngredient1 != null) 'str_ingredient1': strIngredient1,
      if (strIngredient2 != null) 'str_ingredient2': strIngredient2,
      if (strIngredient3 != null) 'str_ingredient3': strIngredient3,
      if (strIngredient4 != null) 'str_ingredient4': strIngredient4,
      if (strIngredient5 != null) 'str_ingredient5': strIngredient5,
      if (strMeasure1 != null) 'str_measure1': strMeasure1,
      if (strMeasure2 != null) 'str_measure2': strMeasure2,
      if (strMeasure3 != null) 'str_measure3': strMeasure3,
      if (strMeasure4 != null) 'str_measure4': strMeasure4,
      if (strMeasure5 != null) 'str_measure5': strMeasure5,
    });
  }

  FoodsCompanion copyWith(
      {Value<int>? id,
      Value<int>? idMeal,
      Value<String>? strMeal,
      Value<String>? strArea,
      Value<String>? strCategory,
      Value<String>? strMealThumb,
      Value<String>? strInstruction,
      Value<String>? strIngredient1,
      Value<String>? strIngredient2,
      Value<String>? strIngredient3,
      Value<String>? strIngredient4,
      Value<String>? strIngredient5,
      Value<String>? strMeasure1,
      Value<String>? strMeasure2,
      Value<String>? strMeasure3,
      Value<String>? strMeasure4,
      Value<String>? strMeasure5}) {
    return FoodsCompanion(
      id: id ?? this.id,
      idMeal: idMeal ?? this.idMeal,
      strMeal: strMeal ?? this.strMeal,
      strArea: strArea ?? this.strArea,
      strCategory: strCategory ?? this.strCategory,
      strMealThumb: strMealThumb ?? this.strMealThumb,
      strInstruction: strInstruction ?? this.strInstruction,
      strIngredient1: strIngredient1 ?? this.strIngredient1,
      strIngredient2: strIngredient2 ?? this.strIngredient2,
      strIngredient3: strIngredient3 ?? this.strIngredient3,
      strIngredient4: strIngredient4 ?? this.strIngredient4,
      strIngredient5: strIngredient5 ?? this.strIngredient5,
      strMeasure1: strMeasure1 ?? this.strMeasure1,
      strMeasure2: strMeasure2 ?? this.strMeasure2,
      strMeasure3: strMeasure3 ?? this.strMeasure3,
      strMeasure4: strMeasure4 ?? this.strMeasure4,
      strMeasure5: strMeasure5 ?? this.strMeasure5,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (idMeal.present) {
      map['id_meal'] = Variable<int>(idMeal.value);
    }
    if (strMeal.present) {
      map['str_meal'] = Variable<String>(strMeal.value);
    }
    if (strArea.present) {
      map['str_area'] = Variable<String>(strArea.value);
    }
    if (strCategory.present) {
      map['str_category'] = Variable<String>(strCategory.value);
    }
    if (strMealThumb.present) {
      map['str_meal_thumb'] = Variable<String>(strMealThumb.value);
    }
    if (strInstruction.present) {
      map['str_instruction'] = Variable<String>(strInstruction.value);
    }
    if (strIngredient1.present) {
      map['str_ingredient1'] = Variable<String>(strIngredient1.value);
    }
    if (strIngredient2.present) {
      map['str_ingredient2'] = Variable<String>(strIngredient2.value);
    }
    if (strIngredient3.present) {
      map['str_ingredient3'] = Variable<String>(strIngredient3.value);
    }
    if (strIngredient4.present) {
      map['str_ingredient4'] = Variable<String>(strIngredient4.value);
    }
    if (strIngredient5.present) {
      map['str_ingredient5'] = Variable<String>(strIngredient5.value);
    }
    if (strMeasure1.present) {
      map['str_measure1'] = Variable<String>(strMeasure1.value);
    }
    if (strMeasure2.present) {
      map['str_measure2'] = Variable<String>(strMeasure2.value);
    }
    if (strMeasure3.present) {
      map['str_measure3'] = Variable<String>(strMeasure3.value);
    }
    if (strMeasure4.present) {
      map['str_measure4'] = Variable<String>(strMeasure4.value);
    }
    if (strMeasure5.present) {
      map['str_measure5'] = Variable<String>(strMeasure5.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('FoodsCompanion(')
          ..write('id: $id, ')
          ..write('idMeal: $idMeal, ')
          ..write('strMeal: $strMeal, ')
          ..write('strArea: $strArea, ')
          ..write('strCategory: $strCategory, ')
          ..write('strMealThumb: $strMealThumb, ')
          ..write('strInstruction: $strInstruction, ')
          ..write('strIngredient1: $strIngredient1, ')
          ..write('strIngredient2: $strIngredient2, ')
          ..write('strIngredient3: $strIngredient3, ')
          ..write('strIngredient4: $strIngredient4, ')
          ..write('strIngredient5: $strIngredient5, ')
          ..write('strMeasure1: $strMeasure1, ')
          ..write('strMeasure2: $strMeasure2, ')
          ..write('strMeasure3: $strMeasure3, ')
          ..write('strMeasure4: $strMeasure4, ')
          ..write('strMeasure5: $strMeasure5')
          ..write(')'))
        .toString();
  }
}

class $FoodsTable extends Foods with TableInfo<$FoodsTable, Food> {
  final GeneratedDatabase _db;
  final String? _alias;
  $FoodsTable(this._db, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  late final GeneratedColumn<int?> id = GeneratedColumn<int?>(
      'id', aliasedName, false,
      typeName: 'INTEGER',
      requiredDuringInsert: false,
      defaultConstraints: 'PRIMARY KEY AUTOINCREMENT');
  final VerificationMeta _idMealMeta = const VerificationMeta('idMeal');
  late final GeneratedColumn<int?> idMeal = GeneratedColumn<int?>(
      'id_meal', aliasedName, false,
      typeName: 'INTEGER', requiredDuringInsert: true);
  final VerificationMeta _strMealMeta = const VerificationMeta('strMeal');
  late final GeneratedColumn<String?> strMeal = GeneratedColumn<String?>(
      'str_meal', aliasedName, false,
      typeName: 'TEXT', requiredDuringInsert: true);
  final VerificationMeta _strAreaMeta = const VerificationMeta('strArea');
  late final GeneratedColumn<String?> strArea = GeneratedColumn<String?>(
      'str_area', aliasedName, false,
      typeName: 'TEXT', requiredDuringInsert: true);
  final VerificationMeta _strCategoryMeta =
      const VerificationMeta('strCategory');
  late final GeneratedColumn<String?> strCategory = GeneratedColumn<String?>(
      'str_category', aliasedName, false,
      typeName: 'TEXT', requiredDuringInsert: true);
  final VerificationMeta _strMealThumbMeta =
      const VerificationMeta('strMealThumb');
  late final GeneratedColumn<String?> strMealThumb = GeneratedColumn<String?>(
      'str_meal_thumb', aliasedName, false,
      typeName: 'TEXT', requiredDuringInsert: true);
  final VerificationMeta _strInstructionMeta =
      const VerificationMeta('strInstruction');
  late final GeneratedColumn<String?> strInstruction = GeneratedColumn<String?>(
      'str_instruction', aliasedName, false,
      typeName: 'TEXT', requiredDuringInsert: true);
  final VerificationMeta _strIngredient1Meta =
      const VerificationMeta('strIngredient1');
  late final GeneratedColumn<String?> strIngredient1 = GeneratedColumn<String?>(
      'str_ingredient1', aliasedName, false,
      typeName: 'TEXT', requiredDuringInsert: true);
  final VerificationMeta _strIngredient2Meta =
      const VerificationMeta('strIngredient2');
  late final GeneratedColumn<String?> strIngredient2 = GeneratedColumn<String?>(
      'str_ingredient2', aliasedName, false,
      typeName: 'TEXT', requiredDuringInsert: true);
  final VerificationMeta _strIngredient3Meta =
      const VerificationMeta('strIngredient3');
  late final GeneratedColumn<String?> strIngredient3 = GeneratedColumn<String?>(
      'str_ingredient3', aliasedName, false,
      typeName: 'TEXT', requiredDuringInsert: true);
  final VerificationMeta _strIngredient4Meta =
      const VerificationMeta('strIngredient4');
  late final GeneratedColumn<String?> strIngredient4 = GeneratedColumn<String?>(
      'str_ingredient4', aliasedName, false,
      typeName: 'TEXT', requiredDuringInsert: true);
  final VerificationMeta _strIngredient5Meta =
      const VerificationMeta('strIngredient5');
  late final GeneratedColumn<String?> strIngredient5 = GeneratedColumn<String?>(
      'str_ingredient5', aliasedName, false,
      typeName: 'TEXT', requiredDuringInsert: true);
  final VerificationMeta _strMeasure1Meta =
      const VerificationMeta('strMeasure1');
  late final GeneratedColumn<String?> strMeasure1 = GeneratedColumn<String?>(
      'str_measure1', aliasedName, false,
      typeName: 'TEXT', requiredDuringInsert: true);
  final VerificationMeta _strMeasure2Meta =
      const VerificationMeta('strMeasure2');
  late final GeneratedColumn<String?> strMeasure2 = GeneratedColumn<String?>(
      'str_measure2', aliasedName, false,
      typeName: 'TEXT', requiredDuringInsert: true);
  final VerificationMeta _strMeasure3Meta =
      const VerificationMeta('strMeasure3');
  late final GeneratedColumn<String?> strMeasure3 = GeneratedColumn<String?>(
      'str_measure3', aliasedName, false,
      typeName: 'TEXT', requiredDuringInsert: true);
  final VerificationMeta _strMeasure4Meta =
      const VerificationMeta('strMeasure4');
  late final GeneratedColumn<String?> strMeasure4 = GeneratedColumn<String?>(
      'str_measure4', aliasedName, false,
      typeName: 'TEXT', requiredDuringInsert: true);
  final VerificationMeta _strMeasure5Meta =
      const VerificationMeta('strMeasure5');
  late final GeneratedColumn<String?> strMeasure5 = GeneratedColumn<String?>(
      'str_measure5', aliasedName, false,
      typeName: 'TEXT', requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns => [
        id,
        idMeal,
        strMeal,
        strArea,
        strCategory,
        strMealThumb,
        strInstruction,
        strIngredient1,
        strIngredient2,
        strIngredient3,
        strIngredient4,
        strIngredient5,
        strMeasure1,
        strMeasure2,
        strMeasure3,
        strMeasure4,
        strMeasure5
      ];
  @override
  String get aliasedName => _alias ?? 'foods';
  @override
  String get actualTableName => 'foods';
  @override
  VerificationContext validateIntegrity(Insertable<Food> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('id_meal')) {
      context.handle(_idMealMeta,
          idMeal.isAcceptableOrUnknown(data['id_meal']!, _idMealMeta));
    } else if (isInserting) {
      context.missing(_idMealMeta);
    }
    if (data.containsKey('str_meal')) {
      context.handle(_strMealMeta,
          strMeal.isAcceptableOrUnknown(data['str_meal']!, _strMealMeta));
    } else if (isInserting) {
      context.missing(_strMealMeta);
    }
    if (data.containsKey('str_area')) {
      context.handle(_strAreaMeta,
          strArea.isAcceptableOrUnknown(data['str_area']!, _strAreaMeta));
    } else if (isInserting) {
      context.missing(_strAreaMeta);
    }
    if (data.containsKey('str_category')) {
      context.handle(
          _strCategoryMeta,
          strCategory.isAcceptableOrUnknown(
              data['str_category']!, _strCategoryMeta));
    } else if (isInserting) {
      context.missing(_strCategoryMeta);
    }
    if (data.containsKey('str_meal_thumb')) {
      context.handle(
          _strMealThumbMeta,
          strMealThumb.isAcceptableOrUnknown(
              data['str_meal_thumb']!, _strMealThumbMeta));
    } else if (isInserting) {
      context.missing(_strMealThumbMeta);
    }
    if (data.containsKey('str_instruction')) {
      context.handle(
          _strInstructionMeta,
          strInstruction.isAcceptableOrUnknown(
              data['str_instruction']!, _strInstructionMeta));
    } else if (isInserting) {
      context.missing(_strInstructionMeta);
    }
    if (data.containsKey('str_ingredient1')) {
      context.handle(
          _strIngredient1Meta,
          strIngredient1.isAcceptableOrUnknown(
              data['str_ingredient1']!, _strIngredient1Meta));
    } else if (isInserting) {
      context.missing(_strIngredient1Meta);
    }
    if (data.containsKey('str_ingredient2')) {
      context.handle(
          _strIngredient2Meta,
          strIngredient2.isAcceptableOrUnknown(
              data['str_ingredient2']!, _strIngredient2Meta));
    } else if (isInserting) {
      context.missing(_strIngredient2Meta);
    }
    if (data.containsKey('str_ingredient3')) {
      context.handle(
          _strIngredient3Meta,
          strIngredient3.isAcceptableOrUnknown(
              data['str_ingredient3']!, _strIngredient3Meta));
    } else if (isInserting) {
      context.missing(_strIngredient3Meta);
    }
    if (data.containsKey('str_ingredient4')) {
      context.handle(
          _strIngredient4Meta,
          strIngredient4.isAcceptableOrUnknown(
              data['str_ingredient4']!, _strIngredient4Meta));
    } else if (isInserting) {
      context.missing(_strIngredient4Meta);
    }
    if (data.containsKey('str_ingredient5')) {
      context.handle(
          _strIngredient5Meta,
          strIngredient5.isAcceptableOrUnknown(
              data['str_ingredient5']!, _strIngredient5Meta));
    } else if (isInserting) {
      context.missing(_strIngredient5Meta);
    }
    if (data.containsKey('str_measure1')) {
      context.handle(
          _strMeasure1Meta,
          strMeasure1.isAcceptableOrUnknown(
              data['str_measure1']!, _strMeasure1Meta));
    } else if (isInserting) {
      context.missing(_strMeasure1Meta);
    }
    if (data.containsKey('str_measure2')) {
      context.handle(
          _strMeasure2Meta,
          strMeasure2.isAcceptableOrUnknown(
              data['str_measure2']!, _strMeasure2Meta));
    } else if (isInserting) {
      context.missing(_strMeasure2Meta);
    }
    if (data.containsKey('str_measure3')) {
      context.handle(
          _strMeasure3Meta,
          strMeasure3.isAcceptableOrUnknown(
              data['str_measure3']!, _strMeasure3Meta));
    } else if (isInserting) {
      context.missing(_strMeasure3Meta);
    }
    if (data.containsKey('str_measure4')) {
      context.handle(
          _strMeasure4Meta,
          strMeasure4.isAcceptableOrUnknown(
              data['str_measure4']!, _strMeasure4Meta));
    } else if (isInserting) {
      context.missing(_strMeasure4Meta);
    }
    if (data.containsKey('str_measure5')) {
      context.handle(
          _strMeasure5Meta,
          strMeasure5.isAcceptableOrUnknown(
              data['str_measure5']!, _strMeasure5Meta));
    } else if (isInserting) {
      context.missing(_strMeasure5Meta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  Food map(Map<String, dynamic> data, {String? tablePrefix}) {
    return Food.fromData(data, _db,
        prefix: tablePrefix != null ? '$tablePrefix.' : null);
  }

  @override
  $FoodsTable createAlias(String alias) {
    return $FoodsTable(_db, alias);
  }
}

abstract class _$AppDatabase extends GeneratedDatabase {
  _$AppDatabase(QueryExecutor e) : super(SqlTypeSystem.defaultInstance, e);
  late final $FoodsTable foods = $FoodsTable(this);
  @override
  Iterable<TableInfo> get allTables => allSchemaEntities.whereType<TableInfo>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [foods];
}
