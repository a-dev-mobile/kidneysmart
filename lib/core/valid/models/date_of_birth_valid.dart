// ignore_for_file: avoid_bool_literals_in_conditional_expressions
// ignore_for_file: sort_constructors_first
import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:kidneysmart/core/valid/enum_valid.dart';

@immutable
class DateOfBirthValid {
  /* init:'' */
  final String value;

  /* init:'' */
  final String error;

  /* init: EnumValid.init */
  final EnumValid enumValid;

  final DateTime? initialDate;
  final DateTime? firstDate;

  // end

//          --TURN_GEN--
//             (data)
//  *************************************
//         GENERATED CODE
//  *************************************
  const DateOfBirthValid({
    this.value = '',
    this.error = '',
    this.enumValid = EnumValid.init,
    this.initialDate,
    this.firstDate,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'value': value,
      'error': error,
      'enumValid': enumValid.index,
      'initialDate': initialDate?.toIso8601String(),
      'firstDate': firstDate?.toIso8601String(),
    };
  }

  factory DateOfBirthValid.fromMap(Map<dynamic, dynamic>? map) {
    if (map == null) return const DateOfBirthValid();

    return DateOfBirthValid(
      value: map['value'] as String? ?? '',
      error: map['error'] as String? ?? '',
      enumValid: map['enumValid'] != null
          ? map['enumValid'] is int
              ? EnumValid.values[map['enumValid'] as int]
              : map['enumValid'] is String
                  // ignore: prefer-enums-by-name
                  ? EnumValid.values.firstWhere(
                      (e) =>
                          e.toString().split('EnumValid.')[1] ==
                          map['enumValid'].toString(),
                      orElse: () => EnumValid.init,
                    )
                  : EnumValid.init
          : EnumValid.init,
      initialDate: map['initialDate'] == null
          ? null
          : DateTime.parse(map['initialDate'] as String),
      firstDate: map['firstDate'] == null
          ? null
          : DateTime.parse(map['firstDate'] as String),
    );
  }

  DateOfBirthValid copyWith({
    String? value,
    String? error,
    EnumValid? enumValid,
    DateTime? initialDate,
    DateTime? firstDate,
  }) {
    return DateOfBirthValid(
      value: value ?? this.value,
      error: error ?? this.error,
      enumValid: enumValid ?? this.enumValid,
      initialDate: initialDate ?? this.initialDate,
      firstDate: firstDate ?? this.firstDate,
    );
  }

  String toJson() => json.encode(toMap());
  factory DateOfBirthValid.fromJson(String source) => DateOfBirthValid.fromMap(
        json.decode(source) as Map<String, dynamic>,
      );

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is DateOfBirthValid &&
            (identical(
                  other.value,
                  value,
                ) ||
                other.value == value) &&
            (identical(
                  other.error,
                  error,
                ) ||
                other.error == error) &&
            (identical(
                  other.enumValid,
                  enumValid,
                ) ||
                other.enumValid == enumValid) &&
            (identical(
                  other.initialDate,
                  initialDate,
                ) ||
                other.initialDate == initialDate) &&
            (identical(
                  other.firstDate,
                  firstDate,
                ) ||
                other.firstDate == firstDate));
  }

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        value,
        error,
        enumValid,
        initialDate,
        firstDate,
      ]);

  @override
  String toString() {
    return 'DateOfBirthValid(value: $value, error: $error, enumValid: $enumValid, initialDate: $initialDate, firstDate: $firstDate, )';
  }
}
