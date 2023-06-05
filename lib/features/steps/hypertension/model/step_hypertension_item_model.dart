// ignore_for_file: sort_constructors_first, avoid_bool_literals_in_conditional_expressions
import 'dart:convert';

import 'package:kidneysmart/features/steps/hypertension/hypertension.dart';
import 'package:meta/meta.dart';

@immutable
class HypertensionItemModel {
/* init: EnumHypertension.none */
  final EnumHypertension enumHypertension;
/* init: '' */
  final String value;

// end

//          --TURN_GEN--
//             (data)
//  *************************************
//         GENERATED CODE
//  *************************************
  const HypertensionItemModel({
    this.enumHypertension = EnumHypertension.none,
    this.value = '',
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enumHypertension': enumHypertension.index,
      'value': value,
    };
  }

  factory HypertensionItemModel.fromMap(Map<dynamic, dynamic>? map) {
    if (map == null) return const HypertensionItemModel();

    return HypertensionItemModel(
      enumHypertension: map['enumHypertension'] != null
          ? map['enumHypertension'] is int
              ? EnumHypertension.values[map['enumHypertension'] as int]
              : map['enumHypertension'] is String
                  // ignore: prefer-enums-by-name
                  ? EnumHypertension.values.firstWhere(
                      (e) =>
                          e.toString().split('EnumHypertension.')[1] ==
                          map['enumHypertension'].toString(),
                      orElse: () => EnumHypertension.none,
                    )
                  : EnumHypertension.none
          : EnumHypertension.none,
      value: map['value'] as String? ?? '',
    );
  }

  HypertensionItemModel copyWith({
    EnumHypertension? enumHypertension,
    String? value,
  }) {
    return HypertensionItemModel(
      enumHypertension: enumHypertension ?? this.enumHypertension,
      value: value ?? this.value,
    );
  }

  String toJson() => json.encode(toMap());
  factory HypertensionItemModel.fromJson(String source) =>
      HypertensionItemModel.fromMap(
        json.decode(source) as Map<String, dynamic>,
      );

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is HypertensionItemModel &&
            (identical(
                  other.enumHypertension,
                  enumHypertension,
                ) ||
                other.enumHypertension == enumHypertension) &&
            (identical(
                  other.value,
                  value,
                ) ||
                other.value == value));
  }

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        enumHypertension,
        value,
      ]);

  @override
  String toString() {
    return 'HypertensionItemModel(enumHypertension: $enumHypertension, value: $value, )';
  }
}
