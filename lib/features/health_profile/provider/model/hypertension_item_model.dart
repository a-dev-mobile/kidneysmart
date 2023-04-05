// ignore_for_file: sort_constructors_first, avoid_bool_literals_in_conditional_expressions
import 'dart:convert';

import 'package:meta/meta.dart';
import 'package:nutrition/features/health_profile/health_profile.dart';

@immutable
class HypertensionItemModel {
/* init: EnumHypertension.none */
  final EnumHypertension enumHypertension;
/* init: '' */
  final String value;

// end
   
//          --TURN_GEN--
//          v0.8.3 (data)
//  *************************************
//         GENERATED CODE
//  *************************************
  const HypertensionItemModel({
    this.enumHypertension = EnumHypertension.none,
    this.value = '',
  });


  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enumHypertension': enumHypertension.index, 
      'value': value, 
    };
  }


  factory HypertensionItemModel.fromMap(Map<dynamic, dynamic>? map) {
    if (map == null) return const HypertensionItemModel();

    return HypertensionItemModel(
      enumHypertension: map['enumHypertension'] != null ? EnumHypertension.values[map['enumHypertension'] as int] : EnumHypertension.none, 
      value: map['value'] as String? ?? '', 
    );
  }

  HypertensionItemModel copyWith({
    EnumHypertension? enumHypertension,
    String? value,
  }) {
    return HypertensionItemModel(
      enumHypertension: enumHypertension ?? this.enumHypertension, 
      value: value ?? this.value, 
    );
  }

  String toJson() => json.encode(toMap());  
  factory HypertensionItemModel.fromJson(String source) => HypertensionItemModel.fromMap(json.decode(source) as Map<String, dynamic>,);  
   
  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is HypertensionItemModel &&
            (identical(other.enumHypertension, enumHypertension) || other.enumHypertension == enumHypertension) && 
            (identical(other.value, value) || other.value == value));
  }

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        enumHypertension,
        value,
]);

  @override
  String toString() {
    return 'HypertensionItemModel(enumHypertension: $enumHypertension, value: $value, )';
    }

}
