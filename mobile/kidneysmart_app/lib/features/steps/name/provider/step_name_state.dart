// ignore_for_file: avoid_bool_literals_in_conditional_expressions
// ignore_for_file: sort_constructors_first
import 'dart:convert';

import 'package:kidneysmart/core/enum/enum.dart';
import 'package:kidneysmart/features/steps/common/models/models.dart';
import 'package:kidneysmart/features/steps/gender/gender.dart';
import 'package:meta/meta.dart';

@immutable
class StepNameState {
  /* init:'' */
  final String result;

  final String? error;
  /* init: EnumValid.init */
  final EnumValid enumValid;

  /* init: EnumGender.none */
  final EnumGender enumGender;

/* init:const KeyboardState() */
  final KeyboardState keyboard;
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
    this.keyboard = const KeyboardState(),
    this.error,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'result': result,
      'error': error,
      'enumValid': enumValid.index,
      'enumGender': enumGender.index,
      'keyboard': keyboard.toMap(),
    };
  }

  factory StepNameState.fromMap(Map<dynamic, dynamic>? map) {
    if (map == null) return const StepNameState();

    return StepNameState(
      result: map['result'] as String? ?? '',
      error: map['error'] as String?,
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
      enumGender: map['enumGender'] != null
          ? map['enumGender'] is int
              ? EnumGender.values[map['enumGender'] as int]
              : map['enumGender'] is String
                  // ignore: prefer-enums-by-name
                  ? EnumGender.values.firstWhere(
                      (e) =>
                          e.toString().split('EnumGender.')[1] ==
                          map['enumGender'].toString(),
                      orElse: () => EnumGender.none,
                    )
                  : EnumGender.none
          : EnumGender.none,
      keyboard: map['keyboard'] != null
          ? KeyboardState.fromMap(
              Map<String, dynamic>.from(
                map['keyboard'] as Map,
              ),
            )
          : const KeyboardState(),
    );
  }

  StepNameState copyWith({
    String? result,
    String? error,
    EnumValid? enumValid,
    EnumGender? enumGender,
    KeyboardState? keyboard,
  }) {
    return StepNameState(
      result: result ?? this.result,
      error: error ?? this.error,
      enumValid: enumValid ?? this.enumValid,
      enumGender: enumGender ?? this.enumGender,
      keyboard: keyboard ?? this.keyboard,
    );
  }

  String toJson() => json.encode(toMap());
  factory StepNameState.fromJson(String source) => StepNameState.fromMap(
        json.decode(source) as Map<String, dynamic>,
      );

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is StepNameState &&
            (identical(
                  other.result,
                  result,
                ) ||
                other.result == result) &&
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
                  other.enumGender,
                  enumGender,
                ) ||
                other.enumGender == enumGender) &&
            (identical(
                  other.keyboard,
                  keyboard,
                ) ||
                other.keyboard == keyboard));
  }

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        result,
        error,
        enumValid,
        enumGender,
        keyboard,
      ]);

  @override
  String toString() {
    return 'StepNameState(result: $result, error: $error, enumValid: $enumValid, enumGender: $enumGender, keyboard: $keyboard, )';
  }
}
