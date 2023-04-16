// ignore_for_file: avoid_bool_literals_in_conditional_expressions
// ignore_for_file: sort_constructors_first
import 'dart:convert';

import 'package:meta/meta.dart';
import 'package:nutrition/core/enum/enum.dart';

@immutable
class CalcNutientState {
  /* init: EnumResult.init */
  final EnumResult enumResult;

  // end

//          --TURN_GEN--
//             (data)
//  *************************************
//         GENERATED CODE
//  *************************************
  const CalcNutientState({
    this.enumResult = EnumResult.init,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enumResult': enumResult.index,
    };
  }

  factory CalcNutientState.fromMap(Map<dynamic, dynamic>? map) {
    if (map == null) return const CalcNutientState();

    return CalcNutientState(
      enumResult: map['enumResult'] != null
          ? EnumResult.values[map['enumResult'] as int]
          : EnumResult.init,
    );
  }

  CalcNutientState copyWith({
    EnumResult? enumResult,
  }) {
    return CalcNutientState(
      enumResult: enumResult ?? this.enumResult,
    );
  }

  String toJson() => json.encode(toMap());
  factory CalcNutientState.fromJson(String source) => CalcNutientState.fromMap(
        json.decode(source) as Map<String, dynamic>,
      );

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is CalcNutientState &&
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
    return 'CalcNutientState(enumResult: $enumResult, )';
  }
}
