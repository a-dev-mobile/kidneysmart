// ignore_for_file: avoid_bool_literals_in_conditional_expressions
// ignore_for_file: sort_constructors_first
import 'dart:convert';

import 'package:flutter/material.dart';

@immutable
class ValidBirthdayModel {                                                                                                                              
  /* init:'' */
  final String errorMessage;

  final String? daySelected;
  final String? yearSelected;
  final String? monthSelected;
  // end
   
//          --TURN_GEN--
//          v0.8.2 (data)
//  *************************************
//         GENERATED CODE 
//  *************************************
  
  const ValidBirthdayModel({
    this.errorMessage = '',
    this.daySelected,
    this.yearSelected,
    this.monthSelected,
  });


  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'errorMessage': errorMessage, 
      'daySelected': daySelected, 
      'yearSelected': yearSelected, 
      'monthSelected': monthSelected, 
    };
  }


  factory ValidBirthdayModel.fromMap(Map<dynamic, dynamic>? map) {
    if (map == null) return const ValidBirthdayModel();

    return ValidBirthdayModel(
      errorMessage: map['errorMessage'] as String? ?? '', 
      daySelected: map['daySelected'] as String?, 
      yearSelected: map['yearSelected'] as String?, 
      monthSelected: map['monthSelected'] as String?, 
    );
  }

  ValidBirthdayModel copyWith({
    String? errorMessage,
    String? daySelected,
    String? yearSelected,
    String? monthSelected,
  }) {
    return ValidBirthdayModel(
      errorMessage: errorMessage ?? this.errorMessage, 
      daySelected: daySelected ?? this.daySelected, 
      yearSelected: yearSelected ?? this.yearSelected, 
      monthSelected: monthSelected ?? this.monthSelected, 
    );
  }

  String toJson() => json.encode(toMap());  
  factory ValidBirthdayModel.fromJson(String source) => ValidBirthdayModel.fromMap(json.decode(source) as Map<String, dynamic>,);  
   
  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ValidBirthdayModel &&
            (identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage) && 
            (identical(other.daySelected, daySelected) || other.daySelected == daySelected) && 
            (identical(other.yearSelected, yearSelected) || other.yearSelected == yearSelected) && 
            (identical(other.monthSelected, monthSelected) || other.monthSelected == monthSelected));
  }

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        errorMessage,
        daySelected,
        yearSelected,
        monthSelected,
]);

  @override
  String toString() {
    return 'ValidBirthdayModel(errorMessage: $errorMessage, daySelected: $daySelected, yearSelected: $yearSelected, monthSelected: $monthSelected, )';
    }

}
