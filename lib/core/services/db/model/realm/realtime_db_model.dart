// ignore_for_file: sort_constructors_first, avoid_bool_literals_in_conditional_expressions, non_constant_identifier_names
import 'dart:convert';

import 'package:meta/meta.dart';
import 'package:nutrition/core/services/db/db.dart';

@immutable
class RealtimeDbModel {
/* init: const FeaturesDbModel()  */
  final FeaturesDbModel features;

  // end
   
//          --TURN_GEN--
//          v0.8.3 (data)
//  *************************************
//         GENERATED CODE
//  *************************************
  const RealtimeDbModel({
    this.features = const FeaturesDbModel(),
  });


  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'features': features.toMap(), 
    };
  }


  factory RealtimeDbModel.fromMap(Map<dynamic, dynamic>? map) {
    if (map == null) return const RealtimeDbModel();

    return RealtimeDbModel(
      features: map['features'] != null ? FeaturesDbModel.fromMap(Map<String, dynamic>.from(map['features'] as Map)) : const FeaturesDbModel(), 
    );
  }

  RealtimeDbModel copyWith({
    FeaturesDbModel? features,
  }) {
    return RealtimeDbModel(
      features: features ?? this.features, 
    );
  }

  String toJson() => json.encode(toMap());  
  factory RealtimeDbModel.fromJson(String source) => RealtimeDbModel.fromMap(json.decode(source) as Map<String, dynamic>,);  
   
  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is RealtimeDbModel &&
            (identical(other.features, features) || other.features == features));
  }

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        features,
]);

  @override
  String toString() {
    return 'RealtimeDbModel(features: $features, )';
    }

}
