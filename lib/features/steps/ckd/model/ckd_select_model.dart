// ignore_for_file: avoid_bool_literals_in_conditional_expressions
// ignore_for_file: sort_constructors_first
import 'dart:convert';

import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import 'package:nutrition/core/enum/enum.dart';
import 'package:nutrition/features/steps/ckd/ckd.dart';

@immutable
class CkdSelectModel {
  /* init:const [] */
  final List<CkdItemModel> listCkd;

/* init: EnumCkd.none */
  final EnumCkd enumCkd;

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
  const CkdSelectModel({
    this.listCkd = const [],
    this.enumCkd = EnumCkd.none,
    this.enumValid = EnumValid.init,
    this.error = '',
    this.listSelected = const [],
    this.selectedIndex,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'listCkd': listCkd.map((e) => e.toMap()).toList(),
      'enumCkd': enumCkd.index,
      'selectedIndex': selectedIndex,
      'enumValid': enumValid.index,
      'error': error,
      'listSelected': listSelected,
    };
  }

  factory CkdSelectModel.fromMap(Map<dynamic, dynamic>? map) {
    if (map == null) return const CkdSelectModel();

    return CkdSelectModel(
      listCkd: map['listCkd'] != null
          ? (map['listCkd'] as List<dynamic>)
              .map(
                (e) => CkdItemModel.fromMap(e as Map<dynamic, dynamic>),
              )
              .toList()
          : const [],
      enumCkd: map['enumCkd'] != null
          ? EnumCkd.values[map['enumCkd'] as int]
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

  CkdSelectModel copyWith({
    List<CkdItemModel>? listCkd,
    EnumCkd? enumCkd,
    int? selectedIndex,
    EnumValid? enumValid,
    String? error,
    List<bool>? listSelected,
  }) {
    return CkdSelectModel(
      listCkd: listCkd ?? this.listCkd,
      enumCkd: enumCkd ?? this.enumCkd,
      selectedIndex: selectedIndex ?? this.selectedIndex,
      enumValid: enumValid ?? this.enumValid,
      error: error ?? this.error,
      listSelected: listSelected ?? this.listSelected,
    );
  }

  String toJson() => json.encode(toMap());
  factory CkdSelectModel.fromJson(String source) => CkdSelectModel.fromMap(
        json.decode(source) as Map<String, dynamic>,
      );

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is CkdSelectModel &&
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
        selectedIndex,
        enumValid,
        error,
        const DeepCollectionEquality().hash(
          listSelected,
        ),
      ]);

  @override
  String toString() {
    return 'CkdSelectModel(listCkd: $listCkd, enumCkd: $enumCkd, selectedIndex: $selectedIndex, enumValid: $enumValid, error: $error, listSelected: $listSelected, )';
  }
}
