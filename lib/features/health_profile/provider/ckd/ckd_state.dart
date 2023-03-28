// ignore_for_file: avoid_bool_literals_in_conditional_expressions
// ignore_for_file: sort_constructors_first
import 'dart:convert';

import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:nutrition/features/health_profile/health_profile.dart';

@immutable
class CkdState {
  /* init:const [] */
  final List<CkdItemModel> ckdInfo;
  /* init: false */
  final bool isShowInput;
  /* init:  EnumInputTypeCreatinine.mcmolL */
  final EnumInputTypeCreatinine inputTypeCreatinine;

  // end

//          --TURN_GEN--
//          v0.8.2 (data)
//  *************************************
//         GENERATED CODE
//  *************************************

  const CkdState({
    this.ckdInfo = const [],
    this.isShowInput = false,
    this.inputTypeCreatinine = EnumInputTypeCreatinine.mcmolL,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ckdInfo': ckdInfo.map((e) => e.toMap()).toList(),
      'isShowInput': isShowInput,
      'inputTypeCreatinine': inputTypeCreatinine.index,
    };
  }

  factory CkdState.fromMap(Map<dynamic, dynamic>? map) {
    if (map == null) return const CkdState();

    return CkdState(
      ckdInfo: map['ckdInfo'] != null
          ? (map['ckdInfo'] as List<dynamic>)
              .map((e) => CkdItemModel.fromMap(e as Map<dynamic, dynamic>))
              .toList()
          : const [],
      isShowInput: map['isShowInput'] as bool? ?? false,
      inputTypeCreatinine: map['inputTypeCreatinine'] != null
          ? EnumInputTypeCreatinine.values[map['inputTypeCreatinine'] as int]
          : EnumInputTypeCreatinine.mcmolL,
    );
  }

  CkdState copyWith({
    List<CkdItemModel>? ckdInfo,
    bool? isShowInput,
    EnumInputTypeCreatinine? inputTypeCreatinine,
  }) {
    return CkdState(
      ckdInfo: ckdInfo ?? this.ckdInfo,
      isShowInput: isShowInput ?? this.isShowInput,
      inputTypeCreatinine: inputTypeCreatinine ?? this.inputTypeCreatinine,
    );
  }

  String toJson() => json.encode(toMap());
  factory CkdState.fromJson(String source) => CkdState.fromMap(
        json.decode(source) as Map<String, dynamic>,
      );

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is CkdState &&
            const DeepCollectionEquality().equals(
              other.ckdInfo,
              ckdInfo,
            ) &&
            (identical(other.isShowInput, isShowInput) ||
                other.isShowInput == isShowInput) &&
            (identical(other.inputTypeCreatinine, inputTypeCreatinine) ||
                other.inputTypeCreatinine == inputTypeCreatinine));
  }

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(
          ckdInfo,
        ),
        isShowInput,
        inputTypeCreatinine,
      ]);

  @override
  String toString() {
    return 'CkdState(ckdInfo: $ckdInfo, isShowInput: $isShowInput, inputTypeCreatinine: $inputTypeCreatinine, )';
  }
}
