// ignore_for_file: avoid_bool_literals_in_conditional_expressions
// ignore_for_file: sort_constructors_first
import 'dart:convert';

import 'package:kidneysmart/core/enum/enum.dart';
import 'package:meta/meta.dart';

@immutable
class UrineInputModel {
  /* init:'' */
  final String result;

  final double? value;
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
  const UrineInputModel({
    this.result = '',
    this.error = '',
    this.enumValid = EnumValid.init,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'result': result,
      'value': value,
      'error': error,
      'enumValid': enumValid.index,
    };
  }

  factory UrineInputModel.fromMap(Map<dynamic, dynamic>? map) {
    if (map == null) return const UrineInputModel();

    return UrineInputModel(
      result: map['result'] as String? ?? '',
      value: (map['value'] as num?)?.toDouble(),
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

  UrineInputModel copyWith({
    String? result,
    double? value,
    String? error,
    EnumValid? enumValid,
  }) {
    return UrineInputModel(
      result: result ?? this.result,
      value: value ?? this.value,
      error: error ?? this.error,
      enumValid: enumValid ?? this.enumValid,
    );
  }

  String toJson() => json.encode(toMap());
  factory UrineInputModel.fromJson(String source) => UrineInputModel.fromMap(
        json.decode(source) as Map<String, dynamic>,
      );

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is UrineInputModel &&
            (identical(
                  other.result,
                  result,
                ) ||
                other.result == result) &&
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
        result,
        value,
        error,
        enumValid,
      ]);

  @override
  String toString() {
    return 'UrineInputModel(result: $result, value: $value, error: $error, enumValid: $enumValid, )';
  }
}
