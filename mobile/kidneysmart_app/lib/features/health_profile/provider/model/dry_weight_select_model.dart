/* // ignore_for_file: avoid_bool_literals_in_conditional_expressions
// ignore_for_file: sort_constructors_first
import 'dart:convert';

import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import 'package:kidneysmart/core/enum/enum.dart';
import 'package:kidneysmart/features/health_profile/health_profile.dart';

@immutable
class DryWeightSelectModel {
/* init: '' */
  final String error;
  /* init: EnumValid.init */
  final EnumValid enumValid;
  /* init: EnumDryWeight.none */
  final EnumDryWeight enumDryWeight;

  final int? selectedIndex;

  /* init:const [] */
  final List<DryWeightItemModel> listDryWeight;

/* init: [] */
  final List<bool> listSelected;
  // end

//          --TURN_GEN--
//             (data)
//  *************************************
//         GENERATED CODE
//  *************************************
  const DryWeightSelectModel({
    this.error = '',
    this.enumValid = EnumValid.init,
    this.enumDryWeight = EnumDryWeight.none,
    this.listDryWeight = const [],
    this.listSelected = const [],
    this.selectedIndex,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'error': error,
      'enumValid': enumValid.index,
      'enumDryWeight': enumDryWeight.index,
      'selectedIndex': selectedIndex,
      'listDryWeight': listDryWeight.map((e) => e.toMap()).toList(),
      'listSelected': listSelected,
    };
  }

  factory DryWeightSelectModel.fromMap(Map<dynamic, dynamic>? map) {
    if (map == null) return const DryWeightSelectModel();

    return DryWeightSelectModel(
      error: map['error'] as String? ?? '',
      enumValid: map['enumValid'] != null
          ? EnumValid.values[map['enumValid'] as int]
          : EnumValid.init,
      enumDryWeight: map['enumDryWeight'] != null
          ? EnumDryWeight.values[map['enumDryWeight'] as int]
          : EnumDryWeight.none,
      selectedIndex: (map['selectedIndex'] as num?)?.toInt(),
      listDryWeight: map['listDryWeight'] != null
          ? (map['listDryWeight'] as List<dynamic>)
              .map(
                (e) => DryWeightItemModel.fromMap(e as Map<dynamic, dynamic>),
              )
              .toList()
          : const [],
      listSelected: (map['listSelected'] as List<dynamic>?)
              ?.map((e) => e as bool)
              .toList() ??
          const [],
    );
  }

  DryWeightSelectModel copyWith({
    String? error,
    EnumValid? enumValid,
    EnumDryWeight? enumDryWeight,
    int? selectedIndex,
    List<DryWeightItemModel>? listDryWeight,
    List<bool>? listSelected,
  }) {
    return DryWeightSelectModel(
      error: error ?? this.error,
      enumValid: enumValid ?? this.enumValid,
      enumDryWeight: enumDryWeight ?? this.enumDryWeight,
      selectedIndex: selectedIndex ?? this.selectedIndex,
      listDryWeight: listDryWeight ?? this.listDryWeight,
      listSelected: listSelected ?? this.listSelected,
    );
  }

  String toJson() => json.encode(toMap());
  factory DryWeightSelectModel.fromJson(String source) =>
      DryWeightSelectModel.fromMap(
        json.decode(source) as Map<String, dynamic>,
      );

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is DryWeightSelectModel &&
            (identical(
                  other.error,
                  error,
                ) ||
                other.error == error) &&
            (identical(
                  other.enumValid,
                  enumValid,
                ) ||
                other.enumValid == enumValid) &&
            (identical(
                  other.enumDryWeight,
                  enumDryWeight,
                ) ||
                other.enumDryWeight == enumDryWeight) &&
            (identical(
                  other.selectedIndex,
                  selectedIndex,
                ) ||
                other.selectedIndex == selectedIndex) &&
            const DeepCollectionEquality().equals(
              other.listDryWeight,
              listDryWeight,
            ) &&
            const DeepCollectionEquality().equals(
              other.listSelected,
              listSelected,
            ));
  }

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        error,
        enumValid,
        enumDryWeight,
        selectedIndex,
        const DeepCollectionEquality().hash(
          listDryWeight,
        ),
        const DeepCollectionEquality().hash(
          listSelected,
        ),
      ]);

  @override
  String toString() {
    return 'DryWeightSelectModel(error: $error, enumValid: $enumValid, enumDryWeight: $enumDryWeight, selectedIndex: $selectedIndex, listDryWeight: $listDryWeight, listSelected: $listSelected, )';
  }
}
 */
