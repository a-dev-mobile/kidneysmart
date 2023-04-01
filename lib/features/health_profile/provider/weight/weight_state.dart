// ignore_for_file: avoid_bool_literals_in_conditional_expressions
// ignore_for_file: sort_constructors_first
import 'dart:convert';

import 'package:meta/meta.dart';
import 'package:nutrition/core/enum/enum.dart';
import 'package:nutrition/features/health_profile/health_profile.dart';

@immutable
class WeightState { 
  /* init:'' */
  final String result;

  final double? value;
  /* init:'' */
  final String errorMessage;
  /* init: EnumValid.init */
  final EnumValid enumValid;

  /* init: EnumUnitWeight.kg */
  final EnumUnitWeight enumUnitWeight;
  // end
   
//          --TURN_GEN--
//          v0.8.2 (data)
//  *************************************
//         GENERATED CODE 
//  *************************************
  
  const WeightState({
    this.result = '',
    this.errorMessage = '',
    this.enumValid = EnumValid.init,
    this.enumUnitWeight = EnumUnitWeight.kg,
    this.value,
  });


  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'result': result, 
      'value': value, 
      'errorMessage': errorMessage, 
      'enumValid': enumValid.index, 
      'enumUnitWeight': enumUnitWeight.index, 
    };
  }


  factory WeightState.fromMap(Map<dynamic, dynamic>? map) {
    if (map == null) return const WeightState();

    return WeightState(
      result: map['result'] as String? ?? '', 
      value: (map['value'] as num?)?.toDouble(), 
      errorMessage: map['errorMessage'] as String? ?? '', 
      enumValid: map['enumValid'] != null ? EnumValid.values[map['enumValid'] as int] : EnumValid.init, 
      enumUnitWeight: map['enumUnitWeight'] != null ? EnumUnitWeight.values[map['enumUnitWeight'] as int] : EnumUnitWeight.kg, 
    );
  }

  WeightState copyWith({
    String? result,
    double? value,
    String? errorMessage,
    EnumValid? enumValid,
    EnumUnitWeight? enumUnitWeight,
  }) {
    return WeightState(
      result: result ?? this.result, 
      value: value ?? this.value, 
      errorMessage: errorMessage ?? this.errorMessage, 
      enumValid: enumValid ?? this.enumValid, 
      enumUnitWeight: enumUnitWeight ?? this.enumUnitWeight, 
    );
  }

  String toJson() => json.encode(toMap());  
  factory WeightState.fromJson(String source) => WeightState.fromMap(json.decode(source) as Map<String, dynamic>,);  
   
  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is WeightState &&
            (identical(other.result, result) || other.result == result) && 
            (identical(other.value, value) || other.value == value) && 
            (identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage) && 
            (identical(other.enumValid, enumValid) || other.enumValid == enumValid) && 
            (identical(other.enumUnitWeight, enumUnitWeight) || other.enumUnitWeight == enumUnitWeight));
  }

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        result,
        value,
        errorMessage,
        enumValid,
        enumUnitWeight,
]);

  @override
  String toString() {
    return 'WeightState(result: $result, value: $value, errorMessage: $errorMessage, enumValid: $enumValid, enumUnitWeight: $enumUnitWeight, )';
    }

}
