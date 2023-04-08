// ignore_for_file: avoid_bool_literals_in_conditional_expressions
// ignore_for_file: sort_constructors_first
import 'dart:convert';

import 'package:meta/meta.dart';
import 'package:nutrition/core/enum/enum.dart';

@immutable
class UpdateDbState {
  /* init: EnumResult.init */
  final EnumResult enumResult;
  /* init: false */
  final bool isUpdate;

  // end
   
//          --TURN_GEN--
//          v0.8.3 (data)
//  *************************************
//         GENERATED CODE
//  *************************************
  const UpdateDbState({
    this.enumResult = EnumResult.init,
    this.isUpdate = false,
  });


  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enumResult': enumResult.index, 
      'isUpdate': isUpdate, 
    };
  }


  factory UpdateDbState.fromMap(Map<dynamic, dynamic>? map) {
    if (map == null) return const UpdateDbState();

    return UpdateDbState(
      enumResult: map['enumResult'] != null ? EnumResult.values[map['enumResult'] as int] : EnumResult.init, 
      isUpdate: map['isUpdate'] as bool? ?? false, 
    );
  }

  UpdateDbState copyWith({
    EnumResult? enumResult,
    bool? isUpdate,
  }) {
    return UpdateDbState(
      enumResult: enumResult ?? this.enumResult, 
      isUpdate: isUpdate ?? this.isUpdate, 
    );
  }

  String toJson() => json.encode(toMap());  
  factory UpdateDbState.fromJson(String source) => UpdateDbState.fromMap(json.decode(source) as Map<String, dynamic>,);  
   
  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is UpdateDbState &&
            (identical(other.enumResult, enumResult) || other.enumResult == enumResult) && 
            (identical(other.isUpdate, isUpdate) || other.isUpdate == isUpdate));
  }

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        enumResult,
        isUpdate,
]);

  @override
  String toString() {
    return 'UpdateDbState(enumResult: $enumResult, isUpdate: $isUpdate, )';
    }

}
