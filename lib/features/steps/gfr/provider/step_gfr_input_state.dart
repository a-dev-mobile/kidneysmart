// ignore_for_file: avoid_bool_literals_in_conditional_expressions
// ignore_for_file: sort_constructors_first
import 'dart:convert';

import 'package:meta/meta.dart';

import 'package:nutrition/features/steps/gfr/gfr.dart';
import 'package:nutrition/shared/enum/enum.dart';

@immutable
class StepGfrInputState {
  /* init:'' */
  final String result;

  final double? value;
  /* init:'' */
  final String error;
  /* init: EnumValid.init */
  final EnumValid enumValid;
  /* init: true */
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
    this.error = '',
    this.enumValid = EnumValid.init,
    this.isKeyboardOpen = true,
    this.inputTypeCreatinine = EnumInputTypeCreatinine.mcmolL,
    this.value,
  });


  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'result': result,
      'value': value,
      'error': error,
      'enumValid': enumValid.index,
      'isKeyboardOpen': isKeyboardOpen,
      'inputTypeCreatinine': inputTypeCreatinine.index,
    };
  }


  factory StepGfrInputState.fromMap(Map<dynamic, dynamic>? map) {
    if (map == null) return const StepGfrInputState();

    return StepGfrInputState(
      result: map['result'] as String? ?? '',
      value: (map['value'] as num?)?.toDouble(),
      error: map['error'] as String? ?? '',
      enumValid: map['enumValid'] != null ? EnumValid.values[map['enumValid'] as int] : EnumValid.init,
      isKeyboardOpen: map['isKeyboardOpen'] as bool? ?? true,
      inputTypeCreatinine: map['inputTypeCreatinine'] != null ? EnumInputTypeCreatinine.values[map['inputTypeCreatinine'] as int] : EnumInputTypeCreatinine.mcmolL,
    );
  }

  StepGfrInputState copyWith({
    String? result,
    double? value,
    String? error,
    EnumValid? enumValid,
    bool? isKeyboardOpen,
    EnumInputTypeCreatinine? inputTypeCreatinine,
  }) {
    return StepGfrInputState(
      result: result ?? this.result,
      value: value ?? this.value,
      error: error ?? this.error,
      enumValid: enumValid ?? this.enumValid,
      isKeyboardOpen: isKeyboardOpen ?? this.isKeyboardOpen,
      inputTypeCreatinine: inputTypeCreatinine ?? this.inputTypeCreatinine,
    );
  }

  String toJson() => json.encode(toMap());
  factory StepGfrInputState.fromJson(String source) => StepGfrInputState.fromMap(json.decode(source) as Map<String, dynamic>,);
   
  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is StepGfrInputState &&
            (identical(other.result, result,) || other.result == result) &&
            (identical(other.value, value,) || other.value == value) &&
            (identical(other.error, error,) || other.error == error) &&
            (identical(other.enumValid, enumValid,) || other.enumValid == enumValid) &&
            (identical(other.isKeyboardOpen, isKeyboardOpen,) || other.isKeyboardOpen == isKeyboardOpen) &&
            (identical(other.inputTypeCreatinine, inputTypeCreatinine,) || other.inputTypeCreatinine == inputTypeCreatinine));
  }

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        result,
        value,
        error,
        enumValid,
        isKeyboardOpen,
        inputTypeCreatinine,
]);

  @override
  String toString() {
    return 'StepGfrInputState(result: $result, value: $value, error: $error, enumValid: $enumValid, isKeyboardOpen: $isKeyboardOpen, inputTypeCreatinine: $inputTypeCreatinine, )';
  }
}
