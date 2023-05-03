// ignore_for_file: sort_constructors_first, avoid_bool_literals_in_conditional_expressions
import 'dart:convert';

import 'package:meta/meta.dart';

import 'package:nutrition/features/steps/urine_select/urine_select.dart';

@immutable
class UrineItemModel {
/* init: EnumUrine.none */
  final EnumUrine enumUrine;
/* init: '' */
  final String value;

// end

//          --TURN_GEN--
//             (data)
//  *************************************
//         GENERATED CODE
//  *************************************
  const UrineItemModel({
    this.enumUrine = EnumUrine.none,
    this.value = '',
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enumUrine': enumUrine.index,
      'value': value,
    };
  }

  factory UrineItemModel.fromMap(Map<dynamic, dynamic>? map) {
    if (map == null) return const UrineItemModel();

    return UrineItemModel(
      enumUrine: map['enumUrine'] != null
          ? EnumUrine.values[map['enumUrine'] as int]
          : EnumUrine.none,
      value: map['value'] as String? ?? '',
    );
  }

  UrineItemModel copyWith({
    EnumUrine? enumUrine,
    String? value,
  }) {
    return UrineItemModel(
      enumUrine: enumUrine ?? this.enumUrine,
      value: value ?? this.value,
    );
  }

  String toJson() => json.encode(toMap());
  factory UrineItemModel.fromJson(String source) => UrineItemModel.fromMap(
        json.decode(source) as Map<String, dynamic>,
      );

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is UrineItemModel &&
            (identical(
                  other.enumUrine,
                  enumUrine,
                ) ||
                other.enumUrine == enumUrine) &&
            (identical(
                  other.value,
                  value,
                ) ||
                other.value == value));
  }

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        enumUrine,
        value,
      ]);

  @override
  String toString() {
    return 'UrineItemModel(enumUrine: $enumUrine, value: $value, )';
  }
}
