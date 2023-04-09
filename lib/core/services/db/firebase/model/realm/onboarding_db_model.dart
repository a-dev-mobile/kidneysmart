// ignore_for_file: sort_constructors_first, avoid_bool_literals_in_conditional_expressions, non_constant_identifier_names
import 'dart:convert';

import 'package:meta/meta.dart';
import 'package:nutrition/core/services/db/firebase/firebase.dart';

@immutable
class OnboardingDbModel {
  /* init: const InfoUrlModel() */
  final InfoUrlModel info;
  // end
   
//          --TURN_GEN--
//          v0.8.5 (data)
//  *************************************
//         GENERATED CODE
//  *************************************
  const OnboardingDbModel({
    this.info = const InfoUrlModel(),
  });


  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'info': info.toMap(), 
    };
  }


  factory OnboardingDbModel.fromMap(Map<dynamic, dynamic>? map) {
    if (map == null) return const OnboardingDbModel();

    return OnboardingDbModel(
      info: map['info'] != null ? InfoUrlModel.fromMap(Map<String, dynamic>.from(map['info'] as Map)) : const InfoUrlModel(), 
    );
  }

  OnboardingDbModel copyWith({
    InfoUrlModel? info,
  }) {
    return OnboardingDbModel(
      info: info ?? this.info, 
    );
  }

  String toJson() => json.encode(toMap());  
  factory OnboardingDbModel.fromJson(String source) => OnboardingDbModel.fromMap(json.decode(source) as Map<String, dynamic>,);  
   
  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is OnboardingDbModel &&
            (identical(other.info, info) || other.info == info));
  }

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        info,
]);

  @override
  String toString() {
    return 'OnboardingDbModel(info: $info, )';
    }

}
