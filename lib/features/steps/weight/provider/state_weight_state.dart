// ignore_for_file: avoid_bool_literals_in_conditional_expressions
// ignore_for_file: sort_constructors_first
import 'dart:convert';

import 'package:meta/meta.dart';
import 'package:nutrition/features/steps/gender/gender.dart';
import 'package:nutrition/features/steps/weight/weight.dart';
import 'package:nutrition/shared/enum/enum.dart';

@immutable
class WeightState {
  /* init:'' */
  final String result;
  /* init: EnumGender.none */
  final EnumGender enumGender;
  final double? value;
  /* init:'' */
  final String error;
  /* init: EnumValid.init */
  final EnumValid enumValid;

  /* init: EnumUnitWeight.kg */
  final EnumUnitWeight enumUnitWeight;
/* init: true */
  final bool isKeyboardOpen;

  // end
   
//          --TURN_GEN--
//             (data)
//  *************************************
//         GENERATED CODE
//  *************************************
  const WeightState({
    this.result = '',
    this.enumGender = EnumGender.none,
    this.error = '',
    this.enumValid = EnumValid.init,
    this.enumUnitWeight = EnumUnitWeight.kg,
    this.isKeyboardOpen = true,
    this.value,
  });


  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'result': result,
      'enumGender': enumGender.index,
      'value': value,
      'error': error,
      'enumValid': enumValid.index,
      'enumUnitWeight': enumUnitWeight.index,
      'isKeyboardOpen': isKeyboardOpen,
    };
  }


  factory WeightState.fromMap(Map<dynamic, dynamic>? map) {
    if (map == null) return const WeightState();

    return WeightState(
      result: map['result'] as String? ?? '',
      enumGender: map['enumGender'] != null ? EnumGender.values[map['enumGender'] as int] : EnumGender.none,
      value: (map['value'] as num?)?.toDouble(),
      error: map['error'] as String? ?? '',
      enumValid: map['enumValid'] != null ? EnumValid.values[map['enumValid'] as int] : EnumValid.init,
      enumUnitWeight: map['enumUnitWeight'] != null ? EnumUnitWeight.values[map['enumUnitWeight'] as int] : EnumUnitWeight.kg,
      isKeyboardOpen: map['isKeyboardOpen'] as bool? ?? true,
    );
  }

  WeightState copyWith({
    String? result,
    EnumGender? enumGender,
    double? value,
    String? error,
    EnumValid? enumValid,
    EnumUnitWeight? enumUnitWeight,
    bool? isKeyboardOpen,
  }) {
    return WeightState(
      result: result ?? this.result,
      enumGender: enumGender ?? this.enumGender,
      value: value ?? this.value,
      error: error ?? this.error,
      enumValid: enumValid ?? this.enumValid,
      enumUnitWeight: enumUnitWeight ?? this.enumUnitWeight,
      isKeyboardOpen: isKeyboardOpen ?? this.isKeyboardOpen,
    );
  }

  String toJson() => json.encode(toMap());
  factory WeightState.fromJson(String source) => WeightState.fromMap(json.decode(source) as Map<String, dynamic>,);
   
  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is WeightState &&
            (identical(other.result, result,) || other.result == result) &&
            (identical(other.enumGender, enumGender,) || other.enumGender == enumGender) &&
            (identical(other.value, value,) || other.value == value) &&
            (identical(other.error, error,) || other.error == error) &&
            (identical(other.enumValid, enumValid,) || other.enumValid == enumValid) &&
            (identical(other.enumUnitWeight, enumUnitWeight,) || other.enumUnitWeight == enumUnitWeight) &&
            (identical(other.isKeyboardOpen, isKeyboardOpen,) || other.isKeyboardOpen == isKeyboardOpen));
  }

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        result,
        enumGender,
        value,
        error,
        enumValid,
        enumUnitWeight,
        isKeyboardOpen,
]);

  @override
  String toString() {
    return 'WeightState(result: $result, enumGender: $enumGender, value: $value, error: $error, enumValid: $enumValid, enumUnitWeight: $enumUnitWeight, isKeyboardOpen: $isKeyboardOpen, )';
  }
}
