/* // ignore_for_file: sort_constructors_first, avoid_bool_literals_in_conditional_expressions
import 'dart:convert';

import 'package:meta/meta.dart';
import 'package:kidneysmart/features/health_profile/health_profile.dart';

@immutable
class DryWeightItemModel {
/* init: EnumDryWeight.none */
  final EnumDryWeight enumDryWeight;
/* init: '' */
  final String value;

// end

//          --TURN_GEN--
//             (data)
//  *************************************
//         GENERATED CODE
//  *************************************
  const DryWeightItemModel({
    this.enumDryWeight = EnumDryWeight.none,
    this.value = '',
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enumDryWeight': enumDryWeight.index,
      'value': value,
    };
  }

  factory DryWeightItemModel.fromMap(Map<dynamic, dynamic>? map) {
    if (map == null) return const DryWeightItemModel();

    return DryWeightItemModel(
      enumDryWeight: map['enumDryWeight'] != null
          ? EnumDryWeight.values[map['enumDryWeight'] as int]
          : EnumDryWeight.none,
      value: map['value'] as String? ?? '',
    );
  }

  DryWeightItemModel copyWith({
    EnumDryWeight? enumDryWeight,
    String? value,
  }) {
    return DryWeightItemModel(
      enumDryWeight: enumDryWeight ?? this.enumDryWeight,
      value: value ?? this.value,
    );
  }

  String toJson() => json.encode(toMap());
  factory DryWeightItemModel.fromJson(String source) =>
      DryWeightItemModel.fromMap(
        json.decode(source) as Map<String, dynamic>,
      );

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is DryWeightItemModel &&
            (identical(
                  other.enumDryWeight,
                  enumDryWeight,
                ) ||
                other.enumDryWeight == enumDryWeight) &&
            (identical(
                  other.value,
                  value,
                ) ||
                other.value == value));
  }

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        enumDryWeight,
        value,
      ]);

  @override
  String toString() {
    return 'DryWeightItemModel(enumDryWeight: $enumDryWeight, value: $value, )';
  }
}
 */
