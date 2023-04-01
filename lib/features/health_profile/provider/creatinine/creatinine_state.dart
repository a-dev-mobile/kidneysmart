// ignore_for_file: avoid_bool_literals_in_conditional_expressions
// ignore_for_file: sort_constructors_first
import 'dart:convert';

import 'package:meta/meta.dart';
import 'package:nutrition/core/enum/enum.dart';
import 'package:nutrition/features/health_profile/health_profile.dart';

@immutable
class CreatinineState { 
  /* init:'' */
  final String result;

  final double? value;
  /* init:'' */
  final String error;
  /* init: EnumValid.init */
  final EnumValid enumValid;

  /* init:  EnumInputTypeCreatinine.mcmolL */
  final EnumInputTypeCreatinine inputTypeCreatinine;
  // end
   
//          --TURN_GEN--
//          v0.8.2 (data)
//  *************************************
//         GENERATED CODE 
//  *************************************
  
  const CreatinineState({
    this.result = '',
    this.error = '',
    this.enumValid = EnumValid.init,
    this.inputTypeCreatinine = EnumInputTypeCreatinine.mcmolL,
    this.value,
  });


  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'result': result, 
      'value': value, 
      'error': error, 
      'enumValid': enumValid.index, 
      'inputTypeCreatinine': inputTypeCreatinine.index, 
    };
  }


  factory CreatinineState.fromMap(Map<dynamic, dynamic>? map) {
    if (map == null) return const CreatinineState();

    return CreatinineState(
      result: map['result'] as String? ?? '', 
      value: (map['value'] as num?)?.toDouble(), 
      error: map['error'] as String? ?? '', 
      enumValid: map['enumValid'] != null ? EnumValid.values[map['enumValid'] as int] : EnumValid.init, 
      inputTypeCreatinine: map['inputTypeCreatinine'] != null ? EnumInputTypeCreatinine.values[map['inputTypeCreatinine'] as int] : EnumInputTypeCreatinine.mcmolL, 
    );
  }

  CreatinineState copyWith({
    String? result,
    double? value,
    String? error,
    EnumValid? enumValid,
    EnumInputTypeCreatinine? inputTypeCreatinine,
  }) {
    return CreatinineState(
      result: result ?? this.result, 
      value: value ?? this.value, 
      error: error ?? this.error, 
      enumValid: enumValid ?? this.enumValid, 
      inputTypeCreatinine: inputTypeCreatinine ?? this.inputTypeCreatinine, 
    );
  }

  String toJson() => json.encode(toMap());  
  factory CreatinineState.fromJson(String source) => CreatinineState.fromMap(json.decode(source) as Map<String, dynamic>,);  
   
  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is CreatinineState &&
            (identical(other.result, result) || other.result == result) && 
            (identical(other.value, value) || other.value == value) && 
            (identical(other.error, error) || other.error == error) && 
            (identical(other.enumValid, enumValid) || other.enumValid == enumValid) && 
            (identical(other.inputTypeCreatinine, inputTypeCreatinine) || other.inputTypeCreatinine == inputTypeCreatinine));
  }

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        result,
        value,
        error,
        enumValid,
        inputTypeCreatinine,
]);

  @override
  String toString() {
    return 'CreatinineState(result: $result, value: $value, error: $error, enumValid: $enumValid, inputTypeCreatinine: $inputTypeCreatinine, )';
    }

}
