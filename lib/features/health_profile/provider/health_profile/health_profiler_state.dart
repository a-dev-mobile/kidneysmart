// ignore_for_file: avoid_bool_literals_in_conditional_expressions
// ignore_for_file: sort_constructors_first
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:nutrition/features/health_profile/health_profile.dart';

@immutable
class HealthProfileState {  
  /* init: false */
  final bool isValid;
  /* init: const BtnToggleModel() */
  final BtnToggleModel genderModel;
    /* init: const BtnToggleModel() */
  final BtnToggleModel activityModel;
  /* init: const BirthdayModel() */
  final BirthdayModel birthdayModel;
  /* init: const HeightModel() */
  final HeightModel heightModel;
  /* init: const WeightModel() */
  final WeightModel weightModel;
  // end
   
//          --TURN_GEN--
//           v0.6.3 (data)
//  *************************************
//         GENERATED CODE 
//  *************************************
  
  const HealthProfileState({
    this.isValid = false,
    this.genderModel = const BtnToggleModel(),
    this.activityModel = const BtnToggleModel(),
    this.birthdayModel = const BirthdayModel(),
    this.heightModel = const HeightModel(),
    this.weightModel = const WeightModel(),
  });


  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'isValid': isValid, 
      'genderModel': genderModel.toMap(), 
      'activityModel': activityModel.toMap(), 
      'birthdayModel': birthdayModel.toMap(), 
      'heightModel': heightModel.toMap(), 
      'weightModel': weightModel.toMap(), 
    };
  }


  factory HealthProfileState.fromMap(Map<dynamic, dynamic>? map) {
    if (map == null) return const HealthProfileState();

    return HealthProfileState(
      isValid: map['isValid'] != null ? map['isValid'] as bool : false, 
      genderModel: map['genderModel'] != null ? BtnToggleModel.fromMap(Map<String, dynamic>.from(map['genderModel'] as Map)) : const BtnToggleModel(), 
      activityModel: map['activityModel'] != null ? BtnToggleModel.fromMap(Map<String, dynamic>.from(map['activityModel'] as Map)) : const BtnToggleModel(), 
      birthdayModel: map['birthdayModel'] != null ? BirthdayModel.fromMap(Map<String, dynamic>.from(map['birthdayModel'] as Map)) : const BirthdayModel(), 
      heightModel: map['heightModel'] != null ? HeightModel.fromMap(Map<String, dynamic>.from(map['heightModel'] as Map)) : const HeightModel(), 
      weightModel: map['weightModel'] != null ? WeightModel.fromMap(Map<String, dynamic>.from(map['weightModel'] as Map)) : const WeightModel(), 
    );
  }

  HealthProfileState copyWith({
    bool? isValid,
    BtnToggleModel? genderModel,
    BtnToggleModel? activityModel,
    BirthdayModel? birthdayModel,
    HeightModel? heightModel,
    WeightModel? weightModel,
  }) {
    return HealthProfileState(
      isValid: isValid ?? this.isValid, 
      genderModel: genderModel ?? this.genderModel, 
      activityModel: activityModel ?? this.activityModel, 
      birthdayModel: birthdayModel ?? this.birthdayModel, 
      heightModel: heightModel ?? this.heightModel, 
      weightModel: weightModel ?? this.weightModel, 
    );
  }

  String toJson() => json.encode(toMap());  
  factory HealthProfileState.fromJson(String source) => HealthProfileState.fromMap(json.decode(source) as Map<String, dynamic>,);  
   
  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is HealthProfileState &&
            (identical(other.isValid, isValid) || other.isValid == isValid) && 
            (identical(other.genderModel, genderModel) || other.genderModel == genderModel) && 
            (identical(other.activityModel, activityModel) || other.activityModel == activityModel) && 
            (identical(other.birthdayModel, birthdayModel) || other.birthdayModel == birthdayModel) && 
            (identical(other.heightModel, heightModel) || other.heightModel == heightModel) && 
            (identical(other.weightModel, weightModel) || other.weightModel == weightModel));
  }

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        isValid,
        genderModel,
        activityModel,
        birthdayModel,
        heightModel,
        weightModel,
]);

  @override
  String toString() {
    return 'HealthProfileState(isValid: $isValid, genderModel: $genderModel, activityModel: $activityModel, birthdayModel: $birthdayModel, heightModel: $heightModel, weightModel: $weightModel, )';
    }

}
