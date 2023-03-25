// ignore_for_file: avoid_bool_literals_in_conditional_expressions
// ignore_for_file: sort_constructors_first
import 'dart:convert';

import 'package:collection/collection.dart';
import 'package:meta/meta.dart';

@immutable
class WeightState {                                                     
  /* init: const [] */
  final List<String> heightList;
  // end
   
//          --TURN_GEN--
//          v0.8.0 (data)
//  *************************************
//         GENERATED CODE 
//  *************************************
  
  const WeightState({
    this.heightList = const [],
  });


  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'heightList': heightList, 
    };
  }


  factory WeightState.fromMap(Map<dynamic, dynamic>? map) {
    if (map == null) return const WeightState();

    return WeightState(
      heightList: (map['heightList'] as List<dynamic>?)?.map((e) => e as String).toList() ?? const [], 
    );
  }

  WeightState copyWith({
    List<String>? heightList,
  }) {
    return WeightState(
      heightList: heightList ?? this.heightList, 
    );
  }

  String toJson() => json.encode(toMap());  
  factory WeightState.fromJson(String source) => WeightState.fromMap(json.decode(source) as Map<String, dynamic>,);  
   
  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is WeightState &&
            const DeepCollectionEquality().equals(other.heightList, heightList,));
  }

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(heightList,),
]);

  @override
  String toString() {
    return 'WeightState(heightList: $heightList, )';
    }

}
