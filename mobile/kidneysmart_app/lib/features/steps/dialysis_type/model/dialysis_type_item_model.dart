// ignore_for_file: sort_constructors_first, avoid_bool_literals_in_conditional_expressions
import 'dart:convert';

import 'package:kidneysmart/features/steps/dialysis_type/dialysis_type.dart';
import 'package:meta/meta.dart';

@immutable
class DialysisTypeItemModel {
/* init: EnumDialysisType.none */
  final EnumDialysisType enumDialysisType;
/* init: '' */
  final String value;

// end

//          --TURN_GEN--
//             (data)
//  *************************************
//         GENERATED CODE
//  *************************************
  const DialysisTypeItemModel({
    this.enumDialysisType = EnumDialysisType.none,
    this.value = '',
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enumDialysisType': enumDialysisType.index,
      'value': value,
    };
  }

  factory DialysisTypeItemModel.fromMap(Map<dynamic, dynamic>? map) {
    if (map == null) return const DialysisTypeItemModel();

    return DialysisTypeItemModel(
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
      value: map['value'] as String? ?? '',
    );
  }

  DialysisTypeItemModel copyWith({
    EnumDialysisType? enumDialysisType,
    String? value,
  }) {
    return DialysisTypeItemModel(
      enumDialysisType: enumDialysisType ?? this.enumDialysisType,
      value: value ?? this.value,
    );
  }

  String toJson() => json.encode(toMap());
  factory DialysisTypeItemModel.fromJson(String source) =>
      DialysisTypeItemModel.fromMap(
        json.decode(source) as Map<String, dynamic>,
      );

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is DialysisTypeItemModel &&
            (identical(
                  other.enumDialysisType,
                  enumDialysisType,
                ) ||
                other.enumDialysisType == enumDialysisType) &&
            (identical(
                  other.value,
                  value,
                ) ||
                other.value == value));
  }

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        enumDialysisType,
        value,
      ]);

  @override
  String toString() {
    return 'DialysisTypeItemModel(enumDialysisType: $enumDialysisType, value: $value, )';
  }
}
