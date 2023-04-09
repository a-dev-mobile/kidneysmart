// ignore_for_file: avoid_bool_literals_in_conditional_expressions
// ignore_for_file: sort_constructors_first
import 'dart:convert';

import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:nutrition/core/enum/enum.dart';
import 'package:nutrition/features/health_profile/health_profile.dart';

@immutable
class DiabetesModel {
  /* init:const [] */
  final List<DiabetesItemModel> listDiabet;
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
  const DiabetesModel({
    this.listDiabet = const [],
    this.enumValid = EnumValid.init,
    this.error = '',
    this.listSelected = const [],
    this.selectedIndex,
  });


  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'listDiabet': listDiabet.map((e) => e.toMap()).toList(), 
      'selectedIndex': selectedIndex, 
      'enumValid': enumValid.index, 
      'error': error, 
      'listSelected': listSelected, 
    };
  }


  factory DiabetesModel.fromMap(Map<dynamic, dynamic>? map) {
    if (map == null) return const DiabetesModel();

    return DiabetesModel(
      listDiabet: map['listDiabet'] != null ? (map['listDiabet'] as List<dynamic>).map((e) => DiabetesItemModel.fromMap(e as Map<dynamic, dynamic>)).toList() : const [], 
      selectedIndex: (map['selectedIndex'] as num?)?.toInt(), 
      enumValid: map['enumValid'] != null ? EnumValid.values[map['enumValid'] as int] : EnumValid.init, 
      error: map['error'] as String? ?? '', 
      listSelected: (map['listSelected'] as List<dynamic>?)?.map((e) => e as bool).toList() ?? const [], 
    );
  }

  DiabetesModel copyWith({
    List<DiabetesItemModel>? listDiabet,
    int? selectedIndex,
    EnumValid? enumValid,
    String? error,
    List<bool>? listSelected,
  }) {
    return DiabetesModel(
      listDiabet: listDiabet ?? this.listDiabet, 
      selectedIndex: selectedIndex ?? this.selectedIndex, 
      enumValid: enumValid ?? this.enumValid, 
      error: error ?? this.error, 
      listSelected: listSelected ?? this.listSelected, 
    );
  }

  String toJson() => json.encode(toMap());  
  factory DiabetesModel.fromJson(String source) => DiabetesModel.fromMap(json.decode(source) as Map<String, dynamic>,);  
   
  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is DiabetesModel &&
            const DeepCollectionEquality().equals(other.listDiabet, listDiabet,) && 
            (identical(other.selectedIndex, selectedIndex) || other.selectedIndex == selectedIndex) && 
            (identical(other.enumValid, enumValid) || other.enumValid == enumValid) && 
            (identical(other.error, error) || other.error == error) && 
            const DeepCollectionEquality().equals(other.listSelected, listSelected,));
  }

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(listDiabet,),
        selectedIndex,
        enumValid,
        error,
        const DeepCollectionEquality().hash(listSelected,),
]);

  @override
  String toString() {
    return 'DiabetesModel(listDiabet: $listDiabet, selectedIndex: $selectedIndex, enumValid: $enumValid, error: $error, listSelected: $listSelected, )';
    }

}
