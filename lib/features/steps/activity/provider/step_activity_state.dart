// ignore_for_file: avoid_bool_literals_in_conditional_expressions
// ignore_for_file: sort_constructors_first
import 'dart:convert';

import 'package:collection/collection.dart';
import 'package:kidneysmart/core/enum/enum.dart';
import 'package:kidneysmart/features/steps/activity/activity.dart';
import 'package:meta/meta.dart';

@immutable
class StepActivityState {
  final int? selectedIndex;
  /* init: EnumActivity.none */
  final EnumActivity enumActivity;
  /* init: EnumValid.init */
  final EnumValid enumValid;
  /* init: '' */
  final String error;
  /* init:const [] */
  final List<StepActivityItemModel> listActivity;

/* init: [] */
  final List<bool> listSelected;

  // end

//          --TURN_GEN--
//             (data)
//  *************************************
//         GENERATED CODE
//  *************************************
  const StepActivityState({
    this.enumActivity = EnumActivity.none,
    this.enumValid = EnumValid.init,
    this.error = '',
    this.listActivity = const [],
    this.listSelected = const [],
    this.selectedIndex,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'selectedIndex': selectedIndex,
      'enumActivity': enumActivity.index,
      'enumValid': enumValid.index,
      'error': error,
      'listActivity': listActivity.map((e) => e.toMap()).toList(),
      'listSelected': listSelected,
    };
  }

  factory StepActivityState.fromMap(Map<dynamic, dynamic>? map) {
    if (map == null) return const StepActivityState();

    return StepActivityState(
      selectedIndex: (map['selectedIndex'] as num?)?.toInt(),
      enumActivity: map['enumActivity'] != null
          ? map['enumActivity'] is int
              ? EnumActivity.values[map['enumActivity'] as int]
              : map['enumActivity'] is String
                  // ignore: prefer-enums-by-name
                  ? EnumActivity.values.firstWhere(
                      (e) =>
                          e.toString().split('EnumActivity.')[1] ==
                          map['enumActivity'].toString(),
                      orElse: () => EnumActivity.none,
                    )
                  : EnumActivity.none
          : EnumActivity.none,
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
      listActivity: map['listActivity'] != null
          ? (map['listActivity'] as List<dynamic>)
              .map(
                (e) => StepActivityItemModel.fromMap(
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

  StepActivityState copyWith({
    int? selectedIndex,
    EnumActivity? enumActivity,
    EnumValid? enumValid,
    String? error,
    List<StepActivityItemModel>? listActivity,
    List<bool>? listSelected,
  }) {
    return StepActivityState(
      selectedIndex: selectedIndex ?? this.selectedIndex,
      enumActivity: enumActivity ?? this.enumActivity,
      enumValid: enumValid ?? this.enumValid,
      error: error ?? this.error,
      listActivity: listActivity ?? this.listActivity,
      listSelected: listSelected ?? this.listSelected,
    );
  }

  String toJson() => json.encode(toMap());
  factory StepActivityState.fromJson(String source) =>
      StepActivityState.fromMap(
        json.decode(source) as Map<String, dynamic>,
      );

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is StepActivityState &&
            (identical(
                  other.selectedIndex,
                  selectedIndex,
                ) ||
                other.selectedIndex == selectedIndex) &&
            (identical(
                  other.enumActivity,
                  enumActivity,
                ) ||
                other.enumActivity == enumActivity) &&
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
              other.listActivity,
              listActivity,
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
        enumActivity,
        enumValid,
        error,
        const DeepCollectionEquality().hash(
          listActivity,
        ),
        const DeepCollectionEquality().hash(
          listSelected,
        ),
      ]);

  @override
  String toString() {
    return 'StepActivityState(selectedIndex: $selectedIndex, enumActivity: $enumActivity, enumValid: $enumValid, error: $error, listActivity: $listActivity, listSelected: $listSelected, )';
  }
}
