// ignore_for_file: avoid_bool_literals_in_conditional_expressions
// ignore_for_file: sort_constructors_first
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:nutrition/core/enum/enum.dart';

@immutable
class ValidBirthdayModel {                                                                                                                                    
  /* init:'' */
  final String errorMessage;

  /* init:'' */
  final String daySelected;
  /* init:'' */
  final String yearSelected;
  /* init:'' */
  final String monthSelected;

  final DateTime? dateBirthday;

    /* init: EnumValid.init */
  final EnumValid enumValid;
  // end
   
//          --TURN_GEN--
//          v0.8.2 (data)
//  *************************************
//         GENERATED CODE 
//  *************************************
  
  const ValidBirthdayModel({
    this.errorMessage = '',
    this.daySelected = '',
    this.yearSelected = '',
    this.monthSelected = '',
    this.enumValid = EnumValid.init,
    this.dateBirthday,
  });


  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'errorMessage': errorMessage, 
      'daySelected': daySelected, 
      'yearSelected': yearSelected, 
      'monthSelected': monthSelected, 
      'dateBirthday': dateBirthday?.toIso8601String(), 
      'enumValid': enumValid.index, 
    };
  }


  factory ValidBirthdayModel.fromMap(Map<dynamic, dynamic>? map) {
    if (map == null) return const ValidBirthdayModel();

    return ValidBirthdayModel(
      errorMessage: map['errorMessage'] as String? ?? '', 
      daySelected: map['daySelected'] as String? ?? '', 
      yearSelected: map['yearSelected'] as String? ?? '', 
      monthSelected: map['monthSelected'] as String? ?? '', 
      dateBirthday: map['dateBirthday'] == null ? null : DateTime.parse(map['dateBirthday'] as String), 
      enumValid: map['enumValid'] != null ? EnumValid.values[map['enumValid'] as int] : EnumValid.init, 
    );
  }

  ValidBirthdayModel copyWith({
    String? errorMessage,
    String? daySelected,
    String? yearSelected,
    String? monthSelected,
    DateTime? dateBirthday,
    EnumValid? enumValid,
  }) {
    return ValidBirthdayModel(
      errorMessage: errorMessage ?? this.errorMessage, 
      daySelected: daySelected ?? this.daySelected, 
      yearSelected: yearSelected ?? this.yearSelected, 
      monthSelected: monthSelected ?? this.monthSelected, 
      dateBirthday: dateBirthday ?? this.dateBirthday, 
      enumValid: enumValid ?? this.enumValid, 
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
            (identical(other.monthSelected, monthSelected) || other.monthSelected == monthSelected) && 
            (identical(other.dateBirthday, dateBirthday) || other.dateBirthday == dateBirthday) && 
            (identical(other.enumValid, enumValid) || other.enumValid == enumValid));
  }

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        errorMessage,
        daySelected,
        yearSelected,
        monthSelected,
        dateBirthday,
        enumValid,
]);

  @override
  String toString() {
    return 'ValidBirthdayModel(errorMessage: $errorMessage, daySelected: $daySelected, yearSelected: $yearSelected, monthSelected: $monthSelected, dateBirthday: $dateBirthday, enumValid: $enumValid, )';
    }

}
