// ignore_for_file: avoid_bool_literals_in_conditional_expressions
// ignore_for_file: sort_constructors_first
import 'dart:convert';

import 'package:kidneysmart/core/enum/enum.dart';
import 'package:kidneysmart/features/steps/ckd_select/ckd.dart';
import 'package:kidneysmart/features/steps/gfr/gfr.dart';
import 'package:meta/meta.dart';

@immutable
class StepGfrInputState {
  /* init:'' */
  final String result;

  /* init:EnumResult.init  */
  final EnumResult enumResult;

  final double? value;
  /* init:'' */
  final String error;
  /* init: EnumValid.init */
  // расчетное значение стадии
  final EnumValid enumValid;

  /* init: EnumCkd.none */
  final EnumCkd enumCkd;

  /* init: false */
  final bool isKeyboardOpen;
  /* init:  EnumInputTypeCreatinine.mcmolL */
  final EnumInputTypeCreatinine inputTypeCreatinine;
  // end

//          --TURN_GEN--
//             (data)
//  *************************************
//         GENERATED CODE
//  *************************************
  const StepGfrInputState({
    this.result = '',
    this.enumResult = EnumResult.init,
    this.error = '',
    this.enumValid = EnumValid.init,
    this.enumCkd = EnumCkd.none,
    this.isKeyboardOpen = false,
    this.inputTypeCreatinine = EnumInputTypeCreatinine.mcmolL,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'result': result,
      'enumResult': enumResult.index,
      'value': value,
      'error': error,
      'enumValid': enumValid.index,
      'enumCkd': enumCkd.index,
      'isKeyboardOpen': isKeyboardOpen,
      'inputTypeCreatinine': inputTypeCreatinine.index,
    };
  }

  factory StepGfrInputState.fromMap(Map<dynamic, dynamic>? map) {
    if (map == null) return const StepGfrInputState();

    return StepGfrInputState(
      result: map['result'] as String? ?? '',
      enumResult: map['enumResult'] != null
          ? map['enumResult'] is int
              ? EnumResult.values[map['enumResult'] as int]
              : map['enumResult'] is String
                  // ignore: prefer-enums-by-name
                  ? EnumResult.values.firstWhere(
                      (e) =>
                          e.toString().split('EnumResult.')[1] ==
                          map['enumResult'].toString(),
                      orElse: () => EnumResult.init,
                    )
                  : EnumResult.init
          : EnumResult.init,
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
      enumCkd: map['enumCkd'] != null
          ? map['enumCkd'] is int
              ? EnumCkd.values[map['enumCkd'] as int]
              : map['enumCkd'] is String
                  // ignore: prefer-enums-by-name
                  ? EnumCkd.values.firstWhere(
                      (e) =>
                          e.toString().split('EnumCkd.')[1] ==
                          map['enumCkd'].toString(),
                      orElse: () => EnumCkd.none,
                    )
                  : EnumCkd.none
          : EnumCkd.none,
      isKeyboardOpen: map['isKeyboardOpen'] as bool? ?? false,
      inputTypeCreatinine: map['inputTypeCreatinine'] != null
          ? map['inputTypeCreatinine'] is int
              ? EnumInputTypeCreatinine
                  .values[map['inputTypeCreatinine'] as int]
              : map['inputTypeCreatinine'] is String
                  // ignore: prefer-enums-by-name
                  ? EnumInputTypeCreatinine.values.firstWhere(
                      (e) =>
                          e.toString().split('EnumInputTypeCreatinine.')[1] ==
                          map['inputTypeCreatinine'].toString(),
                      orElse: () => EnumInputTypeCreatinine.mcmolL,
                    )
                  : EnumInputTypeCreatinine.mcmolL
          : EnumInputTypeCreatinine.mcmolL,
    );
  }

  StepGfrInputState copyWith({
    String? result,
    EnumResult? enumResult,
    double? value,
    String? error,
    EnumValid? enumValid,
    EnumCkd? enumCkd,
    bool? isKeyboardOpen,
    EnumInputTypeCreatinine? inputTypeCreatinine,
  }) {
    return StepGfrInputState(
      result: result ?? this.result,
      enumResult: enumResult ?? this.enumResult,
      value: value ?? this.value,
      error: error ?? this.error,
      enumValid: enumValid ?? this.enumValid,
      enumCkd: enumCkd ?? this.enumCkd,
      isKeyboardOpen: isKeyboardOpen ?? this.isKeyboardOpen,
      inputTypeCreatinine: inputTypeCreatinine ?? this.inputTypeCreatinine,
    );
  }

  String toJson() => json.encode(toMap());
  factory StepGfrInputState.fromJson(String source) =>
      StepGfrInputState.fromMap(
        json.decode(source) as Map<String, dynamic>,
      );

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is StepGfrInputState &&
            (identical(
                  other.result,
                  result,
                ) ||
                other.result == result) &&
            (identical(
                  other.enumResult,
                  enumResult,
                ) ||
                other.enumResult == enumResult) &&
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
                  other.enumCkd,
                  enumCkd,
                ) ||
                other.enumCkd == enumCkd) &&
            (identical(
                  other.isKeyboardOpen,
                  isKeyboardOpen,
                ) ||
                other.isKeyboardOpen == isKeyboardOpen) &&
            (identical(
                  other.inputTypeCreatinine,
                  inputTypeCreatinine,
                ) ||
                other.inputTypeCreatinine == inputTypeCreatinine));
  }

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        result,
        enumResult,
        value,
        error,
        enumValid,
        enumCkd,
        isKeyboardOpen,
        inputTypeCreatinine,
      ]);

  @override
  String toString() {
    return 'StepGfrInputState(result: $result, enumResult: $enumResult, value: $value, error: $error, enumValid: $enumValid, enumCkd: $enumCkd, isKeyboardOpen: $isKeyboardOpen, inputTypeCreatinine: $inputTypeCreatinine, )';
  }
}
