// ignore_for_file: avoid_bool_literals_in_conditional_expressions
// ignore_for_file: sort_constructors_first
import 'dart:convert';

import 'package:collection/collection.dart';
import 'package:kidneysmart/core/enum/enum.dart';
import 'package:kidneysmart/features/steps/weight_dry_query/weight_dry_query.dart';
import 'package:meta/meta.dart';

@immutable
class WeightDryQueryState {
  final int? selectedIndex;
  /* init: EnumWeightDryQuery.none */
  final EnumWeightDryQuery enumWeightDryQuery;
  /* init: EnumValid.init */
  final EnumValid enumValid;
  /* init: '' */
  final String error;
  /* init:const [] */
  final List<WeightDryQueryItemModel> listWeightDryQuery;

/* init: [] */
  final List<bool> listSelected;

  // end

//          --TURN_GEN--
//             (data)
//  *************************************
//         GENERATED CODE
//  *************************************
  const WeightDryQueryState({
    this.enumWeightDryQuery = EnumWeightDryQuery.none,
    this.enumValid = EnumValid.init,
    this.error = '',
    this.listWeightDryQuery = const [],
    this.listSelected = const [],
    this.selectedIndex,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'selectedIndex': selectedIndex,
      'enumWeightDryQuery': enumWeightDryQuery.index,
      'enumValid': enumValid.index,
      'error': error,
      'listWeightDryQuery': listWeightDryQuery.map((e) => e.toMap()).toList(),
      'listSelected': listSelected,
    };
  }

  factory WeightDryQueryState.fromMap(Map<dynamic, dynamic>? map) {
    if (map == null) return const WeightDryQueryState();

    return WeightDryQueryState(
      selectedIndex: (map['selectedIndex'] as num?)?.toInt(),
      enumWeightDryQuery: map['enumWeightDryQuery'] != null
          ? map['enumWeightDryQuery'] is int
              ? EnumWeightDryQuery.values[map['enumWeightDryQuery'] as int]
              : map['enumWeightDryQuery'] is String
                  // ignore: prefer-enums-by-name
                  ? EnumWeightDryQuery.values.firstWhere(
                      (e) =>
                          e.toString().split('EnumWeightDryQuery.')[1] ==
                          map['enumWeightDryQuery'].toString(),
                      orElse: () => EnumWeightDryQuery.none,
                    )
                  : EnumWeightDryQuery.none
          : EnumWeightDryQuery.none,
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
      listWeightDryQuery: map['listWeightDryQuery'] != null
          ? (map['listWeightDryQuery'] as List<dynamic>)
              .map(
                (e) => WeightDryQueryItemModel.fromMap(
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

  WeightDryQueryState copyWith({
    int? selectedIndex,
    EnumWeightDryQuery? enumWeightDryQuery,
    EnumValid? enumValid,
    String? error,
    List<WeightDryQueryItemModel>? listWeightDryQuery,
    List<bool>? listSelected,
  }) {
    return WeightDryQueryState(
      selectedIndex: selectedIndex ?? this.selectedIndex,
      enumWeightDryQuery: enumWeightDryQuery ?? this.enumWeightDryQuery,
      enumValid: enumValid ?? this.enumValid,
      error: error ?? this.error,
      listWeightDryQuery: listWeightDryQuery ?? this.listWeightDryQuery,
      listSelected: listSelected ?? this.listSelected,
    );
  }

  String toJson() => json.encode(toMap());
  factory WeightDryQueryState.fromJson(String source) =>
      WeightDryQueryState.fromMap(
        json.decode(source) as Map<String, dynamic>,
      );

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is WeightDryQueryState &&
            (identical(
                  other.selectedIndex,
                  selectedIndex,
                ) ||
                other.selectedIndex == selectedIndex) &&
            (identical(
                  other.enumWeightDryQuery,
                  enumWeightDryQuery,
                ) ||
                other.enumWeightDryQuery == enumWeightDryQuery) &&
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
              other.listWeightDryQuery,
              listWeightDryQuery,
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
        enumWeightDryQuery,
        enumValid,
        error,
        const DeepCollectionEquality().hash(
          listWeightDryQuery,
        ),
        const DeepCollectionEquality().hash(
          listSelected,
        ),
      ]);

  @override
  String toString() {
    return 'WeightDryQueryState(selectedIndex: $selectedIndex, enumWeightDryQuery: $enumWeightDryQuery, enumValid: $enumValid, error: $error, listWeightDryQuery: $listWeightDryQuery, listSelected: $listSelected, )';
  }
}
