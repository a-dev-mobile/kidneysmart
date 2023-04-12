// ignore_for_file: sort_constructors_first, avoid_bool_literals_in_conditional_expressions, non_constant_identifier_names
import 'dart:convert';

import 'package:meta/meta.dart';
import 'package:nutrition/core/services/db/firebase/firebase.dart';

@immutable
class FeaturesDbModel {
/* init: const OnboardingDbModel()  */
  final OnboardingDbModel onboarding;
/* init: const GfrDbModel()  */
  final GfrDbModel gfr;

  // end

//          --TURN_GEN--
//          v0.8.7 (data)
//  *************************************
//         GENERATED CODE
//  *************************************
  const FeaturesDbModel({
    this.onboarding = const OnboardingDbModel(),
    this.gfr = const GfrDbModel(),
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'onboarding': onboarding.toMap(),
      'gfr': gfr.toMap(),
    };
  }

  factory FeaturesDbModel.fromMap(Map<dynamic, dynamic>? map) {
    if (map == null) return const FeaturesDbModel();

    return FeaturesDbModel(
      onboarding: map['onboarding'] != null
          ? OnboardingDbModel.fromMap(
              Map<String, dynamic>.from(map['onboarding'] as Map),
            )
          : const OnboardingDbModel(),
      gfr: map['gfr'] != null
          ? GfrDbModel.fromMap(
              Map<String, dynamic>.from(map['gfr'] as Map),
            )
          : const GfrDbModel(),
    );
  }

  FeaturesDbModel copyWith({
    OnboardingDbModel? onboarding,
    GfrDbModel? gfr,
  }) {
    return FeaturesDbModel(
      onboarding: onboarding ?? this.onboarding,
      gfr: gfr ?? this.gfr,
    );
  }

  String toJson() => json.encode(toMap());
  factory FeaturesDbModel.fromJson(String source) => FeaturesDbModel.fromMap(
        json.decode(source) as Map<String, dynamic>,
      );

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is FeaturesDbModel &&
            (identical(
                  other.onboarding,
                  onboarding,
                ) ||
                other.onboarding == onboarding) &&
            (identical(
                  other.gfr,
                  gfr,
                ) ||
                other.gfr == gfr));
  }

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        onboarding,
        gfr,
      ]);

  @override
  String toString() {
    return 'FeaturesDbModel(onboarding: $onboarding, gfr: $gfr, )';
  }
}
