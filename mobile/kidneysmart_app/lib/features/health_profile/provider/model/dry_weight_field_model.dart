/* // ignore_for_file: avoid_bool_literals_in_conditional_expressions
// ignore_for_file: sort_constructors_first
import 'dart:convert';

import 'package:meta/meta.dart';
import 'package:kidneysmart/core/enum/enum.dart';
import 'package:kidneysmart/features/health_profile/health_profile.dart';

@immutable
class DryWeightFieldModel {
  /* init:'' */
  final String result;

  final double? value;
  /* init:'' */
  final String error;
  /* init: EnumValid.init */
  final EnumValid enumValid;
  /* init: EnumUnitWeight.kg */
  final EnumUnitWeight enumUnitWeight;

  // end

//          --TURN_GEN--
//             (data)
//  *************************************
//         GENERATED CODE
//  *************************************
  const DryWeightFieldModel({
    this.result = '',
    this.error = '',
    this.enumValid = EnumValid.init,
    this.enumUnitWeight = EnumUnitWeight.kg,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'result': result,
      'value': value,
      'error': error,
      'enumValid': enumValid.index,
      'enumUnitWeight': enumUnitWeight.index,
    };
  }

  factory DryWeightFieldModel.fromMap(Map<dynamic, dynamic>? map) {
    if (map == null) return const DryWeightFieldModel();

    return DryWeightFieldModel(
      result: map['result'] as String? ?? '',
      value: (map['value'] as num?)?.toDouble(),
      error: map['error'] as String? ?? '',
      enumValid: map['enumValid'] != null
          ? EnumValid.values[map['enumValid'] as int]
          : EnumValid.init,
      enumUnitWeight: map['enumUnitWeight'] != null
          ? EnumUnitWeight.values[map['enumUnitWeight'] as int]
          : EnumUnitWeight.kg,
    );
  }

  DryWeightFieldModel copyWith({
    String? result,
    double? value,
    String? error,
    EnumValid? enumValid,
    EnumUnitWeight? enumUnitWeight,
  }) {
    return DryWeightFieldModel(
      result: result ?? this.result,
      value: value ?? this.value,
      error: error ?? this.error,
      enumValid: enumValid ?? this.enumValid,
      enumUnitWeight: enumUnitWeight ?? this.enumUnitWeight,
    );
  }

  String toJson() => json.encode(toMap());
  factory DryWeightFieldModel.fromJson(String source) =>
      DryWeightFieldModel.fromMap(
        json.decode(source) as Map<String, dynamic>,
      );

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is DryWeightFieldModel &&
            (identical(
                  other.result,
                  result,
                ) ||
                other.result == result) &&
            (identical(
                  other.value,
                  value,
                ) ||
                other.value == value) &&
            (identical(
                  other.error,
                  error,
                ) ||
                other.error == error) &&
            (identical(
                  other.enumValid,
                  enumValid,
                ) ||
                other.enumValid == enumValid) &&
            (identical(
                  other.enumUnitWeight,
                  enumUnitWeight,
                ) ||
                other.enumUnitWeight == enumUnitWeight));
  }

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        result,
        value,
        error,
        enumValid,
        enumUnitWeight,
      ]);

  @override
  String toString() {
    return 'DryWeightFieldModel(result: $result, value: $value, error: $error, enumValid: $enumValid, enumUnitWeight: $enumUnitWeight, )';
  }
}
 */
