// ignore_for_file: avoid_bool_literals_in_conditional_expressions
// ignore_for_file: sort_constructors_first
import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:kidneysmart/core/valid/enum_valid.dart';

@immutable
class PassportDateValid {
  /* init:'' */
  final String value;

  /* init:'' */
  final String error;

  /* init: EnumValid.init */
  final EnumValid enumValid;

  final DateTime? nowDate;
  final DateTime? firstDate;

  // end

//          --TURN_GEN--
//             (data)
//  *************************************
//         GENERATED CODE
//  *************************************
  const PassportDateValid({
    this.value = '',
    this.error = '',
    this.enumValid = EnumValid.init,
    this.nowDate,
    this.firstDate,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'value': value,
      'error': error,
      'enumValid': enumValid.index,
      'nowDate': nowDate?.toIso8601String(),
      'firstDate': firstDate?.toIso8601String(),
    };
  }

  factory PassportDateValid.fromMap(Map<dynamic, dynamic>? map) {
    if (map == null) return const PassportDateValid();

    return PassportDateValid(
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
      nowDate: map['nowDate'] == null
          ? null
          : DateTime.parse(map['nowDate'] as String),
      firstDate: map['firstDate'] == null
          ? null
          : DateTime.parse(map['firstDate'] as String),
    );
  }

  PassportDateValid copyWith({
    String? value,
    String? error,
    EnumValid? enumValid,
    DateTime? nowDate,
    DateTime? firstDate,
  }) {
    return PassportDateValid(
      value: value ?? this.value,
      error: error ?? this.error,
      enumValid: enumValid ?? this.enumValid,
      nowDate: nowDate ?? this.nowDate,
      firstDate: firstDate ?? this.firstDate,
    );
  }

  String toJson() => json.encode(toMap());
  factory PassportDateValid.fromJson(String source) =>
      PassportDateValid.fromMap(
        json.decode(source) as Map<String, dynamic>,
      );

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is PassportDateValid &&
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
                  other.nowDate,
                  nowDate,
                ) ||
                other.nowDate == nowDate) &&
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
        nowDate,
        firstDate,
      ]);

  @override
  String toString() {
    return 'PassportDateValid(value: $value, error: $error, enumValid: $enumValid, nowDate: $nowDate, firstDate: $firstDate, )';
  }
}
