// ignore_for_file: avoid_bool_literals_in_conditional_expressions
// ignore_for_file: sort_constructors_first
// ignore_for_file: non_constant_identifier_names

import 'dart:convert';

import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:kidneysmart/core/service/dadata/dadata.dart';

@immutable
class AddressTooltip {
  /* init: [] */
  final List<SuggestionsAddress> suggestions;

  // end

//          --TURN_GEN--
//             (data)
//  *************************************
//         GENERATED CODE
//  *************************************
  const AddressTooltip({
    this.suggestions = const [],
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'suggestions': suggestions.map((e) => e.toMap()).toList(),
    };
  }

  factory AddressTooltip.fromMap(Map<dynamic, dynamic>? map) {
    if (map == null) return const AddressTooltip();

    return AddressTooltip(
      suggestions: map['suggestions'] != null
          ? (map['suggestions'] as List<dynamic>)
              .map(
                (e) => SuggestionsAddress.fromMap(
                  e as Map<dynamic, dynamic>,
                ),
              )
              .toList()
          : const [],
    );
  }

  AddressTooltip copyWith({
    List<SuggestionsAddress>? suggestions,
  }) {
    return AddressTooltip(
      suggestions: suggestions ?? this.suggestions,
    );
  }

  String toJson() => json.encode(toMap());
  factory AddressTooltip.fromJson(String source) => AddressTooltip.fromMap(
        json.decode(source) as Map<String, dynamic>,
      );

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AddressTooltip &&
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
    return 'AddressTooltip(suggestions: $suggestions, )';
  }
}
