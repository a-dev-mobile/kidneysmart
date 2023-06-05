// ignore_for_file: sort_constructors_first, avoid_bool_literals_in_conditional_expressions
import 'dart:convert';

import 'package:kidneysmart/features/steps/gender/gender.dart';
import 'package:meta/meta.dart';

@immutable
class GenderItemModel {
/* init: EnumGender.none */
  final EnumGender enumGender;
/* init: '' */
  final String value;

// end

//          --TURN_GEN--
//             (data)
//  *************************************
//         GENERATED CODE
//  *************************************
  const GenderItemModel({
    this.enumGender = EnumGender.none,
    this.value = '',
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enumGender': enumGender.index,
      'value': value,
    };
  }

  factory GenderItemModel.fromMap(Map<dynamic, dynamic>? map) {
    if (map == null) return const GenderItemModel();

    return GenderItemModel(
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
      value: map['value'] as String? ?? '',
    );
  }

  GenderItemModel copyWith({
    EnumGender? enumGender,
    String? value,
  }) {
    return GenderItemModel(
      enumGender: enumGender ?? this.enumGender,
      value: value ?? this.value,
    );
  }

  String toJson() => json.encode(toMap());
  factory GenderItemModel.fromJson(String source) => GenderItemModel.fromMap(
        json.decode(source) as Map<String, dynamic>,
      );

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is GenderItemModel &&
            (identical(
                  other.enumGender,
                  enumGender,
                ) ||
                other.enumGender == enumGender) &&
            (identical(
                  other.value,
                  value,
                ) ||
                other.value == value));
  }

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        enumGender,
        value,
      ]);

  @override
  String toString() {
    return 'GenderItemModel(enumGender: $enumGender, value: $value, )';
  }
}
