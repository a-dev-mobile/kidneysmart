// ignore_for_file: avoid_bool_literals_in_conditional_expressions
// ignore_for_file: sort_constructors_first
import 'dart:convert';

import 'package:meta/meta.dart';
import 'package:nutrition/core/enum/enum.dart';
import 'package:nutrition/features/health_profile/health_profile.dart';

@immutable
class CreatinineModel {
  /* init:'' */
  final String result;

  final double? value;
  /* init:'' */
  final String error;
  /* init: EnumResult.init */
  final EnumResult enumValid;

  /* init:  EnumInputTypeCreatinine.mcmolL */
  final EnumInputTypeCreatinine inputTypeCreatinine;
  // end
   
//          --TURN_GEN--
//          v0.8.3 (data)
//  *************************************
//         GENERATED CODE
//  *************************************
  const CreatinineModel({
    this.result = '',
    this.error = '',
    this.enumValid = EnumResult.init,
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


  factory CreatinineModel.fromMap(Map<dynamic, dynamic>? map) {
    if (map == null) return const CreatinineModel();

    return CreatinineModel(
      result: map['result'] as String? ?? '', 
      value: (map['value'] as num?)?.toDouble(), 
      error: map['error'] as String? ?? '', 
      enumValid: map['enumValid'] != null ? EnumResult.values[map['enumValid'] as int] : EnumResult.init, 
      inputTypeCreatinine: map['inputTypeCreatinine'] != null ? EnumInputTypeCreatinine.values[map['inputTypeCreatinine'] as int] : EnumInputTypeCreatinine.mcmolL, 
    );
  }

  CreatinineModel copyWith({
    String? result,
    double? value,
    String? error,
    EnumResult? enumValid,
    EnumInputTypeCreatinine? inputTypeCreatinine,
  }) {
    return CreatinineModel(
      result: result ?? this.result, 
      value: value ?? this.value, 
      error: error ?? this.error, 
      enumValid: enumValid ?? this.enumValid, 
      inputTypeCreatinine: inputTypeCreatinine ?? this.inputTypeCreatinine, 
    );
  }

  String toJson() => json.encode(toMap());  
  factory CreatinineModel.fromJson(String source) => CreatinineModel.fromMap(json.decode(source) as Map<String, dynamic>,);  
   
  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is CreatinineModel &&
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
    return 'CreatinineModel(result: $result, value: $value, error: $error, enumValid: $enumValid, inputTypeCreatinine: $inputTypeCreatinine, )';
    }

}
