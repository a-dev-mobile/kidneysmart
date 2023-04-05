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

// end
   
//          --TURN_GEN--
//          v0.8.3 (data)
//  *************************************
//         GENERATED CODE
//  *************************************
  const DailyDiuresisItemModel({
    this.enumDailyDiuresis = EnumDailyDiuresis.none,
    this.value = '',
  });


  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enumDailyDiuresis': enumDailyDiuresis.index, 
      'value': value, 
    };
  }


  factory DailyDiuresisItemModel.fromMap(Map<dynamic, dynamic>? map) {
    if (map == null) return const DailyDiuresisItemModel();

    return DailyDiuresisItemModel(
      enumDailyDiuresis: map['enumDailyDiuresis'] != null ? EnumDailyDiuresis.values[map['enumDailyDiuresis'] as int] : EnumDailyDiuresis.none, 
      value: map['value'] as String? ?? '', 
    );
  }

  DailyDiuresisItemModel copyWith({
    EnumDailyDiuresis? enumDailyDiuresis,
    String? value,
  }) {
    return DailyDiuresisItemModel(
      enumDailyDiuresis: enumDailyDiuresis ?? this.enumDailyDiuresis, 
      value: value ?? this.value, 
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
            (identical(other.value, value) || other.value == value));
  }

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        enumDailyDiuresis,
        value,
]);

  @override
  String toString() {
    return 'DailyDiuresisItemModel(enumDailyDiuresis: $enumDailyDiuresis, value: $value, )';
    }

}
