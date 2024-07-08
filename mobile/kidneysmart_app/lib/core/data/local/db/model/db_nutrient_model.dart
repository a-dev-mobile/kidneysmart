// ignore_for_file: sort_constructors_first, avoid_bool_literals_in_conditional_expressions, non_constant_identifier_names
import 'dart:convert';

import 'package:meta/meta.dart';

@immutable
class DbNutrientModel {
  /*init:0  */
  final int id;
  /*init:''  */
  final String stage;

  /*init:0  */
  final int protein_min;
  /*init:0  */
  final int protein_max;
  /*init:0  */
  final int sodium_min;
  /*init:0  */
  final int sodium_max;

  /*init:0  */
  final int potassium_min;
  /*init:0  */
  final int potassium_max;

  /*init:0  */
  final int calcium_min;
  /*init:0  */
  final int calcium_max;

  /*init:0  */
  final int phosphorus_min;
  /*init:0  */
  final int phosphorus_max;

  /*init:0  */
  final int water_min;
  /*init:0  */
  final int water_max;

  /*init:0  */
  final int calories_min;
  /*init:0  */
  final int calories_max;
  // end

//          --TURN_GEN--
//             (data)
//  *************************************
//         GENERATED CODE
//  *************************************
  const DbNutrientModel({
    this.id = 0,
    this.stage = '',
    this.protein_min = 0,
    this.protein_max = 0,
    this.sodium_min = 0,
    this.sodium_max = 0,
    this.potassium_min = 0,
    this.potassium_max = 0,
    this.calcium_min = 0,
    this.calcium_max = 0,
    this.phosphorus_min = 0,
    this.phosphorus_max = 0,
    this.water_min = 0,
    this.water_max = 0,
    this.calories_min = 0,
    this.calories_max = 0,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'stage': stage,
      'protein_min': protein_min,
      'protein_max': protein_max,
      'sodium_min': sodium_min,
      'sodium_max': sodium_max,
      'potassium_min': potassium_min,
      'potassium_max': potassium_max,
      'calcium_min': calcium_min,
      'calcium_max': calcium_max,
      'phosphorus_min': phosphorus_min,
      'phosphorus_max': phosphorus_max,
      'water_min': water_min,
      'water_max': water_max,
      'calories_min': calories_min,
      'calories_max': calories_max,
    };
  }

  factory DbNutrientModel.fromMap(Map<dynamic, dynamic>? map) {
    if (map == null) return const DbNutrientModel();

    return DbNutrientModel(
      id: (map['id'] as num?)?.toInt() ?? 0,
      stage: map['stage'] as String? ?? '',
      protein_min: (map['protein_min'] as num?)?.toInt() ?? 0,
      protein_max: (map['protein_max'] as num?)?.toInt() ?? 0,
      sodium_min: (map['sodium_min'] as num?)?.toInt() ?? 0,
      sodium_max: (map['sodium_max'] as num?)?.toInt() ?? 0,
      potassium_min: (map['potassium_min'] as num?)?.toInt() ?? 0,
      potassium_max: (map['potassium_max'] as num?)?.toInt() ?? 0,
      calcium_min: (map['calcium_min'] as num?)?.toInt() ?? 0,
      calcium_max: (map['calcium_max'] as num?)?.toInt() ?? 0,
      phosphorus_min: (map['phosphorus_min'] as num?)?.toInt() ?? 0,
      phosphorus_max: (map['phosphorus_max'] as num?)?.toInt() ?? 0,
      water_min: (map['water_min'] as num?)?.toInt() ?? 0,
      water_max: (map['water_max'] as num?)?.toInt() ?? 0,
      calories_min: (map['calories_min'] as num?)?.toInt() ?? 0,
      calories_max: (map['calories_max'] as num?)?.toInt() ?? 0,
    );
  }

  DbNutrientModel copyWith({
    int? id,
    String? stage,
    int? protein_min,
    int? protein_max,
    int? sodium_min,
    int? sodium_max,
    int? potassium_min,
    int? potassium_max,
    int? calcium_min,
    int? calcium_max,
    int? phosphorus_min,
    int? phosphorus_max,
    int? water_min,
    int? water_max,
    int? calories_min,
    int? calories_max,
  }) {
    return DbNutrientModel(
      id: id ?? this.id,
      stage: stage ?? this.stage,
      protein_min: protein_min ?? this.protein_min,
      protein_max: protein_max ?? this.protein_max,
      sodium_min: sodium_min ?? this.sodium_min,
      sodium_max: sodium_max ?? this.sodium_max,
      potassium_min: potassium_min ?? this.potassium_min,
      potassium_max: potassium_max ?? this.potassium_max,
      calcium_min: calcium_min ?? this.calcium_min,
      calcium_max: calcium_max ?? this.calcium_max,
      phosphorus_min: phosphorus_min ?? this.phosphorus_min,
      phosphorus_max: phosphorus_max ?? this.phosphorus_max,
      water_min: water_min ?? this.water_min,
      water_max: water_max ?? this.water_max,
      calories_min: calories_min ?? this.calories_min,
      calories_max: calories_max ?? this.calories_max,
    );
  }

  String toJson() => json.encode(toMap());
  factory DbNutrientModel.fromJson(String source) => DbNutrientModel.fromMap(
        json.decode(source) as Map<String, dynamic>,
      );

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is DbNutrientModel &&
            (identical(
                  other.id,
                  id,
                ) ||
                other.id == id) &&
            (identical(
                  other.stage,
                  stage,
                ) ||
                other.stage == stage) &&
            (identical(
                  other.protein_min,
                  protein_min,
                ) ||
                other.protein_min == protein_min) &&
            (identical(
                  other.protein_max,
                  protein_max,
                ) ||
                other.protein_max == protein_max) &&
            (identical(
                  other.sodium_min,
                  sodium_min,
                ) ||
                other.sodium_min == sodium_min) &&
            (identical(
                  other.sodium_max,
                  sodium_max,
                ) ||
                other.sodium_max == sodium_max) &&
            (identical(
                  other.potassium_min,
                  potassium_min,
                ) ||
                other.potassium_min == potassium_min) &&
            (identical(
                  other.potassium_max,
                  potassium_max,
                ) ||
                other.potassium_max == potassium_max) &&
            (identical(
                  other.calcium_min,
                  calcium_min,
                ) ||
                other.calcium_min == calcium_min) &&
            (identical(
                  other.calcium_max,
                  calcium_max,
                ) ||
                other.calcium_max == calcium_max) &&
            (identical(
                  other.phosphorus_min,
                  phosphorus_min,
                ) ||
                other.phosphorus_min == phosphorus_min) &&
            (identical(
                  other.phosphorus_max,
                  phosphorus_max,
                ) ||
                other.phosphorus_max == phosphorus_max) &&
            (identical(
                  other.water_min,
                  water_min,
                ) ||
                other.water_min == water_min) &&
            (identical(
                  other.water_max,
                  water_max,
                ) ||
                other.water_max == water_max) &&
            (identical(
                  other.calories_min,
                  calories_min,
                ) ||
                other.calories_min == calories_min) &&
            (identical(
                  other.calories_max,
                  calories_max,
                ) ||
                other.calories_max == calories_max));
  }

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        stage,
        protein_min,
        protein_max,
        sodium_min,
        sodium_max,
        potassium_min,
        potassium_max,
        calcium_min,
        calcium_max,
        phosphorus_min,
        phosphorus_max,
        water_min,
        water_max,
        calories_min,
        calories_max,
      ]);

  @override
  String toString() {
    return 'DbNutrientModel(id: $id, stage: $stage, protein_min: $protein_min, protein_max: $protein_max, sodium_min: $sodium_min, sodium_max: $sodium_max, potassium_min: $potassium_min, potassium_max: $potassium_max, calcium_min: $calcium_min, calcium_max: $calcium_max, phosphorus_min: $phosphorus_min, phosphorus_max: $phosphorus_max, water_min: $water_min, water_max: $water_max, calories_min: $calories_min, calories_max: $calories_max, )';
  }
}
