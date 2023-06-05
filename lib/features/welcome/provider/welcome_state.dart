// ignore_for_file: avoid_bool_literals_in_conditional_expressions
// ignore_for_file: sort_constructors_first
import 'dart:convert';

import 'package:kidneysmart/core/enum/enum.dart';
import 'package:meta/meta.dart';

@immutable
class WelcomeState {
  /* init: EnumResult.init */
  final EnumResult enumResult;

  // end

//          --TURN_GEN--
//             (data)
//  *************************************
//         GENERATED CODE
//  *************************************
  const WelcomeState({
    this.enumResult = EnumResult.init,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enumResult': enumResult.index,
    };
  }

  factory WelcomeState.fromMap(Map<dynamic, dynamic>? map) {
    if (map == null) return const WelcomeState();

    return WelcomeState(
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
    );
  }

  WelcomeState copyWith({
    EnumResult? enumResult,
  }) {
    return WelcomeState(
      enumResult: enumResult ?? this.enumResult,
    );
  }

  String toJson() => json.encode(toMap());
  factory WelcomeState.fromJson(String source) => WelcomeState.fromMap(
        json.decode(source) as Map<String, dynamic>,
      );

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is WelcomeState &&
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
    return 'WelcomeState(enumResult: $enumResult, )';
  }
}
