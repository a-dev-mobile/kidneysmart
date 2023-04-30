// ignore_for_file: avoid_bool_literals_in_conditional_expressions
// ignore_for_file: sort_constructors_first
import 'dart:convert';

import 'package:meta/meta.dart';
import 'package:nutrition/shared/enum/enum.dart';

@immutable
class StepNameState {
  /* init: EnumResult.init */
  final EnumResult enumResult;

  // end

//          --TURN_GEN--
//             (data)
//  *************************************
//         GENERATED CODE
//  *************************************
  const StepNameState({
    this.enumResult = EnumResult.init,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enumResult': enumResult.index,
    };
  }

  factory StepNameState.fromMap(Map<dynamic, dynamic>? map) {
    if (map == null) return const StepNameState();

    return StepNameState(
      enumResult: map['enumResult'] != null
          ? EnumResult.values[map['enumResult'] as int]
          : EnumResult.init,
    );
  }

  StepNameState copyWith({
    EnumResult? enumResult,
  }) {
    return StepNameState(
      enumResult: enumResult ?? this.enumResult,
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
                  other.enumResult,
                  enumResult,
                ) ||
                other.enumResult == enumResult));
  }

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        enumResult,
      ]);

  @override
  String toString() {
    return 'StepNameState(enumResult: $enumResult, )';
  }
}
