// ignore_for_file: avoid_bool_literals_in_conditional_expressions
// ignore_for_file: sort_constructors_first
// ignore_for_file: non_constant_identifier_names

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:kidneysmart/core/service/dadata/dadata.dart';

@immutable
class SuggestionsAddress {
  /* init: '' */
  final String value;
  /* init: '' */
  final String unrestricted_value;
  /* init: const DataAddress() */
  final DataAddress data;
  // end

//          --TURN_GEN--
//             (data)
//  *************************************
//         GENERATED CODE
//  *************************************
  const SuggestionsAddress({
    this.value = '',
    this.unrestricted_value = '',
    this.data = const DataAddress(),
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'value': value,
      'unrestricted_value': unrestricted_value,
      'data': data.toMap(),
    };
  }

  factory SuggestionsAddress.fromMap(Map<dynamic, dynamic>? map) {
    if (map == null) return const SuggestionsAddress();

    return SuggestionsAddress(
      value: map['value'] as String? ?? '',
      unrestricted_value: map['unrestricted_value'] as String? ?? '',
      data: map['data'] != null
          ? DataAddress.fromMap(
              Map<String, dynamic>.from(
                map['data'] as Map,
              ),
            )
          : const DataAddress(),
    );
  }

  SuggestionsAddress copyWith({
    String? value,
    String? unrestricted_value,
    DataAddress? data,
  }) {
    return SuggestionsAddress(
      value: value ?? this.value,
      unrestricted_value: unrestricted_value ?? this.unrestricted_value,
      data: data ?? this.data,
    );
  }

  String toJson() => json.encode(toMap());
  factory SuggestionsAddress.fromJson(String source) =>
      SuggestionsAddress.fromMap(
        json.decode(source) as Map<String, dynamic>,
      );

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SuggestionsAddress &&
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
    return 'SuggestionsAddress(value: $value, unrestricted_value: $unrestricted_value, data: $data, )';
  }
}
