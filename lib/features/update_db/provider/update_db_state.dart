// ignore_for_file: avoid_bool_literals_in_conditional_expressions
// ignore_for_file: sort_constructors_first
import 'dart:convert';

import 'package:meta/meta.dart';
import 'package:nutrition/core/enum/enum.dart';

@immutable
class UpdateDbState {
  /* init: EnumResult.load */
  final EnumResult enumResult;

  // end

//          --TURN_GEN--
//             (data)
//  *************************************
//         GENERATED CODE
//  *************************************
  const UpdateDbState({
    this.enumResult = EnumResult.load,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enumResult': enumResult.index,
    };
  }

  factory UpdateDbState.fromMap(Map<dynamic, dynamic>? map) {
    if (map == null) return const UpdateDbState();

    return UpdateDbState(
      enumResult: map['enumResult'] != null
          ? EnumResult.values[map['enumResult'] as int]
          : EnumResult.load,
    );
  }

  UpdateDbState copyWith({
    EnumResult? enumResult,
  }) {
    return UpdateDbState(
      enumResult: enumResult ?? this.enumResult,
    );
  }

  String toJson() => json.encode(toMap());
  factory UpdateDbState.fromJson(String source) => UpdateDbState.fromMap(
        json.decode(source) as Map<String, dynamic>,
      );

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is UpdateDbState &&
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
    return 'UpdateDbState(enumResult: $enumResult, )';
  }
}
