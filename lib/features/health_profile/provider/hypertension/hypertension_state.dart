// ignore_for_file: avoid_bool_literals_in_conditional_expressions
// ignore_for_file: sort_constructors_first
import 'dart:convert';

import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:nutrition/core/enum/enum.dart';
import 'package:nutrition/features/health_profile/health_profile.dart';

@immutable
class HypertensionState { 
  /* init:const [] */
  final List<HypertensionItemModel> hypertensionInfo;
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
  
  const HypertensionState({
    this.hypertensionInfo = const [],
    this.enumValid = EnumValid.init,
    this.error = '',
    this.selectedIndex,
  });


  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'hypertensionInfo': hypertensionInfo.map((e) => e.toMap()).toList(), 
      'selectedIndex': selectedIndex, 
      'enumValid': enumValid.index, 
      'error': error, 
    };
  }


  factory HypertensionState.fromMap(Map<dynamic, dynamic>? map) {
    if (map == null) return const HypertensionState();

    return HypertensionState(
      hypertensionInfo: map['hypertensionInfo'] != null ? (map['hypertensionInfo'] as List<dynamic>).map((e) => HypertensionItemModel.fromMap(e as Map<dynamic, dynamic>)).toList() : const [], 
      selectedIndex: (map['selectedIndex'] as num?)?.toInt(), 
      enumValid: map['enumValid'] != null ? EnumValid.values[map['enumValid'] as int] : EnumValid.init, 
      error: map['error'] as String? ?? '', 
    );
  }

  HypertensionState copyWith({
    List<HypertensionItemModel>? hypertensionInfo,
    int? selectedIndex,
    EnumValid? enumValid,
    String? error,
  }) {
    return HypertensionState(
      hypertensionInfo: hypertensionInfo ?? this.hypertensionInfo, 
      selectedIndex: selectedIndex ?? this.selectedIndex, 
      enumValid: enumValid ?? this.enumValid, 
      error: error ?? this.error, 
    );
  }

  String toJson() => json.encode(toMap());  
  factory HypertensionState.fromJson(String source) => HypertensionState.fromMap(json.decode(source) as Map<String, dynamic>,);  
   
  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is HypertensionState &&
            const DeepCollectionEquality().equals(other.hypertensionInfo, hypertensionInfo,) && 
            (identical(other.selectedIndex, selectedIndex) || other.selectedIndex == selectedIndex) && 
            (identical(other.enumValid, enumValid) || other.enumValid == enumValid) && 
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(hypertensionInfo,),
        selectedIndex,
        enumValid,
        error,
]);

  @override
  String toString() {
    return 'HypertensionState(hypertensionInfo: $hypertensionInfo, selectedIndex: $selectedIndex, enumValid: $enumValid, error: $error, )';
    }

}
