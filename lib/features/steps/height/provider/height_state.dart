// ignore_for_file: avoid_bool_literals_in_conditional_expressions
// ignore_for_file: sort_constructors_first
import 'dart:convert';

import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import 'package:nutrition/shared/enum/enum.dart';

@immutable
class HeightState {
  /* init:'' */
  final String result;

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
  const HeightState({
    this.result = '',
    this.error = '',
    this.enumValid = EnumValid.init,
    this.heightList = const [],
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'result': result,
      'value': value,
      'error': error,
      'enumValid': enumValid.index,
      'heightList': heightList,
    };
  }

  factory HeightState.fromMap(Map<dynamic, dynamic>? map) {
    if (map == null) return const HeightState();

    return HeightState(
      result: map['result'] as String? ?? '',
      value: (map['value'] as num?)?.toDouble(),
      error: map['error'] as String? ?? '',
      enumValid: map['enumValid'] != null
          ? EnumValid.values[map['enumValid'] as int]
          : EnumValid.init,
      heightList: (map['heightList'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
    );
  }

  HeightState copyWith({
    String? result,
    double? value,
    String? error,
    EnumValid? enumValid,
    List<String>? heightList,
  }) {
    return HeightState(
      result: result ?? this.result,
      value: value ?? this.value,
      error: error ?? this.error,
      enumValid: enumValid ?? this.enumValid,
      heightList: heightList ?? this.heightList,
    );
  }

  String toJson() => json.encode(toMap());
  factory HeightState.fromJson(String source) => HeightState.fromMap(
        json.decode(source) as Map<String, dynamic>,
      );

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is HeightState &&
            (identical(
                  other.result,
                  result,
                ) ||
                other.result == result) &&
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
        value,
        error,
        enumValid,
        const DeepCollectionEquality().hash(
          heightList,
        ),
      ]);

  @override
  String toString() {
    return 'HeightState(result: $result, value: $value, error: $error, enumValid: $enumValid, heightList: $heightList, )';
  }
}
