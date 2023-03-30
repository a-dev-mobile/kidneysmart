// ignore_for_file: avoid_bool_literals_in_conditional_expressions
// ignore_for_file: sort_constructors_first
import 'dart:convert';


import 'package:flutter/material.dart';
import 'package:nutrition/features/health_profile/health_profile.dart';

@immutable
class CalculateBmiState { 
  /* init: 0 */
  final double value;
  /* init:  EnumWeightRange.none */
  final EnumWeightRange enumWeightRange;
// end
   
//          --TURN_GEN--
//          v0.8.2 (data)
//  *************************************
//         GENERATED CODE 
//  *************************************
  
  const CalculateBmiState({
    this.value = 0,
    this.enumWeightRange = EnumWeightRange.none,
  });


  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'value': value, 
      'enumWeightRange': enumWeightRange.index, 
    };
  }


  factory CalculateBmiState.fromMap(Map<dynamic, dynamic>? map) {
    if (map == null) return const CalculateBmiState();

    return CalculateBmiState(
      value: (map['value'] as num?)?.toDouble() ?? 0, 
      enumWeightRange: map['enumWeightRange'] != null ? EnumWeightRange.values[map['enumWeightRange'] as int] : EnumWeightRange.none, 
    );
  }

  CalculateBmiState copyWith({
    double? value,
    EnumWeightRange? enumWeightRange,
  }) {
    return CalculateBmiState(
      value: value ?? this.value, 
      enumWeightRange: enumWeightRange ?? this.enumWeightRange, 
    );
  }

  String toJson() => json.encode(toMap());  
  factory CalculateBmiState.fromJson(String source) => CalculateBmiState.fromMap(json.decode(source) as Map<String, dynamic>,);  
   
  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is CalculateBmiState &&
            (identical(other.value, value) || other.value == value) && 
            (identical(other.enumWeightRange, enumWeightRange) || other.enumWeightRange == enumWeightRange));
  }

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        value,
        enumWeightRange,
]);

  @override
  String toString() {
    return 'CalculateBmiState(value: $value, enumWeightRange: $enumWeightRange, )';
    }

}
