// ignore_for_file: avoid_bool_literals_in_conditional_expressions
// ignore_for_file: sort_constructors_first
import 'dart:convert';

import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:nutrition/core/enum/enum.dart';
import 'package:nutrition/features/health_profile/health_profile.dart';

@immutable
class CkdState { 
  /* init:const [] */
  final List<CkdItemModel> ckdInfo;
  /* init: false */
  final bool isShowCalcCreatinine;

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
  
  const CkdState({
    this.ckdInfo = const [],
    this.isShowCalcCreatinine = false,
    this.enumValid = EnumValid.init,
    this.error = '',
    this.selectedIndex,
  });


  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ckdInfo': ckdInfo.map((e) => e.toMap()).toList(), 
      'isShowCalcCreatinine': isShowCalcCreatinine, 
      'selectedIndex': selectedIndex, 
      'enumValid': enumValid.index, 
      'error': error, 
    };
  }


  factory CkdState.fromMap(Map<dynamic, dynamic>? map) {
    if (map == null) return const CkdState();

    return CkdState(
      ckdInfo: map['ckdInfo'] != null ? (map['ckdInfo'] as List<dynamic>).map((e) => CkdItemModel.fromMap(e as Map<dynamic, dynamic>)).toList() : const [], 
      isShowCalcCreatinine: map['isShowCalcCreatinine'] as bool? ?? false, 
      selectedIndex: (map['selectedIndex'] as num?)?.toInt(), 
      enumValid: map['enumValid'] != null ? EnumValid.values[map['enumValid'] as int] : EnumValid.init, 
      error: map['error'] as String? ?? '', 
    );
  }

  CkdState copyWith({
    List<CkdItemModel>? ckdInfo,
    bool? isShowCalcCreatinine,
    int? selectedIndex,
    EnumValid? enumValid,
    String? error,
  }) {
    return CkdState(
      ckdInfo: ckdInfo ?? this.ckdInfo, 
      isShowCalcCreatinine: isShowCalcCreatinine ?? this.isShowCalcCreatinine, 
      selectedIndex: selectedIndex ?? this.selectedIndex, 
      enumValid: enumValid ?? this.enumValid, 
      error: error ?? this.error, 
    );
  }

  String toJson() => json.encode(toMap());  
  factory CkdState.fromJson(String source) => CkdState.fromMap(json.decode(source) as Map<String, dynamic>,);  
   
  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is CkdState &&
            const DeepCollectionEquality().equals(other.ckdInfo, ckdInfo,) && 
            (identical(other.isShowCalcCreatinine, isShowCalcCreatinine) || other.isShowCalcCreatinine == isShowCalcCreatinine) && 
            (identical(other.selectedIndex, selectedIndex) || other.selectedIndex == selectedIndex) && 
            (identical(other.enumValid, enumValid) || other.enumValid == enumValid) && 
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(ckdInfo,),
        isShowCalcCreatinine,
        selectedIndex,
        enumValid,
        error,
]);

  @override
  String toString() {
    return 'CkdState(ckdInfo: $ckdInfo, isShowCalcCreatinine: $isShowCalcCreatinine, selectedIndex: $selectedIndex, enumValid: $enumValid, error: $error, )';
    }

}
