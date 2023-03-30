// ignore_for_file: sort_constructors_first, avoid_bool_literals_in_conditional_expressions
import 'dart:convert';

import 'package:meta/meta.dart';
import 'package:nutrition/core/enum/enum.dart';
import 'package:nutrition/features/health_profile/health_profile.dart';

@immutable
class ValidWeightModel { 
  /* init:'' */
  final String value;

  /* init:'' */
  final String errorMessage;
  /* init: EnumUnitWeight.kg */
  final EnumUnitWeight enumUnitWeight;

  /* init: EnumValid.init */
  final EnumValid enumValid;
  // end
   
//          --TURN_GEN--
//          v0.8.2 (data)
//  *************************************
//         GENERATED CODE 
//  *************************************
  
  const ValidWeightModel({
    this.value = '',
    this.errorMessage = '',
    this.enumUnitWeight = EnumUnitWeight.kg,
    this.enumValid = EnumValid.init,
  });


  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'value': value, 
      'errorMessage': errorMessage, 
      'enumUnitWeight': enumUnitWeight.index, 
      'enumValid': enumValid.index, 
    };
  }


  factory ValidWeightModel.fromMap(Map<dynamic, dynamic>? map) {
    if (map == null) return const ValidWeightModel();

    return ValidWeightModel(
      value: map['value'] as String? ?? '', 
      errorMessage: map['errorMessage'] as String? ?? '', 
      enumUnitWeight: map['enumUnitWeight'] != null ? EnumUnitWeight.values[map['enumUnitWeight'] as int] : EnumUnitWeight.kg, 
      enumValid: map['enumValid'] != null ? EnumValid.values[map['enumValid'] as int] : EnumValid.init, 
    );
  }

  ValidWeightModel copyWith({
    String? value,
    String? errorMessage,
    EnumUnitWeight? enumUnitWeight,
    EnumValid? enumValid,
  }) {
    return ValidWeightModel(
      value: value ?? this.value, 
      errorMessage: errorMessage ?? this.errorMessage, 
      enumUnitWeight: enumUnitWeight ?? this.enumUnitWeight, 
      enumValid: enumValid ?? this.enumValid, 
    );
  }

  String toJson() => json.encode(toMap());  
  factory ValidWeightModel.fromJson(String source) => ValidWeightModel.fromMap(json.decode(source) as Map<String, dynamic>,);  
   
  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ValidWeightModel &&
            (identical(other.value, value) || other.value == value) && 
            (identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage) && 
            (identical(other.enumUnitWeight, enumUnitWeight) || other.enumUnitWeight == enumUnitWeight) && 
            (identical(other.enumValid, enumValid) || other.enumValid == enumValid));
  }

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        value,
        errorMessage,
        enumUnitWeight,
        enumValid,
]);

  @override
  String toString() {
    return 'ValidWeightModel(value: $value, errorMessage: $errorMessage, enumUnitWeight: $enumUnitWeight, enumValid: $enumValid, )';
    }

}
