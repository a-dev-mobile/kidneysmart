// ignore_for_file: avoid_bool_literals_in_conditional_expressions
// ignore_for_file: sort_constructors_first
// ignore_for_file: non_constant_identifier_names

import 'dart:convert';

import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:kidneysmart/core/service/dadata/dadata.dart';

@immutable
class FioTooltip {
  /* init: [] */
  final List<SuggestionsFio> suggestions;

  // end

//          --TURN_GEN--
//             (data)
//  *************************************
//         GENERATED CODE
//  *************************************
  const FioTooltip({
    this.suggestions = const [],
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'suggestions': suggestions.map((e) => e.toMap()).toList(),
    };
  }

  factory FioTooltip.fromMap(Map<dynamic, dynamic>? map) {
    if (map == null) return const FioTooltip();

    return FioTooltip(
      suggestions: map['suggestions'] != null
          ? (map['suggestions'] as List<dynamic>)
              .map(
                (e) => SuggestionsFio.fromMap(
                  e as Map<dynamic, dynamic>,
                ),
              )
              .toList()
          : const [],
    );
  }

  FioTooltip copyWith({
    List<SuggestionsFio>? suggestions,
  }) {
    return FioTooltip(
      suggestions: suggestions ?? this.suggestions,
    );
  }

  String toJson() => json.encode(toMap());
  factory FioTooltip.fromJson(String source) => FioTooltip.fromMap(
        json.decode(source) as Map<String, dynamic>,
      );

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is FioTooltip &&
            const DeepCollectionEquality().equals(
              other.suggestions,
              suggestions,
            ));
  }

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(
          suggestions,
        ),
      ]);

  @override
  String toString() {
    return 'FioTooltip(suggestions: $suggestions, )';
  }
}
