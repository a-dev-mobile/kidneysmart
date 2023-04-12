// ignore_for_file: avoid_bool_literals_in_conditional_expressions
// ignore_for_file: sort_constructors_first
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:nutrition/core/enum/enum.dart';

@immutable
class CalculateBmiModel {
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
//          v0.8.7 (data)
//  *************************************
//         GENERATED CODE
//  *************************************
  const CalculateBmiModel({
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

  factory CalculateBmiModel.fromMap(Map<dynamic, dynamic>? map) {
    if (map == null) return const CalculateBmiModel();

    return CalculateBmiModel(
      enumResult: map['enumResult'] != null
          ? EnumResult.values[map['enumResult'] as int]
          : EnumResult.init,
      markdownInit: map['markdownInit'] as String? ?? '',
      markdownSuccess: map['markdownSuccess'] as String? ?? '',
      markdownError: map['markdownError'] as String? ?? '',
    );
  }

  CalculateBmiModel copyWith({
    EnumResult? enumResult,
    String? markdownInit,
    String? markdownSuccess,
    String? markdownError,
  }) {
    return CalculateBmiModel(
      enumResult: enumResult ?? this.enumResult,
      markdownInit: markdownInit ?? this.markdownInit,
      markdownSuccess: markdownSuccess ?? this.markdownSuccess,
      markdownError: markdownError ?? this.markdownError,
    );
  }

  String toJson() => json.encode(toMap());
  factory CalculateBmiModel.fromJson(String source) =>
      CalculateBmiModel.fromMap(
        json.decode(source) as Map<String, dynamic>,
      );

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is CalculateBmiModel &&
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
    return 'CalculateBmiModel(enumResult: $enumResult, markdownInit: $markdownInit, markdownSuccess: $markdownSuccess, markdownError: $markdownError, )';
  }
}
