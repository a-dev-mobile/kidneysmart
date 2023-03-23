// ignore_for_file: sort_constructors_first, avoid_bool_literals_in_conditional_expressions
import 'dart:convert';

import 'package:meta/meta.dart';

@immutable
class UrineOutputModel {     
  /* init:'' */
  final String value;
  /* init:'' */
  final String errorMessage;

  // end
   
//          --TURN_GEN--
//           v0.6.3 (data)
//  *************************************
//         GENERATED CODE 
//  *************************************
  
  const UrineOutputModel({
    this.value = '',
    this.errorMessage = '',
  });


  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'value': value, 
      'errorMessage': errorMessage, 
    };
  }


  factory UrineOutputModel.fromMap(Map<dynamic, dynamic>? map) {
    if (map == null) return const UrineOutputModel();

    return UrineOutputModel(
      value: map['value'] != null ? map['value'] as String : '', 
      errorMessage: map['errorMessage'] != null ? map['errorMessage'] as String : '', 
    );
  }

  UrineOutputModel copyWith({
    String? value,
    String? errorMessage,
  }) {
    return UrineOutputModel(
      value: value ?? this.value, 
      errorMessage: errorMessage ?? this.errorMessage, 
    );
  }

  String toJson() => json.encode(toMap());  
  factory UrineOutputModel.fromJson(String source) => UrineOutputModel.fromMap(json.decode(source) as Map<String, dynamic>,);  
   
  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is UrineOutputModel &&
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
    return 'UrineOutputModel(value: $value, errorMessage: $errorMessage, )';
    }

}
