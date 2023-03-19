// ignore_for_file: avoid_bool_literals_in_conditional_expressions
// ignore_for_file: sort_constructors_first
import 'dart:convert';

import 'package:flutter/material.dart';

@immutable
class BirthdayModel {
  /* init:'' */
  final String? errorMessage;
  /* init: false */
  final bool isValid;
  final String? daySelected;
  final String? yearSelected;
  final String? monthSelected;
  // end

//          --TURN_GEN--
//             v0.4.7
//  *************************************
//           GENERATED CODE
//  *************************************

  const BirthdayModel({
    this.errorMessage = '',
    this.isValid = false,
    this.daySelected,
    this.yearSelected,
    this.monthSelected,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'errorMessage': errorMessage,
      'isValid': isValid,
      'daySelected': daySelected,
      'yearSelected': yearSelected,
      'monthSelected': monthSelected,
    };
  }

  factory BirthdayModel.fromMap(Map<dynamic, dynamic>? map) {
    if (map == null) return const BirthdayModel();

    return BirthdayModel(
      errorMessage:
          map['errorMessage'] != null ? map['errorMessage'] as String : '',
      isValid: map['isValid'] != null ? map['isValid'] as bool : false,
      daySelected:
          map['daySelected'] != null ? map['daySelected'] as String : null,
      yearSelected:
          map['yearSelected'] != null ? map['yearSelected'] as String : null,
      monthSelected:
          map['monthSelected'] != null ? map['monthSelected'] as String : null,
    );
  }

  BirthdayModel copyWith({
    String? errorMessage,
    bool? isValid,
    String? daySelected,
    String? yearSelected,
    String? monthSelected,
  }) {
    return BirthdayModel(
      errorMessage: errorMessage ?? this.errorMessage,
      isValid: isValid ?? this.isValid,
      daySelected: daySelected ?? this.daySelected,
      yearSelected: yearSelected ?? this.yearSelected,
      monthSelected: monthSelected ?? this.monthSelected,
    );
  }

  String toJson() => json.encode(toMap());
  factory BirthdayModel.fromJson(String source) => BirthdayModel.fromMap(
        json.decode(source) as Map<String, dynamic>,
      );

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is BirthdayModel &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage) &&
            (identical(other.isValid, isValid) || other.isValid == isValid) &&
            (identical(other.daySelected, daySelected) ||
                other.daySelected == daySelected) &&
            (identical(other.yearSelected, yearSelected) ||
                other.yearSelected == yearSelected) &&
            (identical(other.monthSelected, monthSelected) ||
                other.monthSelected == monthSelected));
  }

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        errorMessage,
        isValid,
        daySelected,
        yearSelected,
        monthSelected,
      ]);

  @override
  String toString() {
    return 'BirthdayModel(errorMessage: $errorMessage, isValid: $isValid, daySelected: $daySelected, yearSelected: $yearSelected, monthSelected: $monthSelected, )';
  }
}
