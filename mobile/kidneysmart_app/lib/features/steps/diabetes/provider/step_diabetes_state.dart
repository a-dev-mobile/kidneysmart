// ignore_for_file: avoid_bool_literals_in_conditional_expressions
// ignore_for_file: sort_constructors_first
import 'dart:convert';

import 'package:collection/collection.dart';
import 'package:kidneysmart/core/enum/enum.dart';
import 'package:kidneysmart/features/steps/diabetes/diabetes.dart';
import 'package:meta/meta.dart';

@immutable
class DiabetesState {
  final int? selectedIndex;
  /* init: EnumDiabetes.none */
  final EnumDiabetes enumDiabetes;
  /* init: EnumValid.init */
  final EnumValid enumValid;
  /* init: '' */
  final String error;
  /* init:const [] */
  final List<DiabetesItemModel> listDiabetes;

/* init: [] */
  final List<bool> listSelected;

  // end

//          --TURN_GEN--
//             (data)
//  *************************************
//         GENERATED CODE
//  *************************************
  const DiabetesState({
    this.enumDiabetes = EnumDiabetes.none,
    this.enumValid = EnumValid.init,
    this.error = '',
    this.listDiabetes = const [],
    this.listSelected = const [],
    this.selectedIndex,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'selectedIndex': selectedIndex,
      'enumDiabetes': enumDiabetes.index,
      'enumValid': enumValid.index,
      'error': error,
      'listDiabetes': listDiabetes.map((e) => e.toMap()).toList(),
      'listSelected': listSelected,
    };
  }

  factory DiabetesState.fromMap(Map<dynamic, dynamic>? map) {
    if (map == null) return const DiabetesState();

    return DiabetesState(
      selectedIndex: (map['selectedIndex'] as num?)?.toInt(),
      enumDiabetes: map['enumDiabetes'] != null
          ? map['enumDiabetes'] is int
              ? EnumDiabetes.values[map['enumDiabetes'] as int]
              : map['enumDiabetes'] is String
                  // ignore: prefer-enums-by-name
                  ? EnumDiabetes.values.firstWhere(
                      (e) =>
                          e.toString().split('EnumDiabetes.')[1] ==
                          map['enumDiabetes'].toString(),
                      orElse: () => EnumDiabetes.none,
                    )
                  : EnumDiabetes.none
          : EnumDiabetes.none,
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
      listDiabetes: map['listDiabetes'] != null
          ? (map['listDiabetes'] as List<dynamic>)
              .map(
                (e) => DiabetesItemModel.fromMap(
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

  DiabetesState copyWith({
    int? selectedIndex,
    EnumDiabetes? enumDiabetes,
    EnumValid? enumValid,
    String? error,
    List<DiabetesItemModel>? listDiabetes,
    List<bool>? listSelected,
  }) {
    return DiabetesState(
      selectedIndex: selectedIndex ?? this.selectedIndex,
      enumDiabetes: enumDiabetes ?? this.enumDiabetes,
      enumValid: enumValid ?? this.enumValid,
      error: error ?? this.error,
      listDiabetes: listDiabetes ?? this.listDiabetes,
      listSelected: listSelected ?? this.listSelected,
    );
  }

  String toJson() => json.encode(toMap());
  factory DiabetesState.fromJson(String source) => DiabetesState.fromMap(
        json.decode(source) as Map<String, dynamic>,
      );

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is DiabetesState &&
            (identical(
                  other.selectedIndex,
                  selectedIndex,
                ) ||
                other.selectedIndex == selectedIndex) &&
            (identical(
                  other.enumDiabetes,
                  enumDiabetes,
                ) ||
                other.enumDiabetes == enumDiabetes) &&
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
              other.listDiabetes,
              listDiabetes,
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
        enumDiabetes,
        enumValid,
        error,
        const DeepCollectionEquality().hash(
          listDiabetes,
        ),
        const DeepCollectionEquality().hash(
          listSelected,
        ),
      ]);

  @override
  String toString() {
    return 'DiabetesState(selectedIndex: $selectedIndex, enumDiabetes: $enumDiabetes, enumValid: $enumValid, error: $error, listDiabetes: $listDiabetes, listSelected: $listSelected, )';
  }
}
