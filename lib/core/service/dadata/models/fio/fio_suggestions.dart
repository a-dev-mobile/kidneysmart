// ignore_for_file: avoid_bool_literals_in_conditional_expressions
// ignore_for_file: sort_constructors_first
// ignore_for_file: non_constant_identifier_names

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:kidneysmart/core/service/dadata/dadata.dart';

@immutable
class SuggestionsFio {
  /* init: '' */
  final String value;
  /* init: '' */
  final String unrestricted_value;
  /* init: const DataFio() */
  final DataFio data;
  // end

//          --TURN_GEN--
//             (data)
//  *************************************
//         GENERATED CODE
//  *************************************
  const SuggestionsFio({
    this.value = '',
    this.unrestricted_value = '',
    this.data = const DataFio(),
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'value': value,
      'unrestricted_value': unrestricted_value,
      'data': data.toMap(),
    };
  }

  factory SuggestionsFio.fromMap(Map<dynamic, dynamic>? map) {
    if (map == null) return const SuggestionsFio();

    return SuggestionsFio(
      value: map['value'] as String? ?? '',
      unrestricted_value: map['unrestricted_value'] as String? ?? '',
      data: map['data'] != null
          ? DataFio.fromMap(
              Map<String, dynamic>.from(
                map['data'] as Map,
              ),
            )
          : const DataFio(),
    );
  }

  SuggestionsFio copyWith({
    String? value,
    String? unrestricted_value,
    DataFio? data,
  }) {
    return SuggestionsFio(
      value: value ?? this.value,
      unrestricted_value: unrestricted_value ?? this.unrestricted_value,
      data: data ?? this.data,
    );
  }

  String toJson() => json.encode(toMap());
  factory SuggestionsFio.fromJson(String source) => SuggestionsFio.fromMap(
        json.decode(source) as Map<String, dynamic>,
      );

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SuggestionsFio &&
            (identical(
                  other.value,
                  value,
                ) ||
                other.value == value) &&
            (identical(
                  other.unrestricted_value,
                  unrestricted_value,
                ) ||
                other.unrestricted_value == unrestricted_value) &&
            (identical(
                  other.data,
                  data,
                ) ||
                other.data == data));
  }

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        value,
        unrestricted_value,
        data,
      ]);

  @override
  String toString() {
    return 'SuggestionsFio(value: $value, unrestricted_value: $unrestricted_value, data: $data, )';
  }
}
