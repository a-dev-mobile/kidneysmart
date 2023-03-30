// ignore_for_file: sort_constructors_first, avoid_bool_literals_in_conditional_expressions
import 'dart:convert';

import 'package:meta/meta.dart';
import 'package:nutrition/core/enum/enum.dart';

@immutable
class ValidUrineOutputModel {                                                                                                                                        
  /* init:'' */
  final String value;
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
  
  const ValidUrineOutputModel({
    this.value = '',
    this.errorMessage = '',
    this.enumValid = EnumValid.init,
  });


  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'value': value, 
      'errorMessage': errorMessage, 
      'enumValid': enumValid.index, 
    };
  }


  factory ValidUrineOutputModel.fromMap(Map<dynamic, dynamic>? map) {
    if (map == null) return const ValidUrineOutputModel();

    return ValidUrineOutputModel(
      value: map['value'] as String? ?? '', 
      errorMessage: map['errorMessage'] as String? ?? '', 
      enumValid: map['enumValid'] != null ? EnumValid.values[map['enumValid'] as int] : EnumValid.init, 
    );
  }

  ValidUrineOutputModel copyWith({
    String? value,
    String? errorMessage,
    EnumValid? enumValid,
  }) {
    return ValidUrineOutputModel(
      value: value ?? this.value, 
      errorMessage: errorMessage ?? this.errorMessage, 
      enumValid: enumValid ?? this.enumValid, 
    );
  }

  String toJson() => json.encode(toMap());  
  factory ValidUrineOutputModel.fromJson(String source) => ValidUrineOutputModel.fromMap(json.decode(source) as Map<String, dynamic>,);  
   
  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ValidUrineOutputModel &&
            (identical(other.value, value) || other.value == value) && 
            (identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage) && 
            (identical(other.enumValid, enumValid) || other.enumValid == enumValid));
  }

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        value,
        errorMessage,
        enumValid,
]);

  @override
  String toString() {
    return 'ValidUrineOutputModel(value: $value, errorMessage: $errorMessage, enumValid: $enumValid, )';
    }

}
