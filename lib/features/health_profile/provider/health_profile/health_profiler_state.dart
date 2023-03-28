// ignore_for_file: avoid_bool_literals_in_conditional_expressions
// ignore_for_file: sort_constructors_first
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:nutrition/features/health_profile/health_profile.dart';

@immutable
class HealthProfileState {  
  /* init: false */
  final bool isValid;
  /* init: const ValidBtnToggleModel() */
  final ValidBtnToggleModel validGenderModel;
  /* init: const ValidBtnToggleModel() */
  final ValidBtnToggleModel validActivityModel;
  /* init: const ValidBtnToggleModel() */
  final ValidBtnToggleModel validHypertensionModel;
  /* init: const ValidBtnToggleModel() */
  final ValidBtnToggleModel validDiabetesModel;
  /* init: const ValidBirthdayModel() */
  final ValidBirthdayModel validBirthdayModel;
  /* init: const ValidHeightModel() */
  final ValidHeightModel validHeightModel;
  /* init: const ValidBtnToggleModel() */
  final ValidBtnToggleModel validDailyDiuresisModel;
  /* init: const ValidWeightModel() */
  final ValidWeightModel validWeightModel;
  /* init: const ValidUrineOutputModel() */
  final ValidUrineOutputModel validUrineOutputModel;
  /* init: const ValidBtnToggleModel() */
  final ValidBtnToggleModel validCkdModel;
    /* init: const ValidCreatinineModel() */
  final ValidCreatinineModel validCreatinineModel;
  // end
   
//          --TURN_GEN--
//          v0.8.2 (data)
//  *************************************
//         GENERATED CODE 
//  *************************************
  
  const HealthProfileState({
    this.isValid = false,
    this.validGenderModel = const ValidBtnToggleModel(),
    this.validActivityModel = const ValidBtnToggleModel(),
    this.validHypertensionModel = const ValidBtnToggleModel(),
    this.validDiabetesModel = const ValidBtnToggleModel(),
    this.validBirthdayModel = const ValidBirthdayModel(),
    this.validHeightModel = const ValidHeightModel(),
    this.validDailyDiuresisModel = const ValidBtnToggleModel(),
    this.validWeightModel = const ValidWeightModel(),
    this.validUrineOutputModel = const ValidUrineOutputModel(),
    this.validCkdModel = const ValidBtnToggleModel(),
    this.validCreatinineModel = const ValidCreatinineModel(),
  });


  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'isValid': isValid, 
      'validGenderModel': validGenderModel.toMap(), 
      'validActivityModel': validActivityModel.toMap(), 
      'validHypertensionModel': validHypertensionModel.toMap(), 
      'validDiabetesModel': validDiabetesModel.toMap(), 
      'validBirthdayModel': validBirthdayModel.toMap(), 
      'validHeightModel': validHeightModel.toMap(), 
      'validDailyDiuresisModel': validDailyDiuresisModel.toMap(), 
      'validWeightModel': validWeightModel.toMap(), 
      'validUrineOutputModel': validUrineOutputModel.toMap(), 
      'validCkdModel': validCkdModel.toMap(), 
      'validCreatinineModel': validCreatinineModel.toMap(), 
    };
  }


  factory HealthProfileState.fromMap(Map<dynamic, dynamic>? map) {
    if (map == null) return const HealthProfileState();

    return HealthProfileState(
      isValid: map['isValid'] as bool? ?? false, 
      validGenderModel: map['validGenderModel'] != null ? ValidBtnToggleModel.fromMap(Map<String, dynamic>.from(map['validGenderModel'] as Map)) : const ValidBtnToggleModel(), 
      validActivityModel: map['validActivityModel'] != null ? ValidBtnToggleModel.fromMap(Map<String, dynamic>.from(map['validActivityModel'] as Map)) : const ValidBtnToggleModel(), 
      validHypertensionModel: map['validHypertensionModel'] != null ? ValidBtnToggleModel.fromMap(Map<String, dynamic>.from(map['validHypertensionModel'] as Map)) : const ValidBtnToggleModel(), 
      validDiabetesModel: map['validDiabetesModel'] != null ? ValidBtnToggleModel.fromMap(Map<String, dynamic>.from(map['validDiabetesModel'] as Map)) : const ValidBtnToggleModel(), 
      validBirthdayModel: map['validBirthdayModel'] != null ? ValidBirthdayModel.fromMap(Map<String, dynamic>.from(map['validBirthdayModel'] as Map)) : const ValidBirthdayModel(), 
      validHeightModel: map['validHeightModel'] != null ? ValidHeightModel.fromMap(Map<String, dynamic>.from(map['validHeightModel'] as Map)) : const ValidHeightModel(), 
      validDailyDiuresisModel: map['validDailyDiuresisModel'] != null ? ValidBtnToggleModel.fromMap(Map<String, dynamic>.from(map['validDailyDiuresisModel'] as Map)) : const ValidBtnToggleModel(), 
      validWeightModel: map['validWeightModel'] != null ? ValidWeightModel.fromMap(Map<String, dynamic>.from(map['validWeightModel'] as Map)) : const ValidWeightModel(), 
      validUrineOutputModel: map['validUrineOutputModel'] != null ? ValidUrineOutputModel.fromMap(Map<String, dynamic>.from(map['validUrineOutputModel'] as Map)) : const ValidUrineOutputModel(), 
      validCkdModel: map['validCkdModel'] != null ? ValidBtnToggleModel.fromMap(Map<String, dynamic>.from(map['validCkdModel'] as Map)) : const ValidBtnToggleModel(), 
      validCreatinineModel: map['validCreatinineModel'] != null ? ValidCreatinineModel.fromMap(Map<String, dynamic>.from(map['validCreatinineModel'] as Map)) : const ValidCreatinineModel(), 
    );
  }

  HealthProfileState copyWith({
    bool? isValid,
    ValidBtnToggleModel? validGenderModel,
    ValidBtnToggleModel? validActivityModel,
    ValidBtnToggleModel? validHypertensionModel,
    ValidBtnToggleModel? validDiabetesModel,
    ValidBirthdayModel? validBirthdayModel,
    ValidHeightModel? validHeightModel,
    ValidBtnToggleModel? validDailyDiuresisModel,
    ValidWeightModel? validWeightModel,
    ValidUrineOutputModel? validUrineOutputModel,
    ValidBtnToggleModel? validCkdModel,
    ValidCreatinineModel? validCreatinineModel,
  }) {
    return HealthProfileState(
      isValid: isValid ?? this.isValid, 
      validGenderModel: validGenderModel ?? this.validGenderModel, 
      validActivityModel: validActivityModel ?? this.validActivityModel, 
      validHypertensionModel: validHypertensionModel ?? this.validHypertensionModel, 
      validDiabetesModel: validDiabetesModel ?? this.validDiabetesModel, 
      validBirthdayModel: validBirthdayModel ?? this.validBirthdayModel, 
      validHeightModel: validHeightModel ?? this.validHeightModel, 
      validDailyDiuresisModel: validDailyDiuresisModel ?? this.validDailyDiuresisModel, 
      validWeightModel: validWeightModel ?? this.validWeightModel, 
      validUrineOutputModel: validUrineOutputModel ?? this.validUrineOutputModel, 
      validCkdModel: validCkdModel ?? this.validCkdModel, 
      validCreatinineModel: validCreatinineModel ?? this.validCreatinineModel, 
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
            (identical(other.validGenderModel, validGenderModel) || other.validGenderModel == validGenderModel) && 
            (identical(other.validActivityModel, validActivityModel) || other.validActivityModel == validActivityModel) && 
            (identical(other.validHypertensionModel, validHypertensionModel) || other.validHypertensionModel == validHypertensionModel) && 
            (identical(other.validDiabetesModel, validDiabetesModel) || other.validDiabetesModel == validDiabetesModel) && 
            (identical(other.validBirthdayModel, validBirthdayModel) || other.validBirthdayModel == validBirthdayModel) && 
            (identical(other.validHeightModel, validHeightModel) || other.validHeightModel == validHeightModel) && 
            (identical(other.validDailyDiuresisModel, validDailyDiuresisModel) || other.validDailyDiuresisModel == validDailyDiuresisModel) && 
            (identical(other.validWeightModel, validWeightModel) || other.validWeightModel == validWeightModel) && 
            (identical(other.validUrineOutputModel, validUrineOutputModel) || other.validUrineOutputModel == validUrineOutputModel) && 
            (identical(other.validCkdModel, validCkdModel) || other.validCkdModel == validCkdModel) && 
            (identical(other.validCreatinineModel, validCreatinineModel) || other.validCreatinineModel == validCreatinineModel));
  }

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        isValid,
        validGenderModel,
        validActivityModel,
        validHypertensionModel,
        validDiabetesModel,
        validBirthdayModel,
        validHeightModel,
        validDailyDiuresisModel,
        validWeightModel,
        validUrineOutputModel,
        validCkdModel,
        validCreatinineModel,
]);

  @override
  String toString() {
    return 'HealthProfileState(isValid: $isValid, validGenderModel: $validGenderModel, validActivityModel: $validActivityModel, validHypertensionModel: $validHypertensionModel, validDiabetesModel: $validDiabetesModel, validBirthdayModel: $validBirthdayModel, validHeightModel: $validHeightModel, validDailyDiuresisModel: $validDailyDiuresisModel, validWeightModel: $validWeightModel, validUrineOutputModel: $validUrineOutputModel, validCkdModel: $validCkdModel, validCreatinineModel: $validCreatinineModel, )';
    }

}
