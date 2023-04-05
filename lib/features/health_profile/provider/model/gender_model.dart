// ignore_for_file: avoid_bool_literals_in_conditional_expressions
// ignore_for_file: sort_constructors_first
import 'dart:convert';

import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:nutrition/core/enum/enum.dart';
import 'package:nutrition/features/health_profile/health_profile.dart';

@immutable
class GenderModel {
  final int? selectedIndex;
  /* init: EnumGender.none */
  final EnumGender enumGender;
  /* init: EnumResult.init */
  final EnumResult enumValid;
  /* init: '' */
  final String error;
  /* init:const [] */
  final List<GenderItemModel> listGender;

/* init: [] */
  final List<bool> listSelected;

// end
   
//          --TURN_GEN--
//          v0.8.3 (data)
//  *************************************
//         GENERATED CODE
//  *************************************
  const GenderModel({
    this.enumGender = EnumGender.none,
    this.enumValid = EnumResult.init,
    this.error = '',
    this.listGender = const [],
    this.listSelected = const [],
    this.selectedIndex,
  });


  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'selectedIndex': selectedIndex, 
      'enumGender': enumGender.index, 
      'enumValid': enumValid.index, 
      'error': error, 
      'listGender': listGender.map((e) => e.toMap()).toList(), 
      'listSelected': listSelected, 
    };
  }


  factory GenderModel.fromMap(Map<dynamic, dynamic>? map) {
    if (map == null) return const GenderModel();

    return GenderModel(
      selectedIndex: (map['selectedIndex'] as num?)?.toInt(), 
      enumGender: map['enumGender'] != null ? EnumGender.values[map['enumGender'] as int] : EnumGender.none, 
      enumValid: map['enumValid'] != null ? EnumResult.values[map['enumValid'] as int] : EnumResult.init, 
      error: map['error'] as String? ?? '', 
      listGender: map['listGender'] != null ? (map['listGender'] as List<dynamic>).map((e) => GenderItemModel.fromMap(e as Map<dynamic, dynamic>)).toList() : const [], 
      listSelected: (map['listSelected'] as List<dynamic>?)?.map((e) => e as bool).toList() ?? const [], 
    );
  }

  GenderModel copyWith({
    int? selectedIndex,
    EnumGender? enumGender,
    EnumResult? enumValid,
    String? error,
    List<GenderItemModel>? listGender,
    List<bool>? listSelected,
  }) {
    return GenderModel(
      selectedIndex: selectedIndex ?? this.selectedIndex, 
      enumGender: enumGender ?? this.enumGender, 
      enumValid: enumValid ?? this.enumValid, 
      error: error ?? this.error, 
      listGender: listGender ?? this.listGender, 
      listSelected: listSelected ?? this.listSelected, 
    );
  }

  String toJson() => json.encode(toMap());  
  factory GenderModel.fromJson(String source) => GenderModel.fromMap(json.decode(source) as Map<String, dynamic>,);  
   
  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is GenderModel &&
            (identical(other.selectedIndex, selectedIndex) || other.selectedIndex == selectedIndex) && 
            (identical(other.enumGender, enumGender) || other.enumGender == enumGender) && 
            (identical(other.enumValid, enumValid) || other.enumValid == enumValid) && 
            (identical(other.error, error) || other.error == error) && 
            const DeepCollectionEquality().equals(other.listGender, listGender,) && 
            const DeepCollectionEquality().equals(other.listSelected, listSelected,));
  }

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        selectedIndex,
        enumGender,
        enumValid,
        error,
        const DeepCollectionEquality().hash(listGender,),
        const DeepCollectionEquality().hash(listSelected,),
]);

  @override
  String toString() {
    return 'GenderModel(selectedIndex: $selectedIndex, enumGender: $enumGender, enumValid: $enumValid, error: $error, listGender: $listGender, listSelected: $listSelected, )';
    }

}
