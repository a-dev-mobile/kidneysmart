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
  /* init: const BtnToggleModel() */
  final BtnToggleModel hypertensionModel;
  /* init: const BtnToggleModel() */
  final BtnToggleModel diabetesModel;
  /* init: const BirthdayModel() */
  final BirthdayModel birthdayModel;
  /* init: const HeightModel() */
  final HeightModel heightModel;
  /* init: const BtnToggleModel() */
  final BtnToggleModel dailyDiuresisModel;
  /* init: const WeightModel() */
  final WeightModel weightModel;
  /* init: const UrineOutputModel() */
  final UrineOutputModel urineOutputModel;
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
    this.hypertensionModel = const BtnToggleModel(),
    this.diabetesModel = const BtnToggleModel(),
    this.birthdayModel = const BirthdayModel(),
    this.heightModel = const HeightModel(),
    this.dailyDiuresisModel = const BtnToggleModel(),
    this.weightModel = const WeightModel(),
    this.urineOutputModel = const UrineOutputModel(),
  });


  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'isValid': isValid, 
      'genderModel': genderModel.toMap(), 
      'activityModel': activityModel.toMap(), 
      'hypertensionModel': hypertensionModel.toMap(), 
      'diabetesModel': diabetesModel.toMap(), 
      'birthdayModel': birthdayModel.toMap(), 
      'heightModel': heightModel.toMap(), 
      'dailyDiuresisModel': dailyDiuresisModel.toMap(), 
      'weightModel': weightModel.toMap(), 
      'urineOutputModel': urineOutputModel.toMap(), 
    };
  }


  factory HealthProfileState.fromMap(Map<dynamic, dynamic>? map) {
    if (map == null) return const HealthProfileState();

    return HealthProfileState(
      isValid: map['isValid'] != null ? map['isValid'] as bool : false, 
      genderModel: map['genderModel'] != null ? BtnToggleModel.fromMap(Map<String, dynamic>.from(map['genderModel'] as Map)) : const BtnToggleModel(), 
      activityModel: map['activityModel'] != null ? BtnToggleModel.fromMap(Map<String, dynamic>.from(map['activityModel'] as Map)) : const BtnToggleModel(), 
      hypertensionModel: map['hypertensionModel'] != null ? BtnToggleModel.fromMap(Map<String, dynamic>.from(map['hypertensionModel'] as Map)) : const BtnToggleModel(), 
      diabetesModel: map['diabetesModel'] != null ? BtnToggleModel.fromMap(Map<String, dynamic>.from(map['diabetesModel'] as Map)) : const BtnToggleModel(), 
      birthdayModel: map['birthdayModel'] != null ? BirthdayModel.fromMap(Map<String, dynamic>.from(map['birthdayModel'] as Map)) : const BirthdayModel(), 
      heightModel: map['heightModel'] != null ? HeightModel.fromMap(Map<String, dynamic>.from(map['heightModel'] as Map)) : const HeightModel(), 
      dailyDiuresisModel: map['dailyDiuresisModel'] != null ? BtnToggleModel.fromMap(Map<String, dynamic>.from(map['dailyDiuresisModel'] as Map)) : const BtnToggleModel(), 
      weightModel: map['weightModel'] != null ? WeightModel.fromMap(Map<String, dynamic>.from(map['weightModel'] as Map)) : const WeightModel(), 
      urineOutputModel: map['urineOutputModel'] != null ? UrineOutputModel.fromMap(Map<String, dynamic>.from(map['urineOutputModel'] as Map)) : const UrineOutputModel(), 
    );
  }

  HealthProfileState copyWith({
    bool? isValid,
    BtnToggleModel? genderModel,
    BtnToggleModel? activityModel,
    BtnToggleModel? hypertensionModel,
    BtnToggleModel? diabetesModel,
    BirthdayModel? birthdayModel,
    HeightModel? heightModel,
    BtnToggleModel? dailyDiuresisModel,
    WeightModel? weightModel,
    UrineOutputModel? urineOutputModel,
  }) {
    return HealthProfileState(
      isValid: isValid ?? this.isValid, 
      genderModel: genderModel ?? this.genderModel, 
      activityModel: activityModel ?? this.activityModel, 
      hypertensionModel: hypertensionModel ?? this.hypertensionModel, 
      diabetesModel: diabetesModel ?? this.diabetesModel, 
      birthdayModel: birthdayModel ?? this.birthdayModel, 
      heightModel: heightModel ?? this.heightModel, 
      dailyDiuresisModel: dailyDiuresisModel ?? this.dailyDiuresisModel, 
      weightModel: weightModel ?? this.weightModel, 
      urineOutputModel: urineOutputModel ?? this.urineOutputModel, 
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
            (identical(other.hypertensionModel, hypertensionModel) || other.hypertensionModel == hypertensionModel) && 
            (identical(other.diabetesModel, diabetesModel) || other.diabetesModel == diabetesModel) && 
            (identical(other.birthdayModel, birthdayModel) || other.birthdayModel == birthdayModel) && 
            (identical(other.heightModel, heightModel) || other.heightModel == heightModel) && 
            (identical(other.dailyDiuresisModel, dailyDiuresisModel) || other.dailyDiuresisModel == dailyDiuresisModel) && 
            (identical(other.weightModel, weightModel) || other.weightModel == weightModel) && 
            (identical(other.urineOutputModel, urineOutputModel) || other.urineOutputModel == urineOutputModel));
  }

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        isValid,
        genderModel,
        activityModel,
        hypertensionModel,
        diabetesModel,
        birthdayModel,
        heightModel,
        dailyDiuresisModel,
        weightModel,
        urineOutputModel,
]);

  @override
  String toString() {
    return 'HealthProfileState(isValid: $isValid, genderModel: $genderModel, activityModel: $activityModel, hypertensionModel: $hypertensionModel, diabetesModel: $diabetesModel, birthdayModel: $birthdayModel, heightModel: $heightModel, dailyDiuresisModel: $dailyDiuresisModel, weightModel: $weightModel, urineOutputModel: $urineOutputModel, )';
    }

}
