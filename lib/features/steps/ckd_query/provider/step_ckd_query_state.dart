// ignore_for_file: avoid_bool_literals_in_conditional_expressions
// ignore_for_file: sort_constructors_first
import 'dart:convert';

import 'package:collection/collection.dart';
import 'package:kidneysmart/core/enum/enum.dart';
import 'package:kidneysmart/features/steps/ckd_query/ckd_query.dart';
import 'package:meta/meta.dart';

@immutable
class CkdQueryState {
  final int? selectedIndex;
  /* init: EnumCkdQuery.none */
  final EnumCkdQuery enumCkdQuery;
  /* init: EnumValid.init */
  final EnumValid enumValid;
  /* init: '' */
  final String error;
  /* init:const [] */
  final List<CkdQueryItemModel> listCkdQuery;

/* init: [] */
  final List<bool> listSelected;

  // end

//          --TURN_GEN--
//             (data)
//  *************************************
//         GENERATED CODE
//  *************************************
  const CkdQueryState({
    this.enumCkdQuery = EnumCkdQuery.none,
    this.enumValid = EnumValid.init,
    this.error = '',
    this.listCkdQuery = const [],
    this.listSelected = const [],
    this.selectedIndex,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'selectedIndex': selectedIndex,
      'enumCkdQuery': enumCkdQuery.index,
      'enumValid': enumValid.index,
      'error': error,
      'listCkdQuery': listCkdQuery.map((e) => e.toMap()).toList(),
      'listSelected': listSelected,
    };
  }

  factory CkdQueryState.fromMap(Map<dynamic, dynamic>? map) {
    if (map == null) return const CkdQueryState();

    return CkdQueryState(
      selectedIndex: (map['selectedIndex'] as num?)?.toInt(),
      enumCkdQuery: map['enumCkdQuery'] != null
          ? map['enumCkdQuery'] is int
              ? EnumCkdQuery.values[map['enumCkdQuery'] as int]
              : map['enumCkdQuery'] is String
                  // ignore: prefer-enums-by-name
                  ? EnumCkdQuery.values.firstWhere(
                      (e) =>
                          e.toString().split('EnumCkdQuery.')[1] ==
                          map['enumCkdQuery'].toString(),
                      orElse: () => EnumCkdQuery.none,
                    )
                  : EnumCkdQuery.none
          : EnumCkdQuery.none,
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
      listCkdQuery: map['listCkdQuery'] != null
          ? (map['listCkdQuery'] as List<dynamic>)
              .map(
                (e) => CkdQueryItemModel.fromMap(
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

  CkdQueryState copyWith({
    int? selectedIndex,
    EnumCkdQuery? enumCkdQuery,
    EnumValid? enumValid,
    String? error,
    List<CkdQueryItemModel>? listCkdQuery,
    List<bool>? listSelected,
  }) {
    return CkdQueryState(
      selectedIndex: selectedIndex ?? this.selectedIndex,
      enumCkdQuery: enumCkdQuery ?? this.enumCkdQuery,
      enumValid: enumValid ?? this.enumValid,
      error: error ?? this.error,
      listCkdQuery: listCkdQuery ?? this.listCkdQuery,
      listSelected: listSelected ?? this.listSelected,
    );
  }

  String toJson() => json.encode(toMap());
  factory CkdQueryState.fromJson(String source) => CkdQueryState.fromMap(
        json.decode(source) as Map<String, dynamic>,
      );

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is CkdQueryState &&
            (identical(
                  other.selectedIndex,
                  selectedIndex,
                ) ||
                other.selectedIndex == selectedIndex) &&
            (identical(
                  other.enumCkdQuery,
                  enumCkdQuery,
                ) ||
                other.enumCkdQuery == enumCkdQuery) &&
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
              other.listCkdQuery,
              listCkdQuery,
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
        enumCkdQuery,
        enumValid,
        error,
        const DeepCollectionEquality().hash(
          listCkdQuery,
        ),
        const DeepCollectionEquality().hash(
          listSelected,
        ),
      ]);

  @override
  String toString() {
    return 'CkdQueryState(selectedIndex: $selectedIndex, enumCkdQuery: $enumCkdQuery, enumValid: $enumValid, error: $error, listCkdQuery: $listCkdQuery, listSelected: $listSelected, )';
  }
}
