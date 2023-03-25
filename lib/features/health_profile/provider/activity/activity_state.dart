// ignore_for_file: avoid_bool_literals_in_conditional_expressions
// ignore_for_file: sort_constructors_first
import 'dart:convert';

import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:nutrition/features/health_profile/health_profile.dart';

@immutable
class ActivityState {                                                      
  /* init:const [] */
  final List<ActivityItemModel> activityInfo;

  // end
   
//          --TURN_GEN--
//          v0.8.0 (data)
//  *************************************
//         GENERATED CODE 
//  *************************************
  
  const ActivityState({
    this.activityInfo = const [],
  });


  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'activityInfo': activityInfo.map((e) => e.toMap()).toList(), 
    };
  }


  factory ActivityState.fromMap(Map<dynamic, dynamic>? map) {
    if (map == null) return const ActivityState();

    return ActivityState(
      activityInfo: map['activityInfo'] != null ? (map['activityInfo'] as List<dynamic>).map((e) => ActivityItemModel.fromMap(e as Map<dynamic, dynamic>)).toList() : const [], 
    );
  }

  ActivityState copyWith({
    List<ActivityItemModel>? activityInfo,
  }) {
    return ActivityState(
      activityInfo: activityInfo ?? this.activityInfo, 
    );
  }

  String toJson() => json.encode(toMap());  
  factory ActivityState.fromJson(String source) => ActivityState.fromMap(json.decode(source) as Map<String, dynamic>,);  
   
  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ActivityState &&
            const DeepCollectionEquality().equals(other.activityInfo, activityInfo,));
  }

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(activityInfo,),
]);

  @override
  String toString() {
    return 'ActivityState(activityInfo: $activityInfo, )';
    }

}
