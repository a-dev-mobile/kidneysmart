// ignore_for_file: avoid_bool_literals_in_conditional_expressions
// ignore_for_file: sort_constructors_first
import 'dart:convert';

import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:nutrition/core/enum/enum.dart';
import 'package:nutrition/features/health_profile/health_profile.dart';

@immutable
class DialysisModel {
  final int? selectedIndex;
  /* init: EnumDialysis.none */
  final EnumDialysis enumDialysis;
  /* init: EnumValid.init */
  final EnumValid enumValid;
  /* init: '' */
  final String error;
  /* init:const [] */
  final List<DialysisItemModel> listDialysis;

/* init: [] */
  final List<bool> listSelected;

// end

//          --TURN_GEN--
//             (data)
//  *************************************
//         GENERATED CODE
//  *************************************
  const DialysisModel({
    this.enumDialysis = EnumDialysis.none,
    this.enumValid = EnumValid.init,
    this.error = '',
    this.listDialysis = const [],
    this.listSelected = const [],
    this.selectedIndex,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'selectedIndex': selectedIndex,
      'enumDialysis': enumDialysis.index,
      'enumValid': enumValid.index,
      'error': error,
      'listDialysis': listDialysis.map((e) => e.toMap()).toList(),
      'listSelected': listSelected,
    };
  }

  factory DialysisModel.fromMap(Map<dynamic, dynamic>? map) {
    if (map == null) return const DialysisModel();

    return DialysisModel(
      selectedIndex: (map['selectedIndex'] as num?)?.toInt(),
      enumDialysis: map['enumDialysis'] != null
          ? EnumDialysis.values[map['enumDialysis'] as int]
          : EnumDialysis.none,
      enumValid: map['enumValid'] != null
          ? EnumValid.values[map['enumValid'] as int]
          : EnumValid.init,
      error: map['error'] as String? ?? '',
      listDialysis: map['listDialysis'] != null
          ? (map['listDialysis'] as List<dynamic>)
              .map(
                (e) => DialysisItemModel.fromMap(e as Map<dynamic, dynamic>),
              )
              .toList()
          : const [],
      listSelected: (map['listSelected'] as List<dynamic>?)
              ?.map((e) => e as bool)
              .toList() ??
          const [],
    );
  }

  DialysisModel copyWith({
    int? selectedIndex,
    EnumDialysis? enumDialysis,
    EnumValid? enumValid,
    String? error,
    List<DialysisItemModel>? listDialysis,
    List<bool>? listSelected,
  }) {
    return DialysisModel(
      selectedIndex: selectedIndex ?? this.selectedIndex,
      enumDialysis: enumDialysis ?? this.enumDialysis,
      enumValid: enumValid ?? this.enumValid,
      error: error ?? this.error,
      listDialysis: listDialysis ?? this.listDialysis,
      listSelected: listSelected ?? this.listSelected,
    );
  }

  String toJson() => json.encode(toMap());
  factory DialysisModel.fromJson(String source) => DialysisModel.fromMap(
        json.decode(source) as Map<String, dynamic>,
      );

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is DialysisModel &&
            (identical(
                  other.selectedIndex,
                  selectedIndex,
                ) ||
                other.selectedIndex == selectedIndex) &&
            (identical(
                  other.enumDialysis,
                  enumDialysis,
                ) ||
                other.enumDialysis == enumDialysis) &&
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
              other.listDialysis,
              listDialysis,
            ) &&
            const DeepCollectionEquality().equals(
              other.listSelected,
              listSelected,
            ));
  }

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        selectedIndex,
        enumDialysis,
        enumValid,
        error,
        const DeepCollectionEquality().hash(
          listDialysis,
        ),
        const DeepCollectionEquality().hash(
          listSelected,
        ),
      ]);

  @override
  String toString() {
    return 'DialysisModel(selectedIndex: $selectedIndex, enumDialysis: $enumDialysis, enumValid: $enumValid, error: $error, listDialysis: $listDialysis, listSelected: $listSelected, )';
  }
}
