// ignore_for_file: avoid_bool_literals_in_conditional_expressions
// ignore_for_file: sort_constructors_first
import 'dart:convert';

import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import 'package:nutrition/core/enum/enum.dart';
import 'package:nutrition/features/steps/urine/urine.dart';

@immutable
class UrineSelectModel {
  /* init:const [] */
  final List<UrineItemModel> listUrine;
  /* init: false */
  final bool isShowInput;

/* init: EnumUrine.none */
  final EnumUrine enumUrine;

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
  const UrineSelectModel({
    this.listUrine = const [],
    this.isShowInput = false,
    this.enumUrine = EnumUrine.none,
    this.enumValid = EnumValid.init,
    this.error = '',
    this.listSelected = const [],
    this.selectedIndex,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'listUrine': listUrine.map((e) => e.toMap()).toList(),
      'isShowInput': isShowInput,
      'enumUrine': enumUrine.index,
      'selectedIndex': selectedIndex,
      'enumValid': enumValid.index,
      'error': error,
      'listSelected': listSelected,
    };
  }

  factory UrineSelectModel.fromMap(Map<dynamic, dynamic>? map) {
    if (map == null) return const UrineSelectModel();

    return UrineSelectModel(
      listUrine: map['listUrine'] != null
          ? (map['listUrine'] as List<dynamic>)
              .map(
                (e) => UrineItemModel.fromMap(e as Map<dynamic, dynamic>),
              )
              .toList()
          : const [],
      isShowInput: map['isShowInput'] as bool? ?? false,
      enumUrine: map['enumUrine'] != null
          ? EnumUrine.values[map['enumUrine'] as int]
          : EnumUrine.none,
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

  UrineSelectModel copyWith({
    List<UrineItemModel>? listUrine,
    bool? isShowInput,
    EnumUrine? enumUrine,
    int? selectedIndex,
    EnumValid? enumValid,
    String? error,
    List<bool>? listSelected,
  }) {
    return UrineSelectModel(
      listUrine: listUrine ?? this.listUrine,
      isShowInput: isShowInput ?? this.isShowInput,
      enumUrine: enumUrine ?? this.enumUrine,
      selectedIndex: selectedIndex ?? this.selectedIndex,
      enumValid: enumValid ?? this.enumValid,
      error: error ?? this.error,
      listSelected: listSelected ?? this.listSelected,
    );
  }

  String toJson() => json.encode(toMap());
  factory UrineSelectModel.fromJson(String source) => UrineSelectModel.fromMap(
        json.decode(source) as Map<String, dynamic>,
      );

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is UrineSelectModel &&
            const DeepCollectionEquality().equals(
              other.listUrine,
              listUrine,
            ) &&
            (identical(
                  other.isShowInput,
                  isShowInput,
                ) ||
                other.isShowInput == isShowInput) &&
            (identical(
                  other.enumUrine,
                  enumUrine,
                ) ||
                other.enumUrine == enumUrine) &&
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
          listUrine,
        ),
        isShowInput,
        enumUrine,
        selectedIndex,
        enumValid,
        error,
        const DeepCollectionEquality().hash(
          listSelected,
        ),
      ]);

  @override
  String toString() {
    return 'UrineSelectModel(listUrine: $listUrine, isShowInput: $isShowInput, enumUrine: $enumUrine, selectedIndex: $selectedIndex, enumValid: $enumValid, error: $error, listSelected: $listSelected, )';
  }
}
