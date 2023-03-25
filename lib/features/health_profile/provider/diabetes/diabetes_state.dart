// ignore_for_file: avoid_bool_literals_in_conditional_expressions
// ignore_for_file: sort_constructors_first
import 'dart:convert';

import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:nutrition/features/health_profile/health_profile.dart';

@immutable
class DiabetesState {                                                       
  /* init:const [] */
  final List<DiabetesItemModel> diabetesInfo;

  // end
   
//          --TURN_GEN--
//          v0.8.0 (data)
//  *************************************
//         GENERATED CODE 
//  *************************************
  
  const DiabetesState({
    this.diabetesInfo = const [],
  });


  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'diabetesInfo': diabetesInfo.map((e) => e.toMap()).toList(), 
    };
  }


  factory DiabetesState.fromMap(Map<dynamic, dynamic>? map) {
    if (map == null) return const DiabetesState();

    return DiabetesState(
      diabetesInfo: map['diabetesInfo'] != null ? (map['diabetesInfo'] as List<dynamic>).map((e) => DiabetesItemModel.fromMap(e as Map<dynamic, dynamic>)).toList() : const [], 
    );
  }

  DiabetesState copyWith({
    List<DiabetesItemModel>? diabetesInfo,
  }) {
    return DiabetesState(
      diabetesInfo: diabetesInfo ?? this.diabetesInfo, 
    );
  }

  String toJson() => json.encode(toMap());  
  factory DiabetesState.fromJson(String source) => DiabetesState.fromMap(json.decode(source) as Map<String, dynamic>,);  
   
  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is DiabetesState &&
            const DeepCollectionEquality().equals(other.diabetesInfo, diabetesInfo,));
  }

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(diabetesInfo,),
]);

  @override
  String toString() {
    return 'DiabetesState(diabetesInfo: $diabetesInfo, )';
    }

}
