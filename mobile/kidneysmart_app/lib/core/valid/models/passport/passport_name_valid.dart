// ignore_for_file: avoid_bool_literals_in_conditional_expressions
// ignore_for_file: sort_constructors_first
import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:kidneysmart/core/valid/enum_valid.dart';

@immutable
class PassportNameValid {
  /* init:'' */
  final String value;

  /* init:'' */
  final String error;

  /* init: EnumValid.init */
  final EnumValid enumValid;

  // end

//          --TURN_GEN--
//             (data)
//  *************************************
//         GENERATED CODE
//  *************************************
  const PassportNameValid({
    this.value = '',
    this.error = '',
    this.enumValid = EnumValid.init,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'value': value,
      'error': error,
      'enumValid': enumValid.index,
    };
  }

  factory PassportNameValid.fromMap(Map<dynamic, dynamic>? map) {
    if (map == null) return const PassportNameValid();

    return PassportNameValid(
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
    );
  }

  PassportNameValid copyWith({
    String? value,
    String? error,
    EnumValid? enumValid,
  }) {
    return PassportNameValid(
      value: value ?? this.value,
      error: error ?? this.error,
      enumValid: enumValid ?? this.enumValid,
    );
  }

  String toJson() => json.encode(toMap());
  factory PassportNameValid.fromJson(String source) =>
      PassportNameValid.fromMap(
        json.decode(source) as Map<String, dynamic>,
      );

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is PassportNameValid &&
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
                other.enumValid == enumValid));
  }

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        value,
        error,
        enumValid,
      ]);

  @override
  String toString() {
    return 'PassportNameValid(value: $value, error: $error, enumValid: $enumValid, )';
  }
}
