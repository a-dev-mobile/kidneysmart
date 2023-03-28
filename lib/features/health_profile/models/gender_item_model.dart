// ignore_for_file: sort_constructors_first, avoid_bool_literals_in_conditional_expressions
import 'dart:convert';

import 'package:meta/meta.dart';
import 'package:nutrition/features/health_profile/health_profile.dart';

@immutable
class GenderItemModel {                                                                                                                                  
/* init: EnumGender.none */
  final EnumGender enumGender;
/* init: '' */
  final String value;
/* init: false */
  final bool isSelected;
// end
   
//          --TURN_GEN--
//          v0.8.2 (data)
//  *************************************
//         GENERATED CODE 
//  *************************************
  
  const GenderItemModel({
    this.enumGender = EnumGender.none,
    this.value = '',
    this.isSelected = false,
  });


  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enumGender': enumGender.index, 
      'value': value, 
      'isSelected': isSelected, 
    };
  }


  factory GenderItemModel.fromMap(Map<dynamic, dynamic>? map) {
    if (map == null) return const GenderItemModel();

    return GenderItemModel(
      enumGender: map['enumGender'] != null ? EnumGender.values[map['enumGender'] as int] : EnumGender.none, 
      value: map['value'] as String? ?? '', 
      isSelected: map['isSelected'] as bool? ?? false, 
    );
  }

  GenderItemModel copyWith({
    EnumGender? enumGender,
    String? value,
    bool? isSelected,
  }) {
    return GenderItemModel(
      enumGender: enumGender ?? this.enumGender, 
      value: value ?? this.value, 
      isSelected: isSelected ?? this.isSelected, 
    );
  }

  String toJson() => json.encode(toMap());  
  factory GenderItemModel.fromJson(String source) => GenderItemModel.fromMap(json.decode(source) as Map<String, dynamic>,);  
   
  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is GenderItemModel &&
            (identical(other.enumGender, enumGender) || other.enumGender == enumGender) && 
            (identical(other.value, value) || other.value == value) && 
            (identical(other.isSelected, isSelected) || other.isSelected == isSelected));
  }

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        enumGender,
        value,
        isSelected,
]);

  @override
  String toString() {
    return 'GenderItemModel(enumGender: $enumGender, value: $value, isSelected: $isSelected, )';
    }

}
