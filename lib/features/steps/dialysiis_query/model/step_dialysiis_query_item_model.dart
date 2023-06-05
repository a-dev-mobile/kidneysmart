// ignore_for_file: sort_constructors_first, avoid_bool_literals_in_conditional_expressions
import 'dart:convert';

import 'package:kidneysmart/features/steps/dialysiis_query/dialysiis_query.dart';
import 'package:meta/meta.dart';

@immutable
class DialysisQueryItemModel {
/* init: EnumDialysisQuery.none */
  final EnumDialysisQuery enumDialysisQuery;
/* init: '' */
  final String value;

// end

//          --TURN_GEN--
//             (data)
//  *************************************
//         GENERATED CODE
//  *************************************
  const DialysisQueryItemModel({
    this.enumDialysisQuery = EnumDialysisQuery.none,
    this.value = '',
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enumDialysisQuery': enumDialysisQuery.index,
      'value': value,
    };
  }

  factory DialysisQueryItemModel.fromMap(Map<dynamic, dynamic>? map) {
    if (map == null) return const DialysisQueryItemModel();

    return DialysisQueryItemModel(
      enumDialysisQuery: map['enumDialysisQuery'] != null
          ? map['enumDialysisQuery'] is int
              ? EnumDialysisQuery.values[map['enumDialysisQuery'] as int]
              : map['enumDialysisQuery'] is String
                  // ignore: prefer-enums-by-name
                  ? EnumDialysisQuery.values.firstWhere(
                      (e) =>
                          e.toString().split('EnumDialysisQuery.')[1] ==
                          map['enumDialysisQuery'].toString(),
                      orElse: () => EnumDialysisQuery.none,
                    )
                  : EnumDialysisQuery.none
          : EnumDialysisQuery.none,
      value: map['value'] as String? ?? '',
    );
  }

  DialysisQueryItemModel copyWith({
    EnumDialysisQuery? enumDialysisQuery,
    String? value,
  }) {
    return DialysisQueryItemModel(
      enumDialysisQuery: enumDialysisQuery ?? this.enumDialysisQuery,
      value: value ?? this.value,
    );
  }

  String toJson() => json.encode(toMap());
  factory DialysisQueryItemModel.fromJson(String source) =>
      DialysisQueryItemModel.fromMap(
        json.decode(source) as Map<String, dynamic>,
      );

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is DialysisQueryItemModel &&
            (identical(
                  other.enumDialysisQuery,
                  enumDialysisQuery,
                ) ||
                other.enumDialysisQuery == enumDialysisQuery) &&
            (identical(
                  other.value,
                  value,
                ) ||
                other.value == value));
  }

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        enumDialysisQuery,
        value,
      ]);

  @override
  String toString() {
    return 'DialysisQueryItemModel(enumDialysisQuery: $enumDialysisQuery, value: $value, )';
  }
}
