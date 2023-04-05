// ignore_for_file: sort_constructors_first, avoid_bool_literals_in_conditional_expressions
import 'dart:convert';

import 'package:meta/meta.dart';
import 'package:nutrition/features/health_profile/health_profile.dart';

@immutable
class DiabetesItemModel {
/* init: EnumDiabetes.none */
  final EnumDiabetes enumDiabetes;
/* init: '' */
  final String value;

// end
   
//          --TURN_GEN--
//          v0.8.3 (data)
//  *************************************
//         GENERATED CODE
//  *************************************
  const DiabetesItemModel({
    this.enumDiabetes = EnumDiabetes.none,
    this.value = '',
  });


  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enumDiabetes': enumDiabetes.index, 
      'value': value, 
    };
  }


  factory DiabetesItemModel.fromMap(Map<dynamic, dynamic>? map) {
    if (map == null) return const DiabetesItemModel();

    return DiabetesItemModel(
      enumDiabetes: map['enumDiabetes'] != null ? EnumDiabetes.values[map['enumDiabetes'] as int] : EnumDiabetes.none, 
      value: map['value'] as String? ?? '', 
    );
  }

  DiabetesItemModel copyWith({
    EnumDiabetes? enumDiabetes,
    String? value,
  }) {
    return DiabetesItemModel(
      enumDiabetes: enumDiabetes ?? this.enumDiabetes, 
      value: value ?? this.value, 
    );
  }

  String toJson() => json.encode(toMap());  
  factory DiabetesItemModel.fromJson(String source) => DiabetesItemModel.fromMap(json.decode(source) as Map<String, dynamic>,);  
   
  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is DiabetesItemModel &&
            (identical(other.enumDiabetes, enumDiabetes) || other.enumDiabetes == enumDiabetes) && 
            (identical(other.value, value) || other.value == value));
  }

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        enumDiabetes,
        value,
]);

  @override
  String toString() {
    return 'DiabetesItemModel(enumDiabetes: $enumDiabetes, value: $value, )';
    }

}
