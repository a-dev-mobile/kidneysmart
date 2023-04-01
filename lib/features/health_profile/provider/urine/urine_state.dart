// ignore_for_file: avoid_bool_literals_in_conditional_expressions
// ignore_for_file: sort_constructors_first
import 'dart:convert';

import 'package:meta/meta.dart';
import 'package:nutrition/core/enum/enum.dart';

@immutable
class UrineState { 
  /* init:'' */
  final String result;

  final double? value;
  /* init:'' */
  final String error;
  /* init: EnumValid.init */
  final EnumValid enumValid;

  // end
   
//          --TURN_GEN--
//          v0.8.2 (data)
//  *************************************
//         GENERATED CODE 
//  *************************************
  
  const UrineState({
    this.result = '',
    this.error = '',
    this.enumValid = EnumValid.init,
    this.value,
  });


  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'result': result, 
      'value': value, 
      'error': error, 
      'enumValid': enumValid.index, 
    };
  }


  factory UrineState.fromMap(Map<dynamic, dynamic>? map) {
    if (map == null) return const UrineState();

    return UrineState(
      result: map['result'] as String? ?? '', 
      value: (map['value'] as num?)?.toDouble(), 
      error: map['error'] as String? ?? '', 
      enumValid: map['enumValid'] != null ? EnumValid.values[map['enumValid'] as int] : EnumValid.init, 
    );
  }

  UrineState copyWith({
    String? result,
    double? value,
    String? error,
    EnumValid? enumValid,
  }) {
    return UrineState(
      result: result ?? this.result, 
      value: value ?? this.value, 
      error: error ?? this.error, 
      enumValid: enumValid ?? this.enumValid, 
    );
  }

  String toJson() => json.encode(toMap());  
  factory UrineState.fromJson(String source) => UrineState.fromMap(json.decode(source) as Map<String, dynamic>,);  
   
  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is UrineState &&
            (identical(other.result, result) || other.result == result) && 
            (identical(other.value, value) || other.value == value) && 
            (identical(other.error, error) || other.error == error) && 
            (identical(other.enumValid, enumValid) || other.enumValid == enumValid));
  }

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        result,
        value,
        error,
        enumValid,
]);

  @override
  String toString() {
    return 'UrineState(result: $result, value: $value, error: $error, enumValid: $enumValid, )';
    }

}
