// ignore_for_file: avoid_bool_literals_in_conditional_expressions
// ignore_for_file: sort_constructors_first
import 'dart:convert';

import 'package:meta/meta.dart';
import 'package:nutrition/features/steps/gender/gender.dart';
import 'package:nutrition/shared/enum/enum.dart';

@immutable
class StepNameState {
  /* init:'' */
  final String result;

  final String? error;
  /* init: EnumValid.init */
  final EnumValid enumValid;

  /* init: EnumGender.none */
  final EnumGender enumGender;
  /* init: true */
  final bool isKeyboardOpen;
  // end
   
//          --TURN_GEN--
//             (data)
//  *************************************
//         GENERATED CODE
//  *************************************
  const StepNameState({
    this.result = '',
    this.enumValid = EnumValid.init,
    this.enumGender = EnumGender.none,
    this.isKeyboardOpen = true,
    this.error,
  });


  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'result': result,
      'error': error,
      'enumValid': enumValid.index,
      'enumGender': enumGender.index,
      'isKeyboardOpen': isKeyboardOpen,
    };
  }


  factory StepNameState.fromMap(Map<dynamic, dynamic>? map) {
    if (map == null) return const StepNameState();

    return StepNameState(
      result: map['result'] as String? ?? '',
      error: map['error'] as String?,
      enumValid: map['enumValid'] != null ? EnumValid.values[map['enumValid'] as int] : EnumValid.init,
      enumGender: map['enumGender'] != null ? EnumGender.values[map['enumGender'] as int] : EnumGender.none,
      isKeyboardOpen: map['isKeyboardOpen'] as bool? ?? true,
    );
  }

  StepNameState copyWith({
    String? result,
    String? error,
    EnumValid? enumValid,
    EnumGender? enumGender,
    bool? isKeyboardOpen,
  }) {
    return StepNameState(
      result: result ?? this.result,
      error: error ?? this.error,
      enumValid: enumValid ?? this.enumValid,
      enumGender: enumGender ?? this.enumGender,
      isKeyboardOpen: isKeyboardOpen ?? this.isKeyboardOpen,
    );
  }

  String toJson() => json.encode(toMap());
  factory StepNameState.fromJson(String source) => StepNameState.fromMap(json.decode(source) as Map<String, dynamic>,);
   
  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is StepNameState &&
            (identical(other.result, result,) || other.result == result) &&
            (identical(other.error, error,) || other.error == error) &&
            (identical(other.enumValid, enumValid,) || other.enumValid == enumValid) &&
            (identical(other.enumGender, enumGender,) || other.enumGender == enumGender) &&
            (identical(other.isKeyboardOpen, isKeyboardOpen,) || other.isKeyboardOpen == isKeyboardOpen));
  }

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        result,
        error,
        enumValid,
        enumGender,
        isKeyboardOpen,
]);

  @override
  String toString() {
    return 'StepNameState(result: $result, error: $error, enumValid: $enumValid, enumGender: $enumGender, isKeyboardOpen: $isKeyboardOpen, )';
  }
}
