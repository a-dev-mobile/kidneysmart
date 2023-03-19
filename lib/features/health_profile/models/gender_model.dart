// ignore_for_file: sort_constructors_first, avoid_bool_literals_in_conditional_expressions
import 'dart:convert';

import 'package:meta/meta.dart';

@immutable
class GenderModel {
  final int? selectedIndex;
  final String? errorMessage;

  // end

//          --TURN_GEN--
//           v0.6.0 (data)
//  *************************************
//         GENERATED CODE
//  *************************************

  const GenderModel({
    this.selectedIndex,
    this.errorMessage,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'selectedIndex': selectedIndex,
      'errorMessage': errorMessage,
    };
  }

  factory GenderModel.fromMap(Map<dynamic, dynamic>? map) {
    if (map == null) return const GenderModel();

    return GenderModel(
      selectedIndex: (map['selectedIndex'] as num?)?.toInt(),
      errorMessage:
          map['errorMessage'] != null ? map['errorMessage'] as String : null,
    );
  }

  GenderModel copyWith({
    int? selectedIndex,
    String? errorMessage,
  }) {
    return GenderModel(
      selectedIndex: selectedIndex ?? this.selectedIndex,
      errorMessage: errorMessage ?? this.errorMessage,
    );
  }

  String toJson() => json.encode(toMap());
  factory GenderModel.fromJson(String source) => GenderModel.fromMap(
        json.decode(source) as Map<String, dynamic>,
      );

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is GenderModel &&
            (identical(other.selectedIndex, selectedIndex) ||
                other.selectedIndex == selectedIndex) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        selectedIndex,
        errorMessage,
      ]);

  @override
  String toString() {
    return 'GenderModel(selectedIndex: $selectedIndex, errorMessage: $errorMessage, )';
  }
}
