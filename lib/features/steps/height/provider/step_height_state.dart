// ignore_for_file: avoid_bool_literals_in_conditional_expressions
// ignore_for_file: sort_constructors_first
import 'dart:convert';

import 'package:collection/collection.dart';
import 'package:kidneysmart/core/enum/enum.dart';
import 'package:kidneysmart/features/steps/gender/gender.dart';
import 'package:meta/meta.dart';

@immutable
class StepHeightState {
  /* init:'' */
  final String result;
  /* init: EnumGender.none */
  final EnumGender enumGender;
  final double? value;
  /* init:'' */
  final String error;
  /* init: EnumValid.init */
  final EnumValid enumValid;
  /* init: const [] */
  final List<String> heightList;
  // end

//          --TURN_GEN--
//             (data)
//  *************************************
//         GENERATED CODE
//  *************************************
  const StepHeightState({
    this.result = '',
    this.enumGender = EnumGender.none,
    this.error = '',
    this.enumValid = EnumValid.init,
    this.heightList = const [],
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'result': result,
      'enumGender': enumGender.index,
      'value': value,
      'error': error,
      'enumValid': enumValid.index,
      'heightList': heightList,
    };
  }

  factory StepHeightState.fromMap(Map<dynamic, dynamic>? map) {
    if (map == null) return const StepHeightState();

    return StepHeightState(
      result: map['result'] as String? ?? '',
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
      value: (map['value'] as num?)?.toDouble(),
      error: map['error'] as String? ?? '',
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
      heightList: (map['heightList'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
    );
  }

  StepHeightState copyWith({
    String? result,
    EnumGender? enumGender,
    double? value,
    String? error,
    EnumValid? enumValid,
    List<String>? heightList,
  }) {
    return StepHeightState(
      result: result ?? this.result,
      enumGender: enumGender ?? this.enumGender,
      value: value ?? this.value,
      error: error ?? this.error,
      enumValid: enumValid ?? this.enumValid,
      heightList: heightList ?? this.heightList,
    );
  }

  String toJson() => json.encode(toMap());
  factory StepHeightState.fromJson(String source) => StepHeightState.fromMap(
        json.decode(source) as Map<String, dynamic>,
      );

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is StepHeightState &&
            (identical(
                  other.result,
                  result,
                ) ||
                other.result == result) &&
            (identical(
                  other.enumGender,
                  enumGender,
                ) ||
                other.enumGender == enumGender) &&
            (identical(
                  other.value,
                  value,
                ) ||
                other.value == value) &&
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
            const DeepCollectionEquality().equals(
              other.heightList,
              heightList,
            ));
  }

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        result,
        enumGender,
        value,
        error,
        enumValid,
        const DeepCollectionEquality().hash(
          heightList,
        ),
      ]);

  @override
  String toString() {
    return 'StepHeightState(result: $result, enumGender: $enumGender, value: $value, error: $error, enumValid: $enumValid, heightList: $heightList, )';
  }
}
