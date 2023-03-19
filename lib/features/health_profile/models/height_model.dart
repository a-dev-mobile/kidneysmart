// ignore_for_file: sort_constructors_first, avoid_bool_literals_in_conditional_expressions
import 'dart:convert';

import 'package:meta/meta.dart';

@immutable
class HeightModel {
  /* init:'' */
  final String value;
  final String? errorMessage;

  // end

//          --TURN_GEN--
//           v0.6.0 (data)
//  *************************************
//         GENERATED CODE
//  *************************************

  const HeightModel({
    this.value = '',
    this.errorMessage,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'value': value,
      'errorMessage': errorMessage,
    };
  }

  factory HeightModel.fromMap(Map<dynamic, dynamic>? map) {
    if (map == null) return const HeightModel();

    return HeightModel(
      value: map['value'] != null ? map['value'] as String : '',
      errorMessage:
          map['errorMessage'] != null ? map['errorMessage'] as String : null,
    );
  }

  HeightModel copyWith({
    String? value,
    String? errorMessage,
  }) {
    return HeightModel(
      value: value ?? this.value,
      errorMessage: errorMessage ?? this.errorMessage,
    );
  }

  String toJson() => json.encode(toMap());
  factory HeightModel.fromJson(String source) => HeightModel.fromMap(
        json.decode(source) as Map<String, dynamic>,
      );

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is HeightModel &&
            (identical(other.value, value) || other.value == value) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        value,
        errorMessage,
      ]);

  @override
  String toString() {
    return 'HeightModel(value: $value, errorMessage: $errorMessage, )';
  }
}
