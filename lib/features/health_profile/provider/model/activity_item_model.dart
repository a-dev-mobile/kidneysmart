// ignore_for_file: sort_constructors_first, avoid_bool_literals_in_conditional_expressions
import 'dart:convert';

import 'package:meta/meta.dart';
import 'package:nutrition/features/health_profile/health_profile.dart';

@immutable
class ActivityItemModel {
/* init: EnumActivity.none */
  final EnumActivity enumActivity;
/* init: '' */
  final String value;

// end

//          --TURN_GEN--
//          v0.8.7 (data)
//  *************************************
//         GENERATED CODE
//  *************************************
  const ActivityItemModel({
    this.enumActivity = EnumActivity.none,
    this.value = '',
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enumActivity': enumActivity.index,
      'value': value,
    };
  }

  factory ActivityItemModel.fromMap(Map<dynamic, dynamic>? map) {
    if (map == null) return const ActivityItemModel();

    return ActivityItemModel(
      enumActivity: map['enumActivity'] != null
          ? EnumActivity.values[map['enumActivity'] as int]
          : EnumActivity.none,
      value: map['value'] as String? ?? '',
    );
  }

  ActivityItemModel copyWith({
    EnumActivity? enumActivity,
    String? value,
  }) {
    return ActivityItemModel(
      enumActivity: enumActivity ?? this.enumActivity,
      value: value ?? this.value,
    );
  }

  String toJson() => json.encode(toMap());
  factory ActivityItemModel.fromJson(String source) =>
      ActivityItemModel.fromMap(
        json.decode(source) as Map<String, dynamic>,
      );

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ActivityItemModel &&
            (identical(
                  other.enumActivity,
                  enumActivity,
                ) ||
                other.enumActivity == enumActivity) &&
            (identical(
                  other.value,
                  value,
                ) ||
                other.value == value));
  }

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        enumActivity,
        value,
      ]);

  @override
  String toString() {
    return 'ActivityItemModel(enumActivity: $enumActivity, value: $value, )';
  }
}
