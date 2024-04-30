// ignore_for_file: avoid_bool_literals_in_conditional_expressions
// ignore_for_file: sort_constructors_first
import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:kidneysmart/core/valid/enum_valid.dart';

@immutable
class PhotoValid {
  /* init:'' */
  final String value;

  /* init: false */
  final bool isLoadCheckCode;

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
  const PhotoValid({
    this.value = '',
    this.isLoadCheckCode = false,
    this.error = '',
    this.enumValid = EnumValid.init,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'value': value,
      'isLoadCheckCode': isLoadCheckCode,
      'error': error,
      'enumValid': enumValid.index,
    };
  }

  factory PhotoValid.fromMap(Map<dynamic, dynamic>? map) {
    if (map == null) return const PhotoValid();

    return PhotoValid(
      value: map['value'] as String? ?? '',
      isLoadCheckCode: map['isLoadCheckCode'] as bool? ?? false,
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

  PhotoValid copyWith({
    String? value,
    bool? isLoadCheckCode,
    String? error,
    EnumValid? enumValid,
  }) {
    return PhotoValid(
      value: value ?? this.value,
      isLoadCheckCode: isLoadCheckCode ?? this.isLoadCheckCode,
      error: error ?? this.error,
      enumValid: enumValid ?? this.enumValid,
    );
  }

  String toJson() => json.encode(toMap());
  factory PhotoValid.fromJson(String source) => PhotoValid.fromMap(
        json.decode(source) as Map<String, dynamic>,
      );

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is PhotoValid &&
            (identical(
                  other.value,
                  value,
                ) ||
                other.value == value) &&
            (identical(
                  other.isLoadCheckCode,
                  isLoadCheckCode,
                ) ||
                other.isLoadCheckCode == isLoadCheckCode) &&
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
        isLoadCheckCode,
        error,
        enumValid,
      ]);

  @override
  String toString() {
    return 'PhotoValid(value: $value, isLoadCheckCode: $isLoadCheckCode, error: $error, enumValid: $enumValid, )';
  }
}
