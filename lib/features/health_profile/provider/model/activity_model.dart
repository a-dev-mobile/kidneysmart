// ignore_for_file: avoid_bool_literals_in_conditional_expressions
// ignore_for_file: sort_constructors_first
import 'dart:convert';

import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:nutrition/core/enum/enum.dart';
import 'package:nutrition/features/health_profile/health_profile.dart';

@immutable
class ActivityModel {
  /* init:const [] */
  final List<ActivityItemModel> listActivity;
  final int? selectedIndex;
  /* init: EnumValid.init */
  final EnumValid enumValid;
  /* init: '' */
  final String error;
  /* init: [] */
  final List<bool> listSelected;
  // end

//          --TURN_GEN--
//          v0.8.7 (data)
//  *************************************
//         GENERATED CODE
//  *************************************
  const ActivityModel({
    this.listActivity = const [],
    this.enumValid = EnumValid.init,
    this.error = '',
    this.listSelected = const [],
    this.selectedIndex,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'listActivity': listActivity.map((e) => e.toMap()).toList(),
      'selectedIndex': selectedIndex,
      'enumValid': enumValid.index,
      'error': error,
      'listSelected': listSelected,
    };
  }

  factory ActivityModel.fromMap(Map<dynamic, dynamic>? map) {
    if (map == null) return const ActivityModel();

    return ActivityModel(
      listActivity: map['listActivity'] != null
          ? (map['listActivity'] as List<dynamic>)
              .map(
                (e) => ActivityItemModel.fromMap(e as Map<dynamic, dynamic>),
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

  ActivityModel copyWith({
    List<ActivityItemModel>? listActivity,
    int? selectedIndex,
    EnumValid? enumValid,
    String? error,
    List<bool>? listSelected,
  }) {
    return ActivityModel(
      listActivity: listActivity ?? this.listActivity,
      selectedIndex: selectedIndex ?? this.selectedIndex,
      enumValid: enumValid ?? this.enumValid,
      error: error ?? this.error,
      listSelected: listSelected ?? this.listSelected,
    );
  }

  String toJson() => json.encode(toMap());
  factory ActivityModel.fromJson(String source) => ActivityModel.fromMap(
        json.decode(source) as Map<String, dynamic>,
      );

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ActivityModel &&
            const DeepCollectionEquality().equals(
              other.listActivity,
              listActivity,
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
          listActivity,
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
    return 'ActivityModel(listActivity: $listActivity, selectedIndex: $selectedIndex, enumValid: $enumValid, error: $error, listSelected: $listSelected, )';
  }
}
