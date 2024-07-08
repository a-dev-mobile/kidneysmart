/* // ignore_for_file: avoid_bool_literals_in_conditional_expressions
// ignore_for_file: sort_constructors_first
import 'dart:convert';

import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:kidneysmart/core/enum/enum.dart';
import 'package:kidneysmart/features/health_profile/health_profile.dart';

@immutable
class CkdModel {
  /* init:const [] */
  final List<CkdItemModel> listCkd;
  /* init: false */
  final bool isShowCalcCreatinine;
/* init: EnumCkd.none */
  final EnumCkd enumCkdSelected;

  final int? selectedIndex;
  /* init: EnumValid.init */
  final EnumValid enumValid;
  /* init: '' */
  final String error;
/* init: [] */
  final List<bool> listSelected;
  // end

//          --TURN_GEN--
//             (data)
//  *************************************
//         GENERATED CODE
//  *************************************
  const CkdModel({
    this.listCkd = const [],
    this.isShowCalcCreatinine = false,
    this.enumCkdSelected = EnumCkd.none,
    this.enumValid = EnumValid.init,
    this.error = '',
    this.listSelected = const [],
    this.selectedIndex,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'listCkd': listCkd.map((e) => e.toMap()).toList(),
      'isShowCalcCreatinine': isShowCalcCreatinine,
      'enumCkdSelected': enumCkdSelected.index,
      'selectedIndex': selectedIndex,
      'enumValid': enumValid.index,
      'error': error,
      'listSelected': listSelected,
    };
  }

  factory CkdModel.fromMap(Map<dynamic, dynamic>? map) {
    if (map == null) return const CkdModel();

    return CkdModel(
      listCkd: map['listCkd'] != null
          ? (map['listCkd'] as List<dynamic>)
              .map(
                (e) => CkdItemModel.fromMap(e as Map<dynamic, dynamic>),
              )
              .toList()
          : const [],
      isShowCalcCreatinine: map['isShowCalcCreatinine'] as bool? ?? false,
      enumCkdSelected: map['enumCkdSelected'] != null
          ? EnumCkd.values[map['enumCkdSelected'] as int]
          : EnumCkd.none,
      selectedIndex: (map['selectedIndex'] as num?)?.toInt(),
      enumValid: map['enumValid'] != null
          ? EnumValid.values[map['enumValid'] as int]
          : EnumValid.init,
      error: map['error'] as String? ?? '',
      listSelected: (map['listSelected'] as List<dynamic>?)
              ?.map((e) => e as bool)
              .toList() ??
          const [],
    );
  }

  CkdModel copyWith({
    List<CkdItemModel>? listCkd,
    bool? isShowCalcCreatinine,
    EnumCkd? enumCkdSelected,
    int? selectedIndex,
    EnumValid? enumValid,
    String? error,
    List<bool>? listSelected,
  }) {
    return CkdModel(
      listCkd: listCkd ?? this.listCkd,
      isShowCalcCreatinine: isShowCalcCreatinine ?? this.isShowCalcCreatinine,
      enumCkdSelected: enumCkdSelected ?? this.enumCkdSelected,
      selectedIndex: selectedIndex ?? this.selectedIndex,
      enumValid: enumValid ?? this.enumValid,
      error: error ?? this.error,
      listSelected: listSelected ?? this.listSelected,
    );
  }

  String toJson() => json.encode(toMap());
  factory CkdModel.fromJson(String source) => CkdModel.fromMap(
        json.decode(source) as Map<String, dynamic>,
      );

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is CkdModel &&
            const DeepCollectionEquality().equals(
              other.listCkd,
              listCkd,
            ) &&
            (identical(
                  other.isShowCalcCreatinine,
                  isShowCalcCreatinine,
                ) ||
                other.isShowCalcCreatinine == isShowCalcCreatinine) &&
            (identical(
                  other.enumCkdSelected,
                  enumCkdSelected,
                ) ||
                other.enumCkdSelected == enumCkdSelected) &&
            (identical(
                  other.selectedIndex,
                  selectedIndex,
                ) ||
                other.selectedIndex == selectedIndex) &&
            (identical(
                  other.enumValid,
                  enumValid,
                ) ||
                other.enumValid == enumValid) &&
            (identical(
                  other.error,
                  error,
                ) ||
                other.error == error) &&
            const DeepCollectionEquality().equals(
              other.listSelected,
              listSelected,
            ));
  }

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(
          listCkd,
        ),
        isShowCalcCreatinine,
        enumCkdSelected,
        selectedIndex,
        enumValid,
        error,
        const DeepCollectionEquality().hash(
          listSelected,
        ),
      ]);

  @override
  String toString() {
    return 'CkdModel(listCkd: $listCkd, isShowCalcCreatinine: $isShowCalcCreatinine, enumCkdSelected: $enumCkdSelected, selectedIndex: $selectedIndex, enumValid: $enumValid, error: $error, listSelected: $listSelected, )';
  }
}
 */
