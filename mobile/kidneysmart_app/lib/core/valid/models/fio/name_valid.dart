// ignore_for_file: avoid_bool_literals_in_conditional_expressions
// ignore_for_file: sort_constructors_first
import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:kidneysmart/core/valid/enum_valid.dart';

/* 

  final NameValid nameValid;
  final SurnameValid surnameValid;
  final PatronymicValid patronymicValid;
  final GenderValid genderValid;

 */
@immutable
class NameValid {
  /* init:'' */
  final String value;

  /* init:'' */
  final String error;

  /* init: EnumValid.init */
  final EnumValid enumValid;

  // если мы используем dadata
  /* init: false */
  final bool isSelected;

  // end

//          --TURN_GEN--
//             (data)
//  *************************************
//         GENERATED CODE
//  *************************************
  const NameValid({
    this.value = '',
    this.error = '',
    this.enumValid = EnumValid.init,
    this.isSelected = false,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'value': value,
      'error': error,
      'enumValid': enumValid.index,
      'isSelected': isSelected,
    };
  }

  factory NameValid.fromMap(Map<dynamic, dynamic>? map) {
    if (map == null) return const NameValid();

    return NameValid(
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
      isSelected: map['isSelected'] as bool? ?? false,
    );
  }

  NameValid copyWith({
    String? value,
    String? error,
    EnumValid? enumValid,
    bool? isSelected,
  }) {
    return NameValid(
      value: value ?? this.value,
      error: error ?? this.error,
      enumValid: enumValid ?? this.enumValid,
      isSelected: isSelected ?? this.isSelected,
    );
  }

  String toJson() => json.encode(toMap());
  factory NameValid.fromJson(String source) => NameValid.fromMap(
        json.decode(source) as Map<String, dynamic>,
      );

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is NameValid &&
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
                  other.isSelected,
                  isSelected,
                ) ||
                other.isSelected == isSelected));
  }

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        value,
        error,
        enumValid,
        isSelected,
      ]);

  @override
  String toString() {
    return 'NameValid(value: $value, error: $error, enumValid: $enumValid, isSelected: $isSelected, )';
  }
}
