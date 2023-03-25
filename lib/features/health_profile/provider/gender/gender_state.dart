// ignore_for_file: avoid_bool_literals_in_conditional_expressions
// ignore_for_file: sort_constructors_first
import 'dart:convert';

import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:nutrition/features/health_profile/health_profile.dart';

@immutable
class GenderState {                               
  /* init:const [] */
  final List<GenderItemModel> genderInfo;

  // end
   
//          --TURN_GEN--
//          v0.8.0 (data)
//  *************************************
//         GENERATED CODE 
//  *************************************
  
  const GenderState({
    this.genderInfo = const [],
  });


  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'genderInfo': genderInfo.map((e) => e.toMap()).toList(), 
    };
  }


  factory GenderState.fromMap(Map<dynamic, dynamic>? map) {
    if (map == null) return const GenderState();

    return GenderState(
      genderInfo: map['genderInfo'] != null ? (map['genderInfo'] as List<dynamic>).map((e) => GenderItemModel.fromMap(e as Map<dynamic, dynamic>)).toList() : const [], 
    );
  }

  GenderState copyWith({
    List<GenderItemModel>? genderInfo,
  }) {
    return GenderState(
      genderInfo: genderInfo ?? this.genderInfo, 
    );
  }

  String toJson() => json.encode(toMap());  
  factory GenderState.fromJson(String source) => GenderState.fromMap(json.decode(source) as Map<String, dynamic>,);  
   
  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is GenderState &&
            const DeepCollectionEquality().equals(other.genderInfo, genderInfo,));
  }

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(genderInfo,),
]);

  @override
  String toString() {
    return 'GenderState(genderInfo: $genderInfo, )';
    }

}
