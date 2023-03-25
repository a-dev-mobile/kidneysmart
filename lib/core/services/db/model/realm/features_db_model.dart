// ignore_for_file: sort_constructors_first, avoid_bool_literals_in_conditional_expressions, non_constant_identifier_names
import 'dart:convert';

import 'package:meta/meta.dart';
import 'package:nutrition/core/services/db/db.dart';

@immutable
class FeaturesDbModel {                                                     
/* init: const OnboardingDbModel()  */
  final OnboardingDbModel onboarding;
/* init: const RegistrationNameDbModel()  */
  final RegistrationNameDbModel registration_name;

  // end
   
//          --TURN_GEN--
//          v0.8.0 (data)
//  *************************************
//         GENERATED CODE 
//  *************************************
  
  const FeaturesDbModel({
    this.onboarding = const OnboardingDbModel(),
    this.registration_name = const RegistrationNameDbModel(),
  });


  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'onboarding': onboarding.toMap(), 
      'registration_name': registration_name.toMap(), 
    };
  }


  factory FeaturesDbModel.fromMap(Map<dynamic, dynamic>? map) {
    if (map == null) return const FeaturesDbModel();

    return FeaturesDbModel(
      onboarding: map['onboarding'] != null ? OnboardingDbModel.fromMap(Map<String, dynamic>.from(map['onboarding'] as Map)) : const OnboardingDbModel(), 
      registration_name: map['registration_name'] != null ? RegistrationNameDbModel.fromMap(Map<String, dynamic>.from(map['registration_name'] as Map)) : const RegistrationNameDbModel(), 
    );
  }

  FeaturesDbModel copyWith({
    OnboardingDbModel? onboarding,
    RegistrationNameDbModel? registration_name,
  }) {
    return FeaturesDbModel(
      onboarding: onboarding ?? this.onboarding, 
      registration_name: registration_name ?? this.registration_name, 
    );
  }

  String toJson() => json.encode(toMap());  
  factory FeaturesDbModel.fromJson(String source) => FeaturesDbModel.fromMap(json.decode(source) as Map<String, dynamic>,);  
   
  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is FeaturesDbModel &&
            (identical(other.onboarding, onboarding) || other.onboarding == onboarding) && 
            (identical(other.registration_name, registration_name) || other.registration_name == registration_name));
  }

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        onboarding,
        registration_name,
]);

  @override
  String toString() {
    return 'FeaturesDbModel(onboarding: $onboarding, registration_name: $registration_name, )';
    }

}
