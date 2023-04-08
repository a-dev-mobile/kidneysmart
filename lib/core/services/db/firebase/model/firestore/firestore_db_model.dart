// ignore_for_file: sort_constructors_first, avoid_bool_literals_in_conditional_expressions, non_constant_identifier_names
import 'dart:convert';

import 'package:meta/meta.dart';

@immutable
class FireStoreDbModel {





/* init: 1  */
  final int version_realtime_db;

/* init: 1  */
  final int version_sql_db;

  // end
   
//          --TURN_GEN--
//          v0.8.3 (data)
//  *************************************
//         GENERATED CODE
//  *************************************
  const FireStoreDbModel({
    this.version_realtime_db = 1,
    this.version_sql_db = 1,
  });


  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'version_realtime_db': version_realtime_db, 
      'version_sql_db': version_sql_db, 
    };
  }


  factory FireStoreDbModel.fromMap(Map<dynamic, dynamic>? map) {
    if (map == null) return const FireStoreDbModel();

    return FireStoreDbModel(
      version_realtime_db: (map['version_realtime_db'] as num?)?.toInt() ?? 1, 
      version_sql_db: (map['version_sql_db'] as num?)?.toInt() ?? 1, 
    );
  }

  FireStoreDbModel copyWith({
    int? version_realtime_db,
    int? version_sql_db,
  }) {
    return FireStoreDbModel(
      version_realtime_db: version_realtime_db ?? this.version_realtime_db, 
      version_sql_db: version_sql_db ?? this.version_sql_db, 
    );
  }

  String toJson() => json.encode(toMap());  
  factory FireStoreDbModel.fromJson(String source) => FireStoreDbModel.fromMap(json.decode(source) as Map<String, dynamic>,);  
   
  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is FireStoreDbModel &&
            (identical(other.version_realtime_db, version_realtime_db) || other.version_realtime_db == version_realtime_db) && 
            (identical(other.version_sql_db, version_sql_db) || other.version_sql_db == version_sql_db));
  }

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        version_realtime_db,
        version_sql_db,
]);

  @override
  String toString() {
    return 'FireStoreDbModel(version_realtime_db: $version_realtime_db, version_sql_db: $version_sql_db, )';
    }

}
