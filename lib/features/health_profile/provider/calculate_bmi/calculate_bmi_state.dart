// ignore_for_file: avoid_bool_literals_in_conditional_expressions
// ignore_for_file: sort_constructors_first
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:nutrition/features/health_profile/health_profile.dart';

@immutable
class CalculateBmiState { 
  /* init: '' */
  final String bmiValue;
  /* init:  EnumWeightStatus.none */
  final EnumWeightStatus enumWeightStatus;
  /* init:  EnumBmiYears.none */
  final EnumBmiYears enumBmiYears;
  /* init:'' */
  final String markdownSuccess;
  /* init:'' */
  final String markdownError;
// end
   
//          --TURN_GEN--
//          v0.8.2 (data)
//  *************************************
//         GENERATED CODE 
//  *************************************
  
  const CalculateBmiState({
    this.bmiValue = '',
    this.enumWeightStatus = EnumWeightStatus.none,
    this.enumBmiYears = EnumBmiYears.none,
    this.markdownSuccess = '',
    this.markdownError = '',
  });


  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bmiValue': bmiValue, 
      'enumWeightStatus': enumWeightStatus.index, 
      'enumBmiYears': enumBmiYears.index, 
      'markdownSuccess': markdownSuccess, 
      'markdownError': markdownError, 
    };
  }


  factory CalculateBmiState.fromMap(Map<dynamic, dynamic>? map) {
    if (map == null) return const CalculateBmiState();

    return CalculateBmiState(
      bmiValue: map['bmiValue'] as String? ?? '', 
      enumWeightStatus: map['enumWeightStatus'] != null ? EnumWeightStatus.values[map['enumWeightStatus'] as int] : EnumWeightStatus.none, 
      enumBmiYears: map['enumBmiYears'] != null ? EnumBmiYears.values[map['enumBmiYears'] as int] : EnumBmiYears.none, 
      markdownSuccess: map['markdownSuccess'] as String? ?? '', 
      markdownError: map['markdownError'] as String? ?? '', 
    );
  }

  CalculateBmiState copyWith({
    String? bmiValue,
    EnumWeightStatus? enumWeightStatus,
    EnumBmiYears? enumBmiYears,
    String? markdownSuccess,
    String? markdownError,
  }) {
    return CalculateBmiState(
      bmiValue: bmiValue ?? this.bmiValue, 
      enumWeightStatus: enumWeightStatus ?? this.enumWeightStatus, 
      enumBmiYears: enumBmiYears ?? this.enumBmiYears, 
      markdownSuccess: markdownSuccess ?? this.markdownSuccess, 
      markdownError: markdownError ?? this.markdownError, 
    );
  }

  String toJson() => json.encode(toMap());  
  factory CalculateBmiState.fromJson(String source) => CalculateBmiState.fromMap(json.decode(source) as Map<String, dynamic>,);  
   
  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is CalculateBmiState &&
            (identical(other.bmiValue, bmiValue) || other.bmiValue == bmiValue) && 
            (identical(other.enumWeightStatus, enumWeightStatus) || other.enumWeightStatus == enumWeightStatus) && 
            (identical(other.enumBmiYears, enumBmiYears) || other.enumBmiYears == enumBmiYears) && 
            (identical(other.markdownSuccess, markdownSuccess) || other.markdownSuccess == markdownSuccess) && 
            (identical(other.markdownError, markdownError) || other.markdownError == markdownError));
  }

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        bmiValue,
        enumWeightStatus,
        enumBmiYears,
        markdownSuccess,
        markdownError,
]);

  @override
  String toString() {
    return 'CalculateBmiState(bmiValue: $bmiValue, enumWeightStatus: $enumWeightStatus, enumBmiYears: $enumBmiYears, markdownSuccess: $markdownSuccess, markdownError: $markdownError, )';
    }

}
