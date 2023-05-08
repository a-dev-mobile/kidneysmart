// ignore_for_file: sort_constructors_first, avoid_bool_literals_in_conditional_expressions
import 'dart:convert';

import 'package:meta/meta.dart';
import 'package:nutrition/features/steps/weight_dry_query/weight_dry_query.dart';

@immutable
class WeightDryQueryItemModel {
/* init: EnumWeightDryQuery.none */
  final EnumWeightDryQuery enumWeightDryQuery;
/* init: '' */
  final String value;

// end

//          --TURN_GEN--
//             (data)
//  *************************************
//         GENERATED CODE
//  *************************************
  const WeightDryQueryItemModel({
    this.enumWeightDryQuery = EnumWeightDryQuery.none,
    this.value = '',
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enumWeightDryQuery': enumWeightDryQuery.index,
      'value': value,
    };
  }

  factory WeightDryQueryItemModel.fromMap(Map<dynamic, dynamic>? map) {
    if (map == null) return const WeightDryQueryItemModel();

    return WeightDryQueryItemModel(
      enumWeightDryQuery: map['enumWeightDryQuery'] != null
          ? EnumWeightDryQuery.values[map['enumWeightDryQuery'] as int]
          : EnumWeightDryQuery.none,
      value: map['value'] as String? ?? '',
    );
  }

  WeightDryQueryItemModel copyWith({
    EnumWeightDryQuery? enumWeightDryQuery,
    String? value,
  }) {
    return WeightDryQueryItemModel(
      enumWeightDryQuery: enumWeightDryQuery ?? this.enumWeightDryQuery,
      value: value ?? this.value,
    );
  }

  String toJson() => json.encode(toMap());
  factory WeightDryQueryItemModel.fromJson(String source) =>
      WeightDryQueryItemModel.fromMap(
        json.decode(source) as Map<String, dynamic>,
      );

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is WeightDryQueryItemModel &&
            (identical(
                  other.enumWeightDryQuery,
                  enumWeightDryQuery,
                ) ||
                other.enumWeightDryQuery == enumWeightDryQuery) &&
            (identical(
                  other.value,
                  value,
                ) ||
                other.value == value));
  }

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        enumWeightDryQuery,
        value,
      ]);

  @override
  String toString() {
    return 'WeightDryQueryItemModel(enumWeightDryQuery: $enumWeightDryQuery, value: $value, )';
  }
}
