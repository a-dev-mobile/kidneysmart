// ignore_for_file: avoid_bool_literals_in_conditional_expressions
// ignore_for_file: sort_constructors_first
import 'dart:convert';

import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:nutrition/core/enum/enum.dart';
import 'package:nutrition/features/health_profile/health_profile.dart';

@immutable
class DailyDiuresisState { 
  /* init:const [] */
  final List<DailyDiuresisItemModel> dailyDiuresisInfo;
  /* init: false */
  final bool isShowInput;
  final int? selectedIndex;
  /* init: EnumValid.init */
  final EnumValid enumValid;
  /* init: '' */
  final String error;

  // end
   
//          --TURN_GEN--
//          v0.8.2 (data)
//  *************************************
//         GENERATED CODE 
//  *************************************
  
  const DailyDiuresisState({
    this.dailyDiuresisInfo = const [],
    this.isShowInput = false,
    this.enumValid = EnumValid.init,
    this.error = '',
    this.selectedIndex,
  });


  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dailyDiuresisInfo': dailyDiuresisInfo.map((e) => e.toMap()).toList(), 
      'isShowInput': isShowInput, 
      'selectedIndex': selectedIndex, 
      'enumValid': enumValid.index, 
      'error': error, 
    };
  }


  factory DailyDiuresisState.fromMap(Map<dynamic, dynamic>? map) {
    if (map == null) return const DailyDiuresisState();

    return DailyDiuresisState(
      dailyDiuresisInfo: map['dailyDiuresisInfo'] != null ? (map['dailyDiuresisInfo'] as List<dynamic>).map((e) => DailyDiuresisItemModel.fromMap(e as Map<dynamic, dynamic>)).toList() : const [], 
      isShowInput: map['isShowInput'] as bool? ?? false, 
      selectedIndex: (map['selectedIndex'] as num?)?.toInt(), 
      enumValid: map['enumValid'] != null ? EnumValid.values[map['enumValid'] as int] : EnumValid.init, 
      error: map['error'] as String? ?? '', 
    );
  }

  DailyDiuresisState copyWith({
    List<DailyDiuresisItemModel>? dailyDiuresisInfo,
    bool? isShowInput,
    int? selectedIndex,
    EnumValid? enumValid,
    String? error,
  }) {
    return DailyDiuresisState(
      dailyDiuresisInfo: dailyDiuresisInfo ?? this.dailyDiuresisInfo, 
      isShowInput: isShowInput ?? this.isShowInput, 
      selectedIndex: selectedIndex ?? this.selectedIndex, 
      enumValid: enumValid ?? this.enumValid, 
      error: error ?? this.error, 
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
            (identical(other.isShowInput, isShowInput) || other.isShowInput == isShowInput) && 
            (identical(other.selectedIndex, selectedIndex) || other.selectedIndex == selectedIndex) && 
            (identical(other.enumValid, enumValid) || other.enumValid == enumValid) && 
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(dailyDiuresisInfo,),
        isShowInput,
        selectedIndex,
        enumValid,
        error,
]);

  @override
  String toString() {
    return 'DailyDiuresisState(dailyDiuresisInfo: $dailyDiuresisInfo, isShowInput: $isShowInput, selectedIndex: $selectedIndex, enumValid: $enumValid, error: $error, )';
    }

}
