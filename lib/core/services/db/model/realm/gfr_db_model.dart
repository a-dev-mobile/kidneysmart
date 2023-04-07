// ignore_for_file: sort_constructors_first, avoid_bool_literals_in_conditional_expressions, non_constant_identifier_names
import 'dart:convert';

import 'package:meta/meta.dart';
import 'package:nutrition/core/services/db/db.dart';

@immutable
class GfrDbModel {
  /* init: const InfoUrlModel() */
  final InfoUrlModel info;
  // end
   
//          --TURN_GEN--
//          v0.8.3 (data)
//  *************************************
//         GENERATED CODE
//  *************************************
  const GfrDbModel({
    this.info = const InfoUrlModel(),
  });


  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'info': info.toMap(), 
    };
  }


  factory GfrDbModel.fromMap(Map<dynamic, dynamic>? map) {
    if (map == null) return const GfrDbModel();

    return GfrDbModel(
      info: map['info'] != null ? InfoUrlModel.fromMap(Map<String, dynamic>.from(map['info'] as Map)) : const InfoUrlModel(), 
    );
  }

  GfrDbModel copyWith({
    InfoUrlModel? info,
  }) {
    return GfrDbModel(
      info: info ?? this.info, 
    );
  }

  String toJson() => json.encode(toMap());  
  factory GfrDbModel.fromJson(String source) => GfrDbModel.fromMap(json.decode(source) as Map<String, dynamic>,);  
   
  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is GfrDbModel &&
            (identical(other.info, info) || other.info == info));
  }

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        info,
]);

  @override
  String toString() {
    return 'GfrDbModel(info: $info, )';
    }

}
