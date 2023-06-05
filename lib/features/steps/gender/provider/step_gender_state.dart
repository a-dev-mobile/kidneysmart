// ignore_for_file: avoid_bool_literals_in_conditional_expressions
// ignore_for_file: sort_constructors_first
import 'dart:convert';

import 'package:collection/collection.dart';
import 'package:kidneysmart/core/enum/enum.dart';
import 'package:kidneysmart/features/steps/gender/gender.dart';
import 'package:meta/meta.dart';

@immutable
class StepGenderState {
  final int? selectedIndex;
  /* init: EnumGender.none */
  final EnumGender enumGender;
  /* init: EnumValid.init */
  final EnumValid enumValid;
  /* init: '' */
  final String error;
  /* init:const [] */
  final List<GenderItemModel> listGender;
  /* init: false */
  final bool isDefinedGenderInStepName;
  /* init: [] */
  final List<bool> listSelected;
  /* init: '' */
  final String name;
  // end

//          --TURN_GEN--
//             (data)
//  *************************************
//         GENERATED CODE
//  *************************************
  const StepGenderState({
    this.enumGender = EnumGender.none,
    this.enumValid = EnumValid.init,
    this.error = '',
    this.listGender = const [],
    this.isDefinedGenderInStepName = false,
    this.listSelected = const [],
    this.name = '',
    this.selectedIndex,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'selectedIndex': selectedIndex,
      'enumGender': enumGender.index,
      'enumValid': enumValid.index,
      'error': error,
      'listGender': listGender.map((e) => e.toMap()).toList(),
      'isDefinedGenderInStepName': isDefinedGenderInStepName,
      'listSelected': listSelected,
      'name': name,
    };
  }

  factory StepGenderState.fromMap(Map<dynamic, dynamic>? map) {
    if (map == null) return const StepGenderState();

    return StepGenderState(
      selectedIndex: (map['selectedIndex'] as num?)?.toInt(),
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
      listGender: map['listGender'] != null
          ? (map['listGender'] as List<dynamic>)
              .map(
                (e) => GenderItemModel.fromMap(
                  e as Map<dynamic, dynamic>,
                ),
              )
              .toList()
          : const [],
      isDefinedGenderInStepName:
          map['isDefinedGenderInStepName'] as bool? ?? false,
      listSelected: (map['listSelected'] as List<dynamic>?)
              ?.map((e) => e as bool)
              .toList() ??
          const [],
      name: map['name'] as String? ?? '',
    );
  }

  StepGenderState copyWith({
    int? selectedIndex,
    EnumGender? enumGender,
    EnumValid? enumValid,
    String? error,
    List<GenderItemModel>? listGender,
    bool? isDefinedGenderInStepName,
    List<bool>? listSelected,
    String? name,
  }) {
    return StepGenderState(
      selectedIndex: selectedIndex ?? this.selectedIndex,
      enumGender: enumGender ?? this.enumGender,
      enumValid: enumValid ?? this.enumValid,
      error: error ?? this.error,
      listGender: listGender ?? this.listGender,
      isDefinedGenderInStepName:
          isDefinedGenderInStepName ?? this.isDefinedGenderInStepName,
      listSelected: listSelected ?? this.listSelected,
      name: name ?? this.name,
    );
  }

  String toJson() => json.encode(toMap());
  factory StepGenderState.fromJson(String source) => StepGenderState.fromMap(
        json.decode(source) as Map<String, dynamic>,
      );

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is StepGenderState &&
            (identical(
                  other.selectedIndex,
                  selectedIndex,
                ) ||
                other.selectedIndex == selectedIndex) &&
            (identical(
                  other.enumGender,
                  enumGender,
                ) ||
                other.enumGender == enumGender) &&
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
              other.listGender,
              listGender,
            ) &&
            (identical(
                  other.isDefinedGenderInStepName,
                  isDefinedGenderInStepName,
                ) ||
                other.isDefinedGenderInStepName == isDefinedGenderInStepName) &&
            const DeepCollectionEquality().equals(
              other.listSelected,
              listSelected,
            ) &&
            (identical(
                  other.name,
                  name,
                ) ||
                other.name == name));
  }

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        selectedIndex,
        enumGender,
        enumValid,
        error,
        const DeepCollectionEquality().hash(
          listGender,
        ),
        isDefinedGenderInStepName,
        const DeepCollectionEquality().hash(
          listSelected,
        ),
        name,
      ]);

  @override
  String toString() {
    return 'StepGenderState(selectedIndex: $selectedIndex, enumGender: $enumGender, enumValid: $enumValid, error: $error, listGender: $listGender, isDefinedGenderInStepName: $isDefinedGenderInStepName, listSelected: $listSelected, name: $name, )';
  }
}
