// ignore_for_file: avoid_bool_literals_in_conditional_expressions
// ignore_for_file: sort_constructors_first
import 'dart:convert';


import 'package:flutter/material.dart';
import 'package:nutrition/features/health_profile/health_profile.dart';

@immutable
class CalculateBmiState {    
  /* init: '' */
  final String value;
  /* init:  EnumWeightStatus.none */
  final EnumWeightStatus enumWeightStatus;
    /* init:  EnumBmiYears.none */
  final EnumBmiYears enumBmiYears;
  /* init:'' */
  final String daySelected;
  /* init:'' */
  final String yearSelected;
  /* init:'' */
  final String monthSelected;


// end
   
//          --TURN_GEN--
//          v0.8.2 (data)
//  *************************************
//         GENERATED CODE 
//  *************************************
  
  const CalculateBmiState({
    this.value = '',
    this.enumWeightStatus = EnumWeightStatus.none,
    this.enumBmiYears = EnumBmiYears.none,
    this.daySelected = '',
    this.yearSelected = '',
    this.monthSelected = '',
  });


  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'value': value, 
      'enumWeightStatus': enumWeightStatus.index, 
      'enumBmiYears': enumBmiYears.index, 
      'daySelected': daySelected, 
      'yearSelected': yearSelected, 
      'monthSelected': monthSelected, 
    };
  }


  factory CalculateBmiState.fromMap(Map<dynamic, dynamic>? map) {
    if (map == null) return const CalculateBmiState();

    return CalculateBmiState(
      value: map['value'] as String? ?? '', 
      enumWeightStatus: map['enumWeightStatus'] != null ? EnumWeightStatus.values[map['enumWeightStatus'] as int] : EnumWeightStatus.none, 
      enumBmiYears: map['enumBmiYears'] != null ? EnumBmiYears.values[map['enumBmiYears'] as int] : EnumBmiYears.none, 
      daySelected: map['daySelected'] as String? ?? '', 
      yearSelected: map['yearSelected'] as String? ?? '', 
      monthSelected: map['monthSelected'] as String? ?? '', 
    );
  }

  CalculateBmiState copyWith({
    String? value,
    EnumWeightStatus? enumWeightStatus,
    EnumBmiYears? enumBmiYears,
    String? daySelected,
    String? yearSelected,
    String? monthSelected,
  }) {
    return CalculateBmiState(
      value: value ?? this.value, 
      enumWeightStatus: enumWeightStatus ?? this.enumWeightStatus, 
      enumBmiYears: enumBmiYears ?? this.enumBmiYears, 
      daySelected: daySelected ?? this.daySelected, 
      yearSelected: yearSelected ?? this.yearSelected, 
      monthSelected: monthSelected ?? this.monthSelected, 
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
            (identical(other.enumWeightStatus, enumWeightStatus) || other.enumWeightStatus == enumWeightStatus) && 
            (identical(other.enumBmiYears, enumBmiYears) || other.enumBmiYears == enumBmiYears) && 
            (identical(other.daySelected, daySelected) || other.daySelected == daySelected) && 
            (identical(other.yearSelected, yearSelected) || other.yearSelected == yearSelected) && 
            (identical(other.monthSelected, monthSelected) || other.monthSelected == monthSelected));
  }

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        value,
        enumWeightStatus,
        enumBmiYears,
        daySelected,
        yearSelected,
        monthSelected,
]);

  @override
  String toString() {
    return 'CalculateBmiState(value: $value, enumWeightStatus: $enumWeightStatus, enumBmiYears: $enumBmiYears, daySelected: $daySelected, yearSelected: $yearSelected, monthSelected: $monthSelected, )';
    }

}
