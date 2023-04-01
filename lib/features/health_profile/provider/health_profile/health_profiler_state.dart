// ignore_for_file: avoid_bool_literals_in_conditional_expressions
// ignore_for_file: sort_constructors_first
import 'dart:convert';

import 'package:flutter/material.dart';

@immutable
class HealthProfileState { 
  /* init: false */
  final bool isValid;

  // end
   
//          --TURN_GEN--
//          v0.8.2 (data)
//  *************************************
//         GENERATED CODE 
//  *************************************
  
  const HealthProfileState({
    this.isValid = false,
  });


  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'isValid': isValid, 
    };
  }


  factory HealthProfileState.fromMap(Map<dynamic, dynamic>? map) {
    if (map == null) return const HealthProfileState();

    return HealthProfileState(
      isValid: map['isValid'] as bool? ?? false, 
    );
  }

  HealthProfileState copyWith({
    bool? isValid,
  }) {
    return HealthProfileState(
      isValid: isValid ?? this.isValid, 
    );
  }

  String toJson() => json.encode(toMap());  
  factory HealthProfileState.fromJson(String source) => HealthProfileState.fromMap(json.decode(source) as Map<String, dynamic>,);  
   
  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is HealthProfileState &&
            (identical(other.isValid, isValid) || other.isValid == isValid));
  }

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        isValid,
]);

  @override
  String toString() {
    return 'HealthProfileState(isValid: $isValid, )';
    }

}
