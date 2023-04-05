// ignore_for_file: avoid_bool_literals_in_conditional_expressions
// ignore_for_file: sort_constructors_first
import 'dart:convert';

import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import 'package:nutrition/core/enum/enum.dart';

@immutable
class HeightModel {
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
//          v0.8.3 (data)
//  *************************************
//         GENERATED CODE
//  *************************************
  const HeightModel({
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


  factory HeightModel.fromMap(Map<dynamic, dynamic>? map) {
    if (map == null) return const HeightModel();

    return HeightModel(
      result: map['result'] as String? ?? '', 
      value: (map['value'] as num?)?.toDouble(), 
      error: map['error'] as String? ?? '', 
      enumValid: map['enumValid'] != null ? EnumValid.values[map['enumValid'] as int] : EnumValid.init, 
      heightList: (map['heightList'] as List<dynamic>?)?.map((e) => e as String).toList() ?? const [], 
    );
  }

  HeightModel copyWith({
    String? result,
    double? value,
    String? error,
    EnumValid? enumValid,
    List<String>? heightList,
  }) {
    return HeightModel(
      result: result ?? this.result, 
      value: value ?? this.value, 
      error: error ?? this.error, 
      enumValid: enumValid ?? this.enumValid, 
      heightList: heightList ?? this.heightList, 
    );
  }

  String toJson() => json.encode(toMap());  
  factory HeightModel.fromJson(String source) => HeightModel.fromMap(json.decode(source) as Map<String, dynamic>,);  
   
  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is HeightModel &&
            (identical(other.result, result) || other.result == result) && 
            (identical(other.value, value) || other.value == value) && 
            (identical(other.error, error) || other.error == error) && 
            (identical(other.enumValid, enumValid) || other.enumValid == enumValid) && 
            const DeepCollectionEquality().equals(other.heightList, heightList,));
  }

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        result,
        value,
        error,
        enumValid,
        const DeepCollectionEquality().hash(heightList,),
]);

  @override
  String toString() {
    return 'HeightModel(result: $result, value: $value, error: $error, enumValid: $enumValid, heightList: $heightList, )';
    }

}
