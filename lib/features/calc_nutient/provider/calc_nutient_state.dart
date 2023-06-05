// ignore_for_file: avoid_bool_literals_in_conditional_expressions
// ignore_for_file: sort_constructors_first
import 'dart:convert';

import 'package:kidneysmart/core/enum/enum.dart';
import 'package:meta/meta.dart';

@immutable
class CalcNutientState {
  /* init: EnumResult.init */
  final EnumResult enumResult;
/* init: '' */
  final String markdownResult;

  // end

//          --TURN_GEN--
//             (data)
//  *************************************
//         GENERATED CODE
//  *************************************
  const CalcNutientState({
    this.enumResult = EnumResult.init,
    this.markdownResult = '',
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enumResult': enumResult.index,
      'markdownResult': markdownResult,
    };
  }

  factory CalcNutientState.fromMap(Map<dynamic, dynamic>? map) {
    if (map == null) return const CalcNutientState();

    return CalcNutientState(
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
      markdownResult: map['markdownResult'] as String? ?? '',
    );
  }

  CalcNutientState copyWith({
    EnumResult? enumResult,
    String? markdownResult,
  }) {
    return CalcNutientState(
      enumResult: enumResult ?? this.enumResult,
      markdownResult: markdownResult ?? this.markdownResult,
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
                other.enumResult == enumResult) &&
            (identical(
                  other.markdownResult,
                  markdownResult,
                ) ||
                other.markdownResult == markdownResult));
  }

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        enumResult,
        markdownResult,
      ]);

  @override
  String toString() {
    return 'CalcNutientState(enumResult: $enumResult, markdownResult: $markdownResult, )';
  }
}
