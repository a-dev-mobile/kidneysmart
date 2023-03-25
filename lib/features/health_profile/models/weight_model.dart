// ignore_for_file: sort_constructors_first, avoid_bool_literals_in_conditional_expressions
import 'dart:convert';

import 'package:meta/meta.dart';

@immutable
class WeightModel {                                                      
  /* init:'' */
  final String value;
  final String? errorMessage;

  // end
   
//          --TURN_GEN--
//          v0.8.0 (data)
//  *************************************
//         GENERATED CODE 
//  *************************************
  
  const WeightModel({
    this.value = '',
    this.errorMessage,
  });


  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'value': value, 
      'errorMessage': errorMessage, 
    };
  }


  factory WeightModel.fromMap(Map<dynamic, dynamic>? map) {
    if (map == null) return const WeightModel();

    return WeightModel(
      value: map['value'] != null ? map['value'] as String : '', 
      errorMessage: map['errorMessage'] != null ? map['errorMessage'] as String : null, 
    );
  }

  WeightModel copyWith({
    String? value,
    String? errorMessage,
  }) {
    return WeightModel(
      value: value ?? this.value, 
      errorMessage: errorMessage ?? this.errorMessage, 
    );
  }

  String toJson() => json.encode(toMap());  
  factory WeightModel.fromJson(String source) => WeightModel.fromMap(json.decode(source) as Map<String, dynamic>,);  
   
  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is WeightModel &&
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
    return 'WeightModel(value: $value, errorMessage: $errorMessage, )';
    }

}
