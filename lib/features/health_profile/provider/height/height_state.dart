// ignore_for_file: avoid_bool_literals_in_conditional_expressions
// ignore_for_file: sort_constructors_first
import 'dart:convert';

import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import 'package:nutrition/core/enum/enum.dart';

@immutable
class HeightState { 
  /* init: const [] */
  final List<String> heightList;
  /* init:'' */
  final String result;

  final double? value;
  /* init:'' */
  final String errorMessage;
  /* init: EnumValid.init */
  final EnumValid enumValid;
  // end
   
//          --TURN_GEN--
//          v0.8.2 (data)
//  *************************************
//         GENERATED CODE 
//  *************************************
  
  const HeightState({
    this.heightList = const [],
    this.result = '',
    this.errorMessage = '',
    this.enumValid = EnumValid.init,
    this.value,
  });


  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'heightList': heightList, 
      'result': result, 
      'value': value, 
      'errorMessage': errorMessage, 
      'enumValid': enumValid.index, 
    };
  }


  factory HeightState.fromMap(Map<dynamic, dynamic>? map) {
    if (map == null) return const HeightState();

    return HeightState(
      heightList: (map['heightList'] as List<dynamic>?)?.map((e) => e as String).toList() ?? const [], 
      result: map['result'] as String? ?? '', 
      value: (map['value'] as num?)?.toDouble(), 
      errorMessage: map['errorMessage'] as String? ?? '', 
      enumValid: map['enumValid'] != null ? EnumValid.values[map['enumValid'] as int] : EnumValid.init, 
    );
  }

  HeightState copyWith({
    List<String>? heightList,
    String? result,
    double? value,
    String? errorMessage,
    EnumValid? enumValid,
  }) {
    return HeightState(
      heightList: heightList ?? this.heightList, 
      result: result ?? this.result, 
      value: value ?? this.value, 
      errorMessage: errorMessage ?? this.errorMessage, 
      enumValid: enumValid ?? this.enumValid, 
    );
  }

  String toJson() => json.encode(toMap());  
  factory HeightState.fromJson(String source) => HeightState.fromMap(json.decode(source) as Map<String, dynamic>,);  
   
  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is HeightState &&
            const DeepCollectionEquality().equals(other.heightList, heightList,) && 
            (identical(other.result, result) || other.result == result) && 
            (identical(other.value, value) || other.value == value) && 
            (identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage) && 
            (identical(other.enumValid, enumValid) || other.enumValid == enumValid));
  }

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(heightList,),
        result,
        value,
        errorMessage,
        enumValid,
]);

  @override
  String toString() {
    return 'HeightState(heightList: $heightList, result: $result, value: $value, errorMessage: $errorMessage, enumValid: $enumValid, )';
    }

}
