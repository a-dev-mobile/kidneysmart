// ignore_for_file: sort_constructors_first, avoid_bool_literals_in_conditional_expressions
import 'dart:convert';

import 'package:kidneysmart/features/steps/ckd_query/ckd_query.dart';
import 'package:meta/meta.dart';

@immutable
class CkdQueryItemModel {
/* init: EnumCkdQuery.none */
  final EnumCkdQuery enumCkdQuery;
/* init: '' */
  final String value;

// end

//          --TURN_GEN--
//             (data)
//  *************************************
//         GENERATED CODE
//  *************************************
  const CkdQueryItemModel({
    this.enumCkdQuery = EnumCkdQuery.none,
    this.value = '',
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enumCkdQuery': enumCkdQuery.index,
      'value': value,
    };
  }

  factory CkdQueryItemModel.fromMap(Map<dynamic, dynamic>? map) {
    if (map == null) return const CkdQueryItemModel();

    return CkdQueryItemModel(
      enumCkdQuery: map['enumCkdQuery'] != null
          ? map['enumCkdQuery'] is int
              ? EnumCkdQuery.values[map['enumCkdQuery'] as int]
              : map['enumCkdQuery'] is String
                  // ignore: prefer-enums-by-name
                  ? EnumCkdQuery.values.firstWhere(
                      (e) =>
                          e.toString().split('EnumCkdQuery.')[1] ==
                          map['enumCkdQuery'].toString(),
                      orElse: () => EnumCkdQuery.none,
                    )
                  : EnumCkdQuery.none
          : EnumCkdQuery.none,
      value: map['value'] as String? ?? '',
    );
  }

  CkdQueryItemModel copyWith({
    EnumCkdQuery? enumCkdQuery,
    String? value,
  }) {
    return CkdQueryItemModel(
      enumCkdQuery: enumCkdQuery ?? this.enumCkdQuery,
      value: value ?? this.value,
    );
  }

  String toJson() => json.encode(toMap());
  factory CkdQueryItemModel.fromJson(String source) =>
      CkdQueryItemModel.fromMap(
        json.decode(source) as Map<String, dynamic>,
      );

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is CkdQueryItemModel &&
            (identical(
                  other.enumCkdQuery,
                  enumCkdQuery,
                ) ||
                other.enumCkdQuery == enumCkdQuery) &&
            (identical(
                  other.value,
                  value,
                ) ||
                other.value == value));
  }

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        enumCkdQuery,
        value,
      ]);

  @override
  String toString() {
    return 'CkdQueryItemModel(enumCkdQuery: $enumCkdQuery, value: $value, )';
  }
}
