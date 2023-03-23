// ignore_for_file: avoid_bool_literals_in_conditional_expressions
// ignore_for_file: sort_constructors_first
import 'dart:convert';

import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:nutrition/features/health_profile/health_profile.dart';

@immutable
class DailyDiuresisState {  
  /* init:const [] */
  final List<DailyDiuresisItemModel> dailyDiuresisInfo;
  /* init: false */
  final bool isShowInput;


  // end
   
//          --TURN_GEN--
//           v0.6.3 (data)
//  *************************************
//         GENERATED CODE 
//  *************************************
  
  const DailyDiuresisState({
    this.dailyDiuresisInfo = const [],
    this.isShowInput = false,
  });


  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dailyDiuresisInfo': dailyDiuresisInfo.map((e) => e.toMap()).toList(), 
      'isShowInput': isShowInput, 
    };
  }


  factory DailyDiuresisState.fromMap(Map<dynamic, dynamic>? map) {
    if (map == null) return const DailyDiuresisState();

    return DailyDiuresisState(
      dailyDiuresisInfo: map['dailyDiuresisInfo'] != null ? (map['dailyDiuresisInfo'] as List<dynamic>).map((e) => DailyDiuresisItemModel.fromMap(e as Map<dynamic, dynamic>)).toList() : const [], 
      isShowInput: map['isShowInput'] != null ? map['isShowInput'] as bool : false, 
    );
  }

  DailyDiuresisState copyWith({
    List<DailyDiuresisItemModel>? dailyDiuresisInfo,
    bool? isShowInput,
  }) {
    return DailyDiuresisState(
      dailyDiuresisInfo: dailyDiuresisInfo ?? this.dailyDiuresisInfo, 
      isShowInput: isShowInput ?? this.isShowInput, 
    );
  }

  String toJson() => json.encode(toMap());  
  factory DailyDiuresisState.fromJson(String source) => DailyDiuresisState.fromMap(json.decode(source) as Map<String, dynamic>,);  
   
  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is DailyDiuresisState &&
            const DeepCollectionEquality().equals(other.dailyDiuresisInfo, dailyDiuresisInfo,) && 
            (identical(other.isShowInput, isShowInput) || other.isShowInput == isShowInput));
  }

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(dailyDiuresisInfo,),
        isShowInput,
]);

  @override
  String toString() {
    return 'DailyDiuresisState(dailyDiuresisInfo: $dailyDiuresisInfo, isShowInput: $isShowInput, )';
    }

}
