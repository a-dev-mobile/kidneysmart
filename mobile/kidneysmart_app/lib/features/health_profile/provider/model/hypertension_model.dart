/* // ignore_for_file: avoid_bool_literals_in_conditional_expressions
// ignore_for_file: sort_constructors_first
import 'dart:convert';

import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:kidneysmart/core/enum/enum.dart';
import 'package:kidneysmart/features/health_profile/health_profile.dart';

@immutable
class HypertensionModel {
  /* init:const [] */
  final List<HypertensionItemModel> listHypertension;
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
  const HypertensionModel({
    this.listHypertension = const [],
    this.enumValid = EnumValid.init,
    this.error = '',
    this.listSelected = const [],
    this.selectedIndex,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'listHypertension': listHypertension.map((e) => e.toMap()).toList(),
      'selectedIndex': selectedIndex,
      'enumValid': enumValid.index,
      'error': error,
      'listSelected': listSelected,
    };
  }

  factory HypertensionModel.fromMap(Map<dynamic, dynamic>? map) {
    if (map == null) return const HypertensionModel();

    return HypertensionModel(
      listHypertension: map['listHypertension'] != null
          ? (map['listHypertension'] as List<dynamic>)
              .map(
                (e) =>
                    HypertensionItemModel.fromMap(e as Map<dynamic, dynamic>),
              )
              .toList()
          : const [],
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

  HypertensionModel copyWith({
    List<HypertensionItemModel>? listHypertension,
    int? selectedIndex,
    EnumValid? enumValid,
    String? error,
    List<bool>? listSelected,
  }) {
    return HypertensionModel(
      listHypertension: listHypertension ?? this.listHypertension,
      selectedIndex: selectedIndex ?? this.selectedIndex,
      enumValid: enumValid ?? this.enumValid,
      error: error ?? this.error,
      listSelected: listSelected ?? this.listSelected,
    );
  }

  String toJson() => json.encode(toMap());
  factory HypertensionModel.fromJson(String source) =>
      HypertensionModel.fromMap(
        json.decode(source) as Map<String, dynamic>,
      );

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is HypertensionModel &&
            const DeepCollectionEquality().equals(
              other.listHypertension,
              listHypertension,
            ) &&
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
          listHypertension,
        ),
        selectedIndex,
        enumValid,
        error,
        const DeepCollectionEquality().hash(
          listSelected,
        ),
      ]);

  @override
  String toString() {
    return 'HypertensionModel(listHypertension: $listHypertension, selectedIndex: $selectedIndex, enumValid: $enumValid, error: $error, listSelected: $listSelected, )';
  }
}
 */
