// ignore_for_file: avoid_bool_literals_in_conditional_expressions
// ignore_for_file: sort_constructors_first
import 'dart:convert';

import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:nutrition/core/enum/enum.dart';
import 'package:nutrition/features/health_profile/health_profile.dart';

@immutable
class DiabetesState { 
  /* init:const [] */
  final List<DiabetesItemModel> diabetesInfo;
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
  
  const DiabetesState({
    this.diabetesInfo = const [],
    this.enumValid = EnumValid.init,
    this.error = '',
    this.selectedIndex,
  });


  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'diabetesInfo': diabetesInfo.map((e) => e.toMap()).toList(), 
      'selectedIndex': selectedIndex, 
      'enumValid': enumValid.index, 
      'error': error, 
    };
  }


  factory DiabetesState.fromMap(Map<dynamic, dynamic>? map) {
    if (map == null) return const DiabetesState();

    return DiabetesState(
      diabetesInfo: map['diabetesInfo'] != null ? (map['diabetesInfo'] as List<dynamic>).map((e) => DiabetesItemModel.fromMap(e as Map<dynamic, dynamic>)).toList() : const [], 
      selectedIndex: (map['selectedIndex'] as num?)?.toInt(), 
      enumValid: map['enumValid'] != null ? EnumValid.values[map['enumValid'] as int] : EnumValid.init, 
      error: map['error'] as String? ?? '', 
    );
  }

  DiabetesState copyWith({
    List<DiabetesItemModel>? diabetesInfo,
    int? selectedIndex,
    EnumValid? enumValid,
    String? error,
  }) {
    return DiabetesState(
      diabetesInfo: diabetesInfo ?? this.diabetesInfo, 
      selectedIndex: selectedIndex ?? this.selectedIndex, 
      enumValid: enumValid ?? this.enumValid, 
      error: error ?? this.error, 
    );
  }

  String toJson() => json.encode(toMap());  
  factory DiabetesState.fromJson(String source) => DiabetesState.fromMap(json.decode(source) as Map<String, dynamic>,);  
   
  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is DiabetesState &&
            const DeepCollectionEquality().equals(other.diabetesInfo, diabetesInfo,) && 
            (identical(other.selectedIndex, selectedIndex) || other.selectedIndex == selectedIndex) && 
            (identical(other.enumValid, enumValid) || other.enumValid == enumValid) && 
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(diabetesInfo,),
        selectedIndex,
        enumValid,
        error,
]);

  @override
  String toString() {
    return 'DiabetesState(diabetesInfo: $diabetesInfo, selectedIndex: $selectedIndex, enumValid: $enumValid, error: $error, )';
    }

}
