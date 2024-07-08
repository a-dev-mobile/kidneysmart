// ignore_for_file: avoid_bool_literals_in_conditional_expressions
// ignore_for_file: sort_constructors_first
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:kidneysmart/core/enum/enum.dart';

@immutable

///калькулятор клубочковой фильтрации
class CalculateGfrModel {
  /* init:EnumResult.init */
  final EnumResult enumResult;

  /* init:'' */
  final String markdownInit;
  /* init:'' */
  final String markdownSuccess;
  /* init:'' */
  final String markdownError;
// end

//          --TURN_GEN--
//             (data)
//  *************************************
//         GENERATED CODE
//  *************************************
  const CalculateGfrModel({
    this.enumResult = EnumResult.init,
    this.markdownInit = '',
    this.markdownSuccess = '',
    this.markdownError = '',
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enumResult': enumResult.index,
      'markdownInit': markdownInit,
      'markdownSuccess': markdownSuccess,
      'markdownError': markdownError,
    };
  }

  factory CalculateGfrModel.fromMap(Map<dynamic, dynamic>? map) {
    if (map == null) return const CalculateGfrModel();

    return CalculateGfrModel(
      enumResult: map['enumResult'] != null
          ? map['enumResult'] is int
              ? EnumResult.values[map['enumResult'] as int]
              : map['enumResult'] is String
                  // ignore: prefer-enums-by-name
                  ? EnumResult.values.firstWhere(
                      (e) =>
                          e.toString().split('EnumResult.')[1] ==
                          map['enumResult'].toString(),
                      orElse: () => EnumResult.init,
                    )
                  : EnumResult.init
          : EnumResult.init,
      markdownInit: map['markdownInit'] as String? ?? '',
      markdownSuccess: map['markdownSuccess'] as String? ?? '',
      markdownError: map['markdownError'] as String? ?? '',
    );
  }

  CalculateGfrModel copyWith({
    EnumResult? enumResult,
    String? markdownInit,
    String? markdownSuccess,
    String? markdownError,
  }) {
    return CalculateGfrModel(
      enumResult: enumResult ?? this.enumResult,
      markdownInit: markdownInit ?? this.markdownInit,
      markdownSuccess: markdownSuccess ?? this.markdownSuccess,
      markdownError: markdownError ?? this.markdownError,
    );
  }

  String toJson() => json.encode(toMap());
  factory CalculateGfrModel.fromJson(String source) =>
      CalculateGfrModel.fromMap(
        json.decode(source) as Map<String, dynamic>,
      );

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is CalculateGfrModel &&
            (identical(
                  other.enumResult,
                  enumResult,
                ) ||
                other.enumResult == enumResult) &&
            (identical(
                  other.markdownInit,
                  markdownInit,
                ) ||
                other.markdownInit == markdownInit) &&
            (identical(
                  other.markdownSuccess,
                  markdownSuccess,
                ) ||
                other.markdownSuccess == markdownSuccess) &&
            (identical(
                  other.markdownError,
                  markdownError,
                ) ||
                other.markdownError == markdownError));
  }

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        enumResult,
        markdownInit,
        markdownSuccess,
        markdownError,
      ]);

  @override
  String toString() {
    return 'CalculateGfrModel(enumResult: $enumResult, markdownInit: $markdownInit, markdownSuccess: $markdownSuccess, markdownError: $markdownError, )';
  }
}
