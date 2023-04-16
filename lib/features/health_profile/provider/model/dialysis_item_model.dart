// ignore_for_file: sort_constructors_first, avoid_bool_literals_in_conditional_expressions
import 'dart:convert';

import 'package:meta/meta.dart';
import 'package:nutrition/features/health_profile/health_profile.dart';

@immutable
class DialysisItemModel {
/* init: EnumDialysis.none */
  final EnumDialysis enumDialysis;
/* init: '' */
  final String value;

// end

//          --TURN_GEN--
//             (data)
//  *************************************
//         GENERATED CODE
//  *************************************
  const DialysisItemModel({
    this.enumDialysis = EnumDialysis.none,
    this.value = '',
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enumDialysis': enumDialysis.index,
      'value': value,
    };
  }

  factory DialysisItemModel.fromMap(Map<dynamic, dynamic>? map) {
    if (map == null) return const DialysisItemModel();

    return DialysisItemModel(
      enumDialysis: map['enumDialysis'] != null
          ? EnumDialysis.values[map['enumDialysis'] as int]
          : EnumDialysis.none,
      value: map['value'] as String? ?? '',
    );
  }

  DialysisItemModel copyWith({
    EnumDialysis? enumDialysis,
    String? value,
  }) {
    return DialysisItemModel(
      enumDialysis: enumDialysis ?? this.enumDialysis,
      value: value ?? this.value,
    );
  }

  String toJson() => json.encode(toMap());
  factory DialysisItemModel.fromJson(String source) =>
      DialysisItemModel.fromMap(
        json.decode(source) as Map<String, dynamic>,
      );

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is DialysisItemModel &&
            (identical(
                  other.enumDialysis,
                  enumDialysis,
                ) ||
                other.enumDialysis == enumDialysis) &&
            (identical(
                  other.value,
                  value,
                ) ||
                other.value == value));
  }

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        enumDialysis,
        value,
      ]);

  @override
  String toString() {
    return 'DialysisItemModel(enumDialysis: $enumDialysis, value: $value, )';
  }
}
