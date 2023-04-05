// ignore_for_file: sort_constructors_first, avoid_bool_literals_in_conditional_expressions
import 'dart:convert';

import 'package:meta/meta.dart';
import 'package:nutrition/features/health_profile/health_profile.dart';

@immutable
class CkdItemModel {
/* init: EnumCkd.none */
  final EnumCkd enumCkd;
/* init: '' */
  final String value;

// end
   
//          --TURN_GEN--
//          v0.8.3 (data)
//  *************************************
//         GENERATED CODE
//  *************************************
  const CkdItemModel({
    this.enumCkd = EnumCkd.none,
    this.value = '',
  });


  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enumCkd': enumCkd.index, 
      'value': value, 
    };
  }


  factory CkdItemModel.fromMap(Map<dynamic, dynamic>? map) {
    if (map == null) return const CkdItemModel();

    return CkdItemModel(
      enumCkd: map['enumCkd'] != null ? EnumCkd.values[map['enumCkd'] as int] : EnumCkd.none, 
      value: map['value'] as String? ?? '', 
    );
  }

  CkdItemModel copyWith({
    EnumCkd? enumCkd,
    String? value,
  }) {
    return CkdItemModel(
      enumCkd: enumCkd ?? this.enumCkd, 
      value: value ?? this.value, 
    );
  }

  String toJson() => json.encode(toMap());  
  factory CkdItemModel.fromJson(String source) => CkdItemModel.fromMap(json.decode(source) as Map<String, dynamic>,);  
   
  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is CkdItemModel &&
            (identical(other.enumCkd, enumCkd) || other.enumCkd == enumCkd) && 
            (identical(other.value, value) || other.value == value));
  }

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        enumCkd,
        value,
]);

  @override
  String toString() {
    return 'CkdItemModel(enumCkd: $enumCkd, value: $value, )';
    }

}
