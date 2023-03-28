// ignore_for_file: sort_constructors_first, avoid_bool_literals_in_conditional_expressions
import 'dart:convert';

import 'package:meta/meta.dart';

@immutable
class ValidCreatinineModel {                                                                                                                                        
  /* init:'' */
  final String value;
  /* init:'' */
  final String errorMessage;

  // end
   
//          --TURN_GEN--
//          v0.8.2 (data)
//  *************************************
//         GENERATED CODE 
//  *************************************
  
  const ValidCreatinineModel({
    this.value = '',
    this.errorMessage = '',
  });


  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'value': value, 
      'errorMessage': errorMessage, 
    };
  }


  factory ValidCreatinineModel.fromMap(Map<dynamic, dynamic>? map) {
    if (map == null) return const ValidCreatinineModel();

    return ValidCreatinineModel(
      value: map['value'] as String? ?? '', 
      errorMessage: map['errorMessage'] as String? ?? '', 
    );
  }

  ValidCreatinineModel copyWith({
    String? value,
    String? errorMessage,
  }) {
    return ValidCreatinineModel(
      value: value ?? this.value, 
      errorMessage: errorMessage ?? this.errorMessage, 
    );
  }

  String toJson() => json.encode(toMap());  
  factory ValidCreatinineModel.fromJson(String source) => ValidCreatinineModel.fromMap(json.decode(source) as Map<String, dynamic>,);  
   
  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ValidCreatinineModel &&
            (identical(other.value, value) || other.value == value) && 
            (identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        value,
        errorMessage,
]);

  @override
  String toString() {
    return 'ValidCreatinineModel(value: $value, errorMessage: $errorMessage, )';
    }

}
