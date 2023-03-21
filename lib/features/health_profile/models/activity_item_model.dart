// ignore_for_file: sort_constructors_first, avoid_bool_literals_in_conditional_expressions
import 'dart:convert';

import 'package:meta/meta.dart';
import 'package:nutrition/features/health_profile/health_profile.dart';

@immutable
class ActivityItemModel { 
/* init: EnumActivity.none */
  final EnumActivity enumActivity;
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
  
  const ActivityItemModel({
    this.enumActivity = EnumActivity.none,
    this.value = '',
    this.isSelected = false,
  });


  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enumActivity': enumActivity.index, 
      'value': value, 
      'isSelected': isSelected, 
    };
  }


  factory ActivityItemModel.fromMap(Map<dynamic, dynamic>? map) {
    if (map == null) return const ActivityItemModel();

    return ActivityItemModel(
      enumActivity: map['enumActivity'] != null ? EnumActivity.values[map['enumActivity'] as int] : EnumActivity.none, 
      value: map['value'] != null ? map['value'] as String : '', 
      isSelected: map['isSelected'] != null ? map['isSelected'] as bool : false, 
    );
  }

  ActivityItemModel copyWith({
    EnumActivity? enumActivity,
    String? value,
    bool? isSelected,
  }) {
    return ActivityItemModel(
      enumActivity: enumActivity ?? this.enumActivity, 
      value: value ?? this.value, 
      isSelected: isSelected ?? this.isSelected, 
    );
  }

  String toJson() => json.encode(toMap());  
  factory ActivityItemModel.fromJson(String source) => ActivityItemModel.fromMap(json.decode(source) as Map<String, dynamic>,);  
   
  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ActivityItemModel &&
            (identical(other.enumActivity, enumActivity) || other.enumActivity == enumActivity) && 
            (identical(other.value, value) || other.value == value) && 
            (identical(other.isSelected, isSelected) || other.isSelected == isSelected));
  }

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        enumActivity,
        value,
        isSelected,
]);

  @override
  String toString() {
    return 'ActivityItemModel(enumActivity: $enumActivity, value: $value, isSelected: $isSelected, )';
    }

}
