// ignore_for_file: sort_constructors_first, avoid_bool_literals_in_conditional_expressions
import 'dart:convert';

import 'package:meta/meta.dart';
import 'package:nutrition/features/health_profile/health_profile.dart';

@immutable
class DailyDiuresisItemModel {      
/* init: EnumDailyDiuresis.none */
  final EnumDailyDiuresis enumDailyDiuresis;
/* init: '' */
  final String value;
/* init: false */
  final bool isSelected;
// end
   
//          --TURN_GEN--
//           v0.6.3 (data)
//  *************************************
//         GENERATED CODE 
//  *************************************
  
  const DailyDiuresisItemModel({
    this.enumDailyDiuresis = EnumDailyDiuresis.none,
    this.value = '',
    this.isSelected = false,
  });


  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enumDailyDiuresis': enumDailyDiuresis.index, 
      'value': value, 
      'isSelected': isSelected, 
    };
  }


  factory DailyDiuresisItemModel.fromMap(Map<dynamic, dynamic>? map) {
    if (map == null) return const DailyDiuresisItemModel();

    return DailyDiuresisItemModel(
      enumDailyDiuresis: map['enumDailyDiuresis'] != null ? EnumDailyDiuresis.values[map['enumDailyDiuresis'] as int] : EnumDailyDiuresis.none, 
      value: map['value'] != null ? map['value'] as String : '', 
      isSelected: map['isSelected'] != null ? map['isSelected'] as bool : false, 
    );
  }

  DailyDiuresisItemModel copyWith({
    EnumDailyDiuresis? enumDailyDiuresis,
    String? value,
    bool? isSelected,
  }) {
    return DailyDiuresisItemModel(
      enumDailyDiuresis: enumDailyDiuresis ?? this.enumDailyDiuresis, 
      value: value ?? this.value, 
      isSelected: isSelected ?? this.isSelected, 
    );
  }

  String toJson() => json.encode(toMap());  
  factory DailyDiuresisItemModel.fromJson(String source) => DailyDiuresisItemModel.fromMap(json.decode(source) as Map<String, dynamic>,);  
   
  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is DailyDiuresisItemModel &&
            (identical(other.enumDailyDiuresis, enumDailyDiuresis) || other.enumDailyDiuresis == enumDailyDiuresis) && 
            (identical(other.value, value) || other.value == value) && 
            (identical(other.isSelected, isSelected) || other.isSelected == isSelected));
  }

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        enumDailyDiuresis,
        value,
        isSelected,
]);

  @override
  String toString() {
    return 'DailyDiuresisItemModel(enumDailyDiuresis: $enumDailyDiuresis, value: $value, isSelected: $isSelected, )';
    }

}
