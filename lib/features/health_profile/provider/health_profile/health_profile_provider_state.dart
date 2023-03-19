// ignore_for_file: avoid_bool_literals_in_conditional_expressions
// ignore_for_file: sort_constructors_first
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:nutrition/features/health_profile/health_profile.dart';

@immutable
class HealthProfileState { 
  /* init: false */
  final bool isValid;
  /* init: const GenderModel() */
  final GenderModel genderModel;
  /* init: const BirthdayModel() */
  final BirthdayModel birthdayModel;
  /* init: const HeightModel() */
  final HeightModel heightModel;
  // end
   
//          --TURN_GEN--
//           v0.6.0 (data)
//  *************************************
//         GENERATED CODE 
//  *************************************
  
  const HealthProfileState({
    this.isValid = false,
    this.genderModel = const GenderModel(),
    this.birthdayModel = const BirthdayModel(),
    this.heightModel = const HeightModel(),
  });


  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'isValid': isValid, 
      'genderModel': genderModel.toMap(), 
      'birthdayModel': birthdayModel.toMap(), 
      'heightModel': heightModel.toMap(), 
    };
  }


  factory HealthProfileState.fromMap(Map<dynamic, dynamic>? map) {
    if (map == null) return const HealthProfileState();

    return HealthProfileState(
      isValid: map['isValid'] != null ? map['isValid'] as bool : false, 
      genderModel: map['genderModel'] != null ? GenderModel.fromMap(Map<String, dynamic>.from(map['genderModel'] as Map)) : const GenderModel(), 
      birthdayModel: map['birthdayModel'] != null ? BirthdayModel.fromMap(Map<String, dynamic>.from(map['birthdayModel'] as Map)) : const BirthdayModel(), 
      heightModel: map['heightModel'] != null ? HeightModel.fromMap(Map<String, dynamic>.from(map['heightModel'] as Map)) : const HeightModel(), 
    );
  }

  HealthProfileState copyWith({
    bool? isValid,
    GenderModel? genderModel,
    BirthdayModel? birthdayModel,
    HeightModel? heightModel,
  }) {
    return HealthProfileState(
      isValid: isValid ?? this.isValid, 
      genderModel: genderModel ?? this.genderModel, 
      birthdayModel: birthdayModel ?? this.birthdayModel, 
      heightModel: heightModel ?? this.heightModel, 
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
            (identical(other.birthdayModel, birthdayModel) || other.birthdayModel == birthdayModel) && 
            (identical(other.heightModel, heightModel) || other.heightModel == heightModel));
  }

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        isValid,
        genderModel,
        birthdayModel,
        heightModel,
]);

  @override
  String toString() {
    return 'HealthProfileState(isValid: $isValid, genderModel: $genderModel, birthdayModel: $birthdayModel, heightModel: $heightModel, )';
    }

}
