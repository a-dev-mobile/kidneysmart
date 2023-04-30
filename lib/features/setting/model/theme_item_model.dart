// ignore_for_file: sort_constructors_first, avoid_bool_literals_in_conditional_expressions
import 'dart:convert';

import 'package:meta/meta.dart';
import 'package:nutrition/features/setting/setting.dart';

@immutable
class ThemeItemModel {
  final EnumTheme enumTheme;
/* init: '' */
  final String value;

// end

//          --TURN_GEN--
//             (data)
//  *************************************
//         GENERATED CODE
//  *************************************
  const ThemeItemModel({
    required this.enumTheme,
    this.value = '',
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enumTheme': enumTheme.index,
      'value': value,
    };
  }

  factory ThemeItemModel.fromMap(Map<dynamic, dynamic> map) {
    return ThemeItemModel(
      enumTheme: map['enumTheme'] != null
          ? EnumTheme.values[map['enumTheme'] as int]
          : throw Exception(
              "map['enumTheme']_type_'Null'",
            ),
      value: map['value'] as String? ?? '',
    );
  }

  ThemeItemModel copyWith({
    EnumTheme? enumTheme,
    String? value,
  }) {
    return ThemeItemModel(
      enumTheme: enumTheme ?? this.enumTheme,
      value: value ?? this.value,
    );
  }

  String toJson() => json.encode(toMap());
  factory ThemeItemModel.fromJson(String source) => ThemeItemModel.fromMap(
        json.decode(source) as Map<String, dynamic>,
      );

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ThemeItemModel &&
            (identical(
                  other.enumTheme,
                  enumTheme,
                ) ||
                other.enumTheme == enumTheme) &&
            (identical(
                  other.value,
                  value,
                ) ||
                other.value == value));
  }

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        enumTheme,
        value,
      ]);

  @override
  String toString() {
    return 'ThemeItemModel(enumTheme: $enumTheme, value: $value, )';
  }
}
