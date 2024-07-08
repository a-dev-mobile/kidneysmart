// ignore_for_file: avoid_bool_literals_in_conditional_expressions
// ignore_for_file: sort_constructors_first
import 'dart:convert';

import 'package:collection/collection.dart';
import 'package:kidneysmart/core/enum/enum.dart';
import 'package:kidneysmart/features/steps/dialysis_type/dialysis_type.dart';
import 'package:meta/meta.dart';

@immutable
class DialysisTypeState {
  final int? selectedIndex;
  /* init: EnumDialysisType.none */
  final EnumDialysisType enumDialysisType;
  /* init: EnumValid.init */
  final EnumValid enumValid;
  /* init: '' */
  final String error;
  /* init:const [] */
  final List<DialysisTypeItemModel> listDialysisType;

/* init: [] */
  final List<bool> listSelected;

// end

//          --TURN_GEN--
//             (data)
//  *************************************
//         GENERATED CODE
//  *************************************
  const DialysisTypeState({
    this.enumDialysisType = EnumDialysisType.none,
    this.enumValid = EnumValid.init,
    this.error = '',
    this.listDialysisType = const [],
    this.listSelected = const [],
    this.selectedIndex,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'selectedIndex': selectedIndex,
      'enumDialysisType': enumDialysisType.index,
      'enumValid': enumValid.index,
      'error': error,
      'listDialysisType': listDialysisType.map((e) => e.toMap()).toList(),
      'listSelected': listSelected,
    };
  }

  factory DialysisTypeState.fromMap(Map<dynamic, dynamic>? map) {
    if (map == null) return const DialysisTypeState();

    return DialysisTypeState(
      selectedIndex: (map['selectedIndex'] as num?)?.toInt(),
      enumDialysisType: map['enumDialysisType'] != null
          ? map['enumDialysisType'] is int
              ? EnumDialysisType.values[map['enumDialysisType'] as int]
              : map['enumDialysisType'] is String
                  // ignore: prefer-enums-by-name
                  ? EnumDialysisType.values.firstWhere(
                      (e) =>
                          e.toString().split('EnumDialysisType.')[1] ==
                          map['enumDialysisType'].toString(),
                      orElse: () => EnumDialysisType.none,
                    )
                  : EnumDialysisType.none
          : EnumDialysisType.none,
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
      listDialysisType: map['listDialysisType'] != null
          ? (map['listDialysisType'] as List<dynamic>)
              .map(
                (e) => DialysisTypeItemModel.fromMap(
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

  DialysisTypeState copyWith({
    int? selectedIndex,
    EnumDialysisType? enumDialysisType,
    EnumValid? enumValid,
    String? error,
    List<DialysisTypeItemModel>? listDialysisType,
    List<bool>? listSelected,
  }) {
    return DialysisTypeState(
      selectedIndex: selectedIndex ?? this.selectedIndex,
      enumDialysisType: enumDialysisType ?? this.enumDialysisType,
      enumValid: enumValid ?? this.enumValid,
      error: error ?? this.error,
      listDialysisType: listDialysisType ?? this.listDialysisType,
      listSelected: listSelected ?? this.listSelected,
    );
  }

  String toJson() => json.encode(toMap());
  factory DialysisTypeState.fromJson(String source) =>
      DialysisTypeState.fromMap(
        json.decode(source) as Map<String, dynamic>,
      );

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is DialysisTypeState &&
            (identical(
                  other.selectedIndex,
                  selectedIndex,
                ) ||
                other.selectedIndex == selectedIndex) &&
            (identical(
                  other.enumDialysisType,
                  enumDialysisType,
                ) ||
                other.enumDialysisType == enumDialysisType) &&
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
              other.listDialysisType,
              listDialysisType,
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
        enumDialysisType,
        enumValid,
        error,
        const DeepCollectionEquality().hash(
          listDialysisType,
        ),
        const DeepCollectionEquality().hash(
          listSelected,
        ),
      ]);

  @override
  String toString() {
    return 'DialysisTypeState(selectedIndex: $selectedIndex, enumDialysisType: $enumDialysisType, enumValid: $enumValid, error: $error, listDialysisType: $listDialysisType, listSelected: $listSelected, )';
  }
}
