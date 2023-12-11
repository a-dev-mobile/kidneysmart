// ignore_for_file: avoid_bool_literals_in_conditional_expressions
// ignore_for_file: sort_constructors_first
import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:kidneysmart/core/valid/enum_valid.dart';

@immutable
class PhoneValid {
  /* init:'' */
  final String valueFormat;
  /* init:'' */
  final String valueNotFormat;
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
  const PhoneValid({
    this.valueFormat = '',
    this.valueNotFormat = '',
    this.error = '',
    this.enumValid = EnumValid.init,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'valueFormat': valueFormat,
      'valueNotFormat': valueNotFormat,
      'error': error,
      'enumValid': enumValid.index,
    };
  }

  factory PhoneValid.fromMap(Map<dynamic, dynamic>? map) {
    if (map == null) return const PhoneValid();

    return PhoneValid(
      valueFormat: map['valueFormat'] as String? ?? '',
      valueNotFormat: map['valueNotFormat'] as String? ?? '',
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

  PhoneValid copyWith({
    String? valueFormat,
    String? valueNotFormat,
    String? error,
    EnumValid? enumValid,
  }) {
    return PhoneValid(
      valueFormat: valueFormat ?? this.valueFormat,
      valueNotFormat: valueNotFormat ?? this.valueNotFormat,
      error: error ?? this.error,
      enumValid: enumValid ?? this.enumValid,
    );
  }

  String toJson() => json.encode(toMap());
  factory PhoneValid.fromJson(String source) => PhoneValid.fromMap(
        json.decode(source) as Map<String, dynamic>,
      );

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is PhoneValid &&
            (identical(
                  other.valueFormat,
                  valueFormat,
                ) ||
                other.valueFormat == valueFormat) &&
            (identical(
                  other.valueNotFormat,
                  valueNotFormat,
                ) ||
                other.valueNotFormat == valueNotFormat) &&
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
        valueFormat,
        valueNotFormat,
        error,
        enumValid,
      ]);

  @override
  String toString() {
    return 'PhoneValid(valueFormat: $valueFormat, valueNotFormat: $valueNotFormat, error: $error, enumValid: $enumValid, )';
  }
}
