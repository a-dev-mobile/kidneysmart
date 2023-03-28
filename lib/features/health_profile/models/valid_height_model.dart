// ignore_for_file: sort_constructors_first, avoid_bool_literals_in_conditional_expressions
import 'dart:convert';

import 'package:meta/meta.dart';

@immutable
class ValidHeightModel {                                                                                                                                  
  /* init:'' */
  final String value;
  final String? errorMessage;

  // end
   
//          --TURN_GEN--
//          v0.8.2 (data)
//  *************************************
//         GENERATED CODE 
//  *************************************
  
  const ValidHeightModel({
    this.value = '',
    this.errorMessage,
  });


  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'value': value, 
      'errorMessage': errorMessage, 
    };
  }


  factory ValidHeightModel.fromMap(Map<dynamic, dynamic>? map) {
    if (map == null) return const ValidHeightModel();

    return ValidHeightModel(
      value: map['value'] as String? ?? '', 
      errorMessage: map['errorMessage'] as String?, 
    );
  }

  ValidHeightModel copyWith({
    String? value,
    String? errorMessage,
  }) {
    return ValidHeightModel(
      value: value ?? this.value, 
      errorMessage: errorMessage ?? this.errorMessage, 
    );
  }

  String toJson() => json.encode(toMap());  
  factory ValidHeightModel.fromJson(String source) => ValidHeightModel.fromMap(json.decode(source) as Map<String, dynamic>,);  
   
  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ValidHeightModel &&
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
    return 'ValidHeightModel(value: $value, errorMessage: $errorMessage, )';
    }

}
