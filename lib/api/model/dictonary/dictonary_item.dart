// ignore_for_file: sort_constructors_first, avoid_bool_literals_in_conditional_expressions
// ignore_for_file: avoid-top-level-members-in-tests

import 'dart:convert';

import 'package:meta/meta.dart';

@immutable
class DictionaryItem {
  final int? id;
  /* init:'' */
  final String label;
  /* init:'' */
  final String value;
//  end

//          --TURN_GEN--
//             (data)
//  *************************************
//         GENERATED CODE
//  *************************************
  const DictionaryItem({
    this.label = '',
    this.value = '',
    this.id,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'label': label,
      'value': value,
    };
  }

  factory DictionaryItem.fromMap(Map<dynamic, dynamic>? map) {
    if (map == null) return const DictionaryItem();

    return DictionaryItem(
      id: (map['id'] as num?)?.toInt(),
      label: map['label'] as String? ?? '',
      value: map['value'] as String? ?? '',
    );
  }

  DictionaryItem copyWith({
    int? id,
    String? label,
    String? value,
  }) {
    return DictionaryItem(
      id: id ?? this.id,
      label: label ?? this.label,
      value: value ?? this.value,
    );
  }

  String toJson() => json.encode(toMap());
  factory DictionaryItem.fromJson(String source) => DictionaryItem.fromMap(
        json.decode(source) as Map<String, dynamic>,
      );

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is DictionaryItem &&
            (identical(
                  other.id,
                  id,
                ) ||
                other.id == id) &&
            (identical(
                  other.label,
                  label,
                ) ||
                other.label == label) &&
            (identical(
                  other.value,
                  value,
                ) ||
                other.value == value));
  }

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        label,
        value,
      ]);

  @override
  String toString() {
    return 'DictionaryItem(id: $id, label: $label, value: $value, )';
  }
}
