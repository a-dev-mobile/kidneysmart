// ignore_for_file: avoid_bool_literals_in_conditional_expressions
// ignore_for_file: sort_constructors_first
import 'dart:convert';

import 'package:collection/collection.dart';
import 'package:kidneysmart/core/enum/enum.dart';
import 'package:kidneysmart/features/steps/ckd_select/ckd.dart';
import 'package:kidneysmart/features/steps/gender/enum/enum_gender.dart';
import 'package:meta/meta.dart';

@immutable
class StepCkdSelectState {
  /* init:const [] */
  final List<CkdItemModel> listCkd;

/* init: EnumCkd.none */
  final EnumCkd enumCkd;

/* init: EnumGender.none */
  final EnumGender enumGender;

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
  const StepCkdSelectState({
    this.listCkd = const [],
    this.enumCkd = EnumCkd.none,
    this.enumGender = EnumGender.none,
    this.enumValid = EnumValid.init,
    this.error = '',
    this.listSelected = const [],
    this.selectedIndex,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'listCkd': listCkd.map((e) => e.toMap()).toList(),
      'enumCkd': enumCkd.index,
      'enumGender': enumGender.index,
      'selectedIndex': selectedIndex,
      'enumValid': enumValid.index,
      'error': error,
      'listSelected': listSelected,
    };
  }

  factory StepCkdSelectState.fromMap(Map<dynamic, dynamic>? map) {
    if (map == null) return const StepCkdSelectState();

    return StepCkdSelectState(
      listCkd: map['listCkd'] != null
          ? (map['listCkd'] as List<dynamic>)
              .map(
                (e) => CkdItemModel.fromMap(
                  e as Map<dynamic, dynamic>,
                ),
              )
              .toList()
          : const [],
      enumCkd: map['enumCkd'] != null
          ? map['enumCkd'] is int
              ? EnumCkd.values[map['enumCkd'] as int]
              : map['enumCkd'] is String
                  // ignore: prefer-enums-by-name
                  ? EnumCkd.values.firstWhere(
                      (e) =>
                          e.toString().split('EnumCkd.')[1] ==
                          map['enumCkd'].toString(),
                      orElse: () => EnumCkd.none,
                    )
                  : EnumCkd.none
          : EnumCkd.none,
      enumGender: map['enumGender'] != null
          ? map['enumGender'] is int
              ? EnumGender.values[map['enumGender'] as int]
              : map['enumGender'] is String
                  // ignore: prefer-enums-by-name
                  ? EnumGender.values.firstWhere(
                      (e) =>
                          e.toString().split('EnumGender.')[1] ==
                          map['enumGender'].toString(),
                      orElse: () => EnumGender.none,
                    )
                  : EnumGender.none
          : EnumGender.none,
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
      error: map['error'] as String? ?? '',
      listSelected: (map['listSelected'] as List<dynamic>?)
              ?.map((e) => e as bool)
              .toList() ??
          const [],
    );
  }

  StepCkdSelectState copyWith({
    List<CkdItemModel>? listCkd,
    EnumCkd? enumCkd,
    EnumGender? enumGender,
    int? selectedIndex,
    EnumValid? enumValid,
    String? error,
    List<bool>? listSelected,
  }) {
    return StepCkdSelectState(
      listCkd: listCkd ?? this.listCkd,
      enumCkd: enumCkd ?? this.enumCkd,
      enumGender: enumGender ?? this.enumGender,
      selectedIndex: selectedIndex ?? this.selectedIndex,
      enumValid: enumValid ?? this.enumValid,
      error: error ?? this.error,
      listSelected: listSelected ?? this.listSelected,
    );
  }

  String toJson() => json.encode(toMap());
  factory StepCkdSelectState.fromJson(String source) =>
      StepCkdSelectState.fromMap(
        json.decode(source) as Map<String, dynamic>,
      );

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is StepCkdSelectState &&
            const DeepCollectionEquality().equals(
              other.listCkd,
              listCkd,
            ) &&
            (identical(
                  other.enumCkd,
                  enumCkd,
                ) ||
                other.enumCkd == enumCkd) &&
            (identical(
                  other.enumGender,
                  enumGender,
                ) ||
                other.enumGender == enumGender) &&
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
        enumCkd,
        enumGender,
        selectedIndex,
        enumValid,
        error,
        const DeepCollectionEquality().hash(
          listSelected,
        ),
      ]);

  @override
  String toString() {
    return 'StepCkdSelectState(listCkd: $listCkd, enumCkd: $enumCkd, enumGender: $enumGender, selectedIndex: $selectedIndex, enumValid: $enumValid, error: $error, listSelected: $listSelected, )';
  }
}
