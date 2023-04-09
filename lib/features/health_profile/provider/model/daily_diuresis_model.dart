// ignore_for_file: avoid_bool_literals_in_conditional_expressions
// ignore_for_file: sort_constructors_first
import 'dart:convert';

import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:nutrition/core/enum/enum.dart';
import 'package:nutrition/features/health_profile/health_profile.dart';

@immutable
class DailyDiuresisModel {
  /* init:const [] */
  final List<DailyDiuresisItemModel> listDailyDiuresis;
  /* init: false */
  final bool isShowInput;
  final int? selectedIndex;
  /* init: EnumValid.init */
  final EnumValid enumValid;
  /* init: '' */
  final String error;
/* init: [] */
  final List<bool> listSelected;
  // end
   
//          --TURN_GEN--
//          v0.8.5 (data)
//  *************************************
//         GENERATED CODE
//  *************************************
  const DailyDiuresisModel({
    this.listDailyDiuresis = const [],
    this.isShowInput = false,
    this.enumValid = EnumValid.init,
    this.error = '',
    this.listSelected = const [],
    this.selectedIndex,
  });


  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'listDailyDiuresis': listDailyDiuresis.map((e) => e.toMap()).toList(), 
      'isShowInput': isShowInput, 
      'selectedIndex': selectedIndex, 
      'enumValid': enumValid.index, 
      'error': error, 
      'listSelected': listSelected, 
    };
  }


  factory DailyDiuresisModel.fromMap(Map<dynamic, dynamic>? map) {
    if (map == null) return const DailyDiuresisModel();

    return DailyDiuresisModel(
      listDailyDiuresis: map['listDailyDiuresis'] != null ? (map['listDailyDiuresis'] as List<dynamic>).map((e) => DailyDiuresisItemModel.fromMap(e as Map<dynamic, dynamic>)).toList() : const [], 
      isShowInput: map['isShowInput'] as bool? ?? false, 
      selectedIndex: (map['selectedIndex'] as num?)?.toInt(), 
      enumValid: map['enumValid'] != null ? EnumValid.values[map['enumValid'] as int] : EnumValid.init, 
      error: map['error'] as String? ?? '', 
      listSelected: (map['listSelected'] as List<dynamic>?)?.map((e) => e as bool).toList() ?? const [], 
    );
  }

  DailyDiuresisModel copyWith({
    List<DailyDiuresisItemModel>? listDailyDiuresis,
    bool? isShowInput,
    int? selectedIndex,
    EnumValid? enumValid,
    String? error,
    List<bool>? listSelected,
  }) {
    return DailyDiuresisModel(
      listDailyDiuresis: listDailyDiuresis ?? this.listDailyDiuresis, 
      isShowInput: isShowInput ?? this.isShowInput, 
      selectedIndex: selectedIndex ?? this.selectedIndex, 
      enumValid: enumValid ?? this.enumValid, 
      error: error ?? this.error, 
      listSelected: listSelected ?? this.listSelected, 
    );
  }

  String toJson() => json.encode(toMap());  
  factory DailyDiuresisModel.fromJson(String source) => DailyDiuresisModel.fromMap(json.decode(source) as Map<String, dynamic>,);  
   
  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is DailyDiuresisModel &&
            const DeepCollectionEquality().equals(other.listDailyDiuresis, listDailyDiuresis,) && 
            (identical(other.isShowInput, isShowInput) || other.isShowInput == isShowInput) && 
            (identical(other.selectedIndex, selectedIndex) || other.selectedIndex == selectedIndex) && 
            (identical(other.enumValid, enumValid) || other.enumValid == enumValid) && 
            (identical(other.error, error) || other.error == error) && 
            const DeepCollectionEquality().equals(other.listSelected, listSelected,));
  }

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(listDailyDiuresis,),
        isShowInput,
        selectedIndex,
        enumValid,
        error,
        const DeepCollectionEquality().hash(listSelected,),
]);

  @override
  String toString() {
    return 'DailyDiuresisModel(listDailyDiuresis: $listDailyDiuresis, isShowInput: $isShowInput, selectedIndex: $selectedIndex, enumValid: $enumValid, error: $error, listSelected: $listSelected, )';
    }

}
