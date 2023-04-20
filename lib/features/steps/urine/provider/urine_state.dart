// ignore_for_file: avoid_bool_literals_in_conditional_expressions
// ignore_for_file: sort_constructors_first
import 'dart:convert';

import 'package:meta/meta.dart';

import 'package:nutrition/features/steps/urine/urine.dart';

@immutable
class UrineState {
  /* init: const UrineInputModel() */
  final UrineInputModel input;
  /* init: const UrineSelectModel() */
  final UrineSelectModel select;

  // end

//          --TURN_GEN--
//             (data)
//  *************************************
//         GENERATED CODE
//  *************************************
  const UrineState({
    this.input = const UrineInputModel(),
    this.select = const UrineSelectModel(),
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'input': input.toMap(),
      'select': select.toMap(),
    };
  }

  factory UrineState.fromMap(Map<dynamic, dynamic>? map) {
    if (map == null) return const UrineState();

    return UrineState(
      input: map['input'] != null
          ? UrineInputModel.fromMap(
              Map<String, dynamic>.from(map['input'] as Map),
            )
          : const UrineInputModel(),
      select: map['select'] != null
          ? UrineSelectModel.fromMap(
              Map<String, dynamic>.from(map['select'] as Map),
            )
          : const UrineSelectModel(),
    );
  }

  UrineState copyWith({
    UrineInputModel? input,
    UrineSelectModel? select,
  }) {
    return UrineState(
      input: input ?? this.input,
      select: select ?? this.select,
    );
  }

  String toJson() => json.encode(toMap());
  factory UrineState.fromJson(String source) => UrineState.fromMap(
        json.decode(source) as Map<String, dynamic>,
      );

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is UrineState &&
            (identical(
                  other.input,
                  input,
                ) ||
                other.input == input) &&
            (identical(
                  other.select,
                  select,
                ) ||
                other.select == select));
  }

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        input,
        select,
      ]);

  @override
  String toString() {
    return 'UrineState(input: $input, select: $select, )';
  }
}
