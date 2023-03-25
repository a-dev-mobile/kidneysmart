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
/* init: false */
  final bool isSelected;
// end
   
//          --TURN_GEN--
//          v0.8.0 (data)
//  *************************************
//         GENERATED CODE 
//  *************************************
  
  const HypertensionItemModel({
    this.enumHypertension = EnumHypertension.none,
    this.value = '',
    this.isSelected = false,
  });


  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enumHypertension': enumHypertension.index, 
      'value': value, 
      'isSelected': isSelected, 
    };
  }


  factory HypertensionItemModel.fromMap(Map<dynamic, dynamic>? map) {
    if (map == null) return const HypertensionItemModel();

    return HypertensionItemModel(
      enumHypertension: map['enumHypertension'] != null ? EnumHypertension.values[map['enumHypertension'] as int] : EnumHypertension.none, 
      value: map['value'] != null ? map['value'] as String : '', 
      isSelected: map['isSelected'] != null ? map['isSelected'] as bool : false, 
    );
  }

  HypertensionItemModel copyWith({
    EnumHypertension? enumHypertension,
    String? value,
    bool? isSelected,
  }) {
    return HypertensionItemModel(
      enumHypertension: enumHypertension ?? this.enumHypertension, 
      value: value ?? this.value, 
      isSelected: isSelected ?? this.isSelected, 
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
            (identical(other.value, value) || other.value == value) && 
            (identical(other.isSelected, isSelected) || other.isSelected == isSelected));
  }

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        enumHypertension,
        value,
        isSelected,
]);

  @override
  String toString() {
    return 'HypertensionItemModel(enumHypertension: $enumHypertension, value: $value, isSelected: $isSelected, )';
    }

}
