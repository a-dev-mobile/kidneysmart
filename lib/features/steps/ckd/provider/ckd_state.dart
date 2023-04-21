// ignore_for_file: avoid_bool_literals_in_conditional_expressions
// ignore_for_file: sort_constructors_first
import 'dart:convert';

import 'package:meta/meta.dart';

import 'package:nutrition/features/steps/ckd/ckd.dart';

@immutable
class CkdState {
  /* init: const CkdInputModel() */
  final CkdInputModel input;
  /* init: const CkdSelectModel() */
  final CkdSelectModel select;

  // end

//          --TURN_GEN--
//             (data)
//  *************************************
//         GENERATED CODE
//  *************************************
  const CkdState({
    this.input = const CkdInputModel(),
    this.select = const CkdSelectModel(),
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'input': input.toMap(),
      'select': select.toMap(),
    };
  }

  factory CkdState.fromMap(Map<dynamic, dynamic>? map) {
    if (map == null) return const CkdState();

    return CkdState(
      input: map['input'] != null
          ? CkdInputModel.fromMap(
              Map<String, dynamic>.from(map['input'] as Map),
            )
          : const CkdInputModel(),
      select: map['select'] != null
          ? CkdSelectModel.fromMap(
              Map<String, dynamic>.from(map['select'] as Map),
            )
          : const CkdSelectModel(),
    );
  }

  CkdState copyWith({
    CkdInputModel? input,
    CkdSelectModel? select,
  }) {
    return CkdState(
      input: input ?? this.input,
      select: select ?? this.select,
    );
  }

  String toJson() => json.encode(toMap());
  factory CkdState.fromJson(String source) => CkdState.fromMap(
        json.decode(source) as Map<String, dynamic>,
      );

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is CkdState &&
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
    return 'CkdState(input: $input, select: $select, )';
  }
}
