// ignore_for_file: avoid_bool_literals_in_conditional_expressions
// ignore_for_file: sort_constructors_first
import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:kidneysmart/core/valid/enum_valid.dart';

@immutable
class CityValid {
  /* init:'' */
  final String value;

  /* init:'' */
  final String error;

  /* init: EnumValid.init */
  final EnumValid enumValid;

// нужно для нахождения улицы по городу
  final String? fiasId;

  // если мы используем dadata
  /* init: false */
  final bool isSelected;
  // end

//          --TURN_GEN--
//             (data)
//  *************************************
//         GENERATED CODE
//  *************************************
  const CityValid({
    this.value = '',
    this.error = '',
    this.enumValid = EnumValid.init,
    this.isSelected = false,
    this.fiasId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'value': value,
      'error': error,
      'enumValid': enumValid.index,
      'fiasId': fiasId,
      'isSelected': isSelected,
    };
  }

  factory CityValid.fromMap(Map<dynamic, dynamic>? map) {
    if (map == null) return const CityValid();

    return CityValid(
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
      fiasId: map['fiasId'] as String?,
      isSelected: map['isSelected'] as bool? ?? false,
    );
  }

  CityValid copyWith({
    String? value,
    String? error,
    EnumValid? enumValid,
    String? fiasId,
    bool? isSelected,
  }) {
    return CityValid(
      value: value ?? this.value,
      error: error ?? this.error,
      enumValid: enumValid ?? this.enumValid,
      fiasId: fiasId ?? this.fiasId,
      isSelected: isSelected ?? this.isSelected,
    );
  }

  String toJson() => json.encode(toMap());
  factory CityValid.fromJson(String source) => CityValid.fromMap(
        json.decode(source) as Map<String, dynamic>,
      );

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is CityValid &&
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
                  other.fiasId,
                  fiasId,
                ) ||
                other.fiasId == fiasId) &&
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
        fiasId,
        isSelected,
      ]);

  @override
  String toString() {
    return 'CityValid(value: $value, error: $error, enumValid: $enumValid, fiasId: $fiasId, isSelected: $isSelected, )';
  }
}
