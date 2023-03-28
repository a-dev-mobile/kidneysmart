// ignore_for_file: avoid_bool_literals_in_conditional_expressions
// ignore_for_file: sort_constructors_first
import 'dart:convert';

import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:nutrition/features/health_profile/health_profile.dart';

@immutable
class HypertensionState {                                                                                                                                   
  /* init:const [] */
  final List<HypertensionItemModel> hypertensionInfo;

  // end
   
//          --TURN_GEN--
//          v0.8.2 (data)
//  *************************************
//         GENERATED CODE 
//  *************************************
  
  const HypertensionState({
    this.hypertensionInfo = const [],
  });


  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'hypertensionInfo': hypertensionInfo.map((e) => e.toMap()).toList(), 
    };
  }


  factory HypertensionState.fromMap(Map<dynamic, dynamic>? map) {
    if (map == null) return const HypertensionState();

    return HypertensionState(
      hypertensionInfo: map['hypertensionInfo'] != null ? (map['hypertensionInfo'] as List<dynamic>).map((e) => HypertensionItemModel.fromMap(e as Map<dynamic, dynamic>)).toList() : const [], 
    );
  }

  HypertensionState copyWith({
    List<HypertensionItemModel>? hypertensionInfo,
  }) {
    return HypertensionState(
      hypertensionInfo: hypertensionInfo ?? this.hypertensionInfo, 
    );
  }

  String toJson() => json.encode(toMap());  
  factory HypertensionState.fromJson(String source) => HypertensionState.fromMap(json.decode(source) as Map<String, dynamic>,);  
   
  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is HypertensionState &&
            const DeepCollectionEquality().equals(other.hypertensionInfo, hypertensionInfo,));
  }

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(hypertensionInfo,),
]);

  @override
  String toString() {
    return 'HypertensionState(hypertensionInfo: $hypertensionInfo, )';
    }

}
