// ignore_for_file: avoid_bool_literals_in_conditional_expressions
// ignore_for_file: sort_constructors_first
import 'dart:convert';

import 'package:collection/collection.dart';
import 'package:kidneysmart/core/enum/enum.dart';
import 'package:kidneysmart/features/steps/urine_select/urine_select.dart';
import 'package:meta/meta.dart';

@immutable
class StepUrineSelectState {
  /* init:const [] */
  final List<UrineItemModel> listUrine;

/* init: EnumUrine.none */
  final EnumUrine enumUrine;

  final int? selectedIndex;
  /* init: EnumValid.init */

  final EnumValid enumValid;

/* init: [] */
  final List<bool> listSelected;
  // end

//          --TURN_GEN--
//             (data)
//  *************************************
//         GENERATED CODE
//  *************************************
  const StepUrineSelectState({
    this.listUrine = const [],
    this.enumUrine = EnumUrine.none,
    this.enumValid = EnumValid.init,
    this.listSelected = const [],
    this.selectedIndex,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'listUrine': listUrine.map((e) => e.toMap()).toList(),
      'enumUrine': enumUrine.index,
      'selectedIndex': selectedIndex,
      'enumValid': enumValid.index,
      'listSelected': listSelected,
    };
  }

  factory StepUrineSelectState.fromMap(Map<dynamic, dynamic>? map) {
    if (map == null) return const StepUrineSelectState();

    return StepUrineSelectState(
      listUrine: map['listUrine'] != null
          ? (map['listUrine'] as List<dynamic>)
              .map(
                (e) => UrineItemModel.fromMap(
                  e as Map<dynamic, dynamic>,
                ),
              )
              .toList()
          : const [],
      enumUrine: map['enumUrine'] != null
          ? map['enumUrine'] is int
              ? EnumUrine.values[map['enumUrine'] as int]
              : map['enumUrine'] is String
                  // ignore: prefer-enums-by-name
                  ? EnumUrine.values.firstWhere(
                      (e) =>
                          e.toString().split('EnumUrine.')[1] ==
                          map['enumUrine'].toString(),
                      orElse: () => EnumUrine.none,
                    )
                  : EnumUrine.none
          : EnumUrine.none,
      selectedIndex: (map['selectedIndex'] as num?)?.toInt(),
      enumValid: map['enumValid'] != null
          ? map['enumValid'] is int
              ? EnumValid.values[map['enumValid'] as int]
              : map['enumValid'] is String
                  // ignore: prefer-enums-by-name
                  ? EnumValid.values.firstWhere(
                      (e) =>
                          e.toString().split('EnumValid.')[1] ==
                          map['enumValid'].toString(),
                      orElse: () => EnumValid.init,
                    )
                  : EnumValid.init
          : EnumValid.init,
      listSelected: (map['listSelected'] as List<dynamic>?)
              ?.map((e) => e as bool)
              .toList() ??
          const [],
    );
  }

  StepUrineSelectState copyWith({
    List<UrineItemModel>? listUrine,
    EnumUrine? enumUrine,
    int? selectedIndex,
    EnumValid? enumValid,
    List<bool>? listSelected,
  }) {
    return StepUrineSelectState(
      listUrine: listUrine ?? this.listUrine,
      enumUrine: enumUrine ?? this.enumUrine,
      selectedIndex: selectedIndex ?? this.selectedIndex,
      enumValid: enumValid ?? this.enumValid,
      listSelected: listSelected ?? this.listSelected,
    );
  }

  String toJson() => json.encode(toMap());
  factory StepUrineSelectState.fromJson(String source) =>
      StepUrineSelectState.fromMap(
        json.decode(source) as Map<String, dynamic>,
      );

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is StepUrineSelectState &&
            const DeepCollectionEquality().equals(
              other.listUrine,
              listUrine,
            ) &&
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
        enumUrine,
        selectedIndex,
        enumValid,
        const DeepCollectionEquality().hash(
          listSelected,
        ),
      ]);

  @override
  String toString() {
    return 'StepUrineSelectState(listUrine: $listUrine, enumUrine: $enumUrine, selectedIndex: $selectedIndex, enumValid: $enumValid, listSelected: $listSelected, )';
  }
}
