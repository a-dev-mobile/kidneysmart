// ignore_for_file: avoid_bool_literals_in_conditional_expressions
// ignore_for_file: sort_constructors_first
import 'dart:convert';

import 'package:collection/collection.dart';
import 'package:kidneysmart/core/enum/enum.dart';
import 'package:kidneysmart/features/steps/dialysiis_query/dialysiis_query.dart';
import 'package:meta/meta.dart';

@immutable
class DialysisQueryState {
  final int? selectedIndex;
  /* init: EnumDialysisQuery.none */
  final EnumDialysisQuery enumDialysisQuery;
  /* init: EnumValid.init */
  final EnumValid enumValid;
  /* init: '' */
  final String error;
  /* init:const [] */
  final List<DialysisQueryItemModel> listDialysisQuery;

/* init: [] */
  final List<bool> listSelected;

  // end

//          --TURN_GEN--
//             (data)
//  *************************************
//         GENERATED CODE
//  *************************************
  const DialysisQueryState({
    this.enumDialysisQuery = EnumDialysisQuery.none,
    this.enumValid = EnumValid.init,
    this.error = '',
    this.listDialysisQuery = const [],
    this.listSelected = const [],
    this.selectedIndex,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'selectedIndex': selectedIndex,
      'enumDialysisQuery': enumDialysisQuery.index,
      'enumValid': enumValid.index,
      'error': error,
      'listDialysisQuery': listDialysisQuery.map((e) => e.toMap()).toList(),
      'listSelected': listSelected,
    };
  }

  factory DialysisQueryState.fromMap(Map<dynamic, dynamic>? map) {
    if (map == null) return const DialysisQueryState();

    return DialysisQueryState(
      selectedIndex: (map['selectedIndex'] as num?)?.toInt(),
      enumDialysisQuery: map['enumDialysisQuery'] != null
          ? map['enumDialysisQuery'] is int
              ? EnumDialysisQuery.values[map['enumDialysisQuery'] as int]
              : map['enumDialysisQuery'] is String
                  // ignore: prefer-enums-by-name
                  ? EnumDialysisQuery.values.firstWhere(
                      (e) =>
                          e.toString().split('EnumDialysisQuery.')[1] ==
                          map['enumDialysisQuery'].toString(),
                      orElse: () => EnumDialysisQuery.none,
                    )
                  : EnumDialysisQuery.none
          : EnumDialysisQuery.none,
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
      listDialysisQuery: map['listDialysisQuery'] != null
          ? (map['listDialysisQuery'] as List<dynamic>)
              .map(
                (e) => DialysisQueryItemModel.fromMap(
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

  DialysisQueryState copyWith({
    int? selectedIndex,
    EnumDialysisQuery? enumDialysisQuery,
    EnumValid? enumValid,
    String? error,
    List<DialysisQueryItemModel>? listDialysisQuery,
    List<bool>? listSelected,
  }) {
    return DialysisQueryState(
      selectedIndex: selectedIndex ?? this.selectedIndex,
      enumDialysisQuery: enumDialysisQuery ?? this.enumDialysisQuery,
      enumValid: enumValid ?? this.enumValid,
      error: error ?? this.error,
      listDialysisQuery: listDialysisQuery ?? this.listDialysisQuery,
      listSelected: listSelected ?? this.listSelected,
    );
  }

  String toJson() => json.encode(toMap());
  factory DialysisQueryState.fromJson(String source) =>
      DialysisQueryState.fromMap(
        json.decode(source) as Map<String, dynamic>,
      );

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is DialysisQueryState &&
            (identical(
                  other.selectedIndex,
                  selectedIndex,
                ) ||
                other.selectedIndex == selectedIndex) &&
            (identical(
                  other.enumDialysisQuery,
                  enumDialysisQuery,
                ) ||
                other.enumDialysisQuery == enumDialysisQuery) &&
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
              other.listDialysisQuery,
              listDialysisQuery,
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
        enumDialysisQuery,
        enumValid,
        error,
        const DeepCollectionEquality().hash(
          listDialysisQuery,
        ),
        const DeepCollectionEquality().hash(
          listSelected,
        ),
      ]);

  @override
  String toString() {
    return 'DialysisQueryState(selectedIndex: $selectedIndex, enumDialysisQuery: $enumDialysisQuery, enumValid: $enumValid, error: $error, listDialysisQuery: $listDialysisQuery, listSelected: $listSelected, )';
  }
}
