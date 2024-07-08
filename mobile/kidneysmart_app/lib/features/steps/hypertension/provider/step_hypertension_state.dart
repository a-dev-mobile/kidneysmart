// ignore_for_file: avoid_bool_literals_in_conditional_expressions
// ignore_for_file: sort_constructors_first
import 'dart:convert';

import 'package:collection/collection.dart';
import 'package:kidneysmart/core/enum/enum.dart';
import 'package:kidneysmart/features/steps/hypertension/hypertension.dart';
import 'package:meta/meta.dart';

@immutable
class HypertensionState {
  final int? selectedIndex;
  /* init: EnumHypertension.none */
  final EnumHypertension enumHypertension;
  /* init: EnumValid.init */
  final EnumValid enumValid;
  /* init: '' */
  final String error;
  /* init:const [] */
  final List<HypertensionItemModel> listHypertension;

/* init: [] */
  final List<bool> listSelected;

  // end

//          --TURN_GEN--
//             (data)
//  *************************************
//         GENERATED CODE
//  *************************************
  const HypertensionState({
    this.enumHypertension = EnumHypertension.none,
    this.enumValid = EnumValid.init,
    this.error = '',
    this.listHypertension = const [],
    this.listSelected = const [],
    this.selectedIndex,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'selectedIndex': selectedIndex,
      'enumHypertension': enumHypertension.index,
      'enumValid': enumValid.index,
      'error': error,
      'listHypertension': listHypertension.map((e) => e.toMap()).toList(),
      'listSelected': listSelected,
    };
  }

  factory HypertensionState.fromMap(Map<dynamic, dynamic>? map) {
    if (map == null) return const HypertensionState();

    return HypertensionState(
      selectedIndex: (map['selectedIndex'] as num?)?.toInt(),
      enumHypertension: map['enumHypertension'] != null
          ? map['enumHypertension'] is int
              ? EnumHypertension.values[map['enumHypertension'] as int]
              : map['enumHypertension'] is String
                  // ignore: prefer-enums-by-name
                  ? EnumHypertension.values.firstWhere(
                      (e) =>
                          e.toString().split('EnumHypertension.')[1] ==
                          map['enumHypertension'].toString(),
                      orElse: () => EnumHypertension.none,
                    )
                  : EnumHypertension.none
          : EnumHypertension.none,
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
      error: map['error'] as String? ?? '',
      listHypertension: map['listHypertension'] != null
          ? (map['listHypertension'] as List<dynamic>)
              .map(
                (e) => HypertensionItemModel.fromMap(
                  e as Map<dynamic, dynamic>,
                ),
              )
              .toList()
          : const [],
      listSelected: (map['listSelected'] as List<dynamic>?)
              ?.map((e) => e as bool)
              .toList() ??
          const [],
    );
  }

  HypertensionState copyWith({
    int? selectedIndex,
    EnumHypertension? enumHypertension,
    EnumValid? enumValid,
    String? error,
    List<HypertensionItemModel>? listHypertension,
    List<bool>? listSelected,
  }) {
    return HypertensionState(
      selectedIndex: selectedIndex ?? this.selectedIndex,
      enumHypertension: enumHypertension ?? this.enumHypertension,
      enumValid: enumValid ?? this.enumValid,
      error: error ?? this.error,
      listHypertension: listHypertension ?? this.listHypertension,
      listSelected: listSelected ?? this.listSelected,
    );
  }

  String toJson() => json.encode(toMap());
  factory HypertensionState.fromJson(String source) =>
      HypertensionState.fromMap(
        json.decode(source) as Map<String, dynamic>,
      );

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is HypertensionState &&
            (identical(
                  other.selectedIndex,
                  selectedIndex,
                ) ||
                other.selectedIndex == selectedIndex) &&
            (identical(
                  other.enumHypertension,
                  enumHypertension,
                ) ||
                other.enumHypertension == enumHypertension) &&
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
              other.listHypertension,
              listHypertension,
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
        enumHypertension,
        enumValid,
        error,
        const DeepCollectionEquality().hash(
          listHypertension,
        ),
        const DeepCollectionEquality().hash(
          listSelected,
        ),
      ]);

  @override
  String toString() {
    return 'HypertensionState(selectedIndex: $selectedIndex, enumHypertension: $enumHypertension, enumValid: $enumValid, error: $error, listHypertension: $listHypertension, listSelected: $listSelected, )';
  }
}
