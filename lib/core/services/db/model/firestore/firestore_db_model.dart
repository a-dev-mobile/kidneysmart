// ignore_for_file: sort_constructors_first, avoid_bool_literals_in_conditional_expressions, non_constant_identifier_names
import 'dart:convert';

import 'package:meta/meta.dart';

@immutable
class FireStoreDbModel {
/* init: 1  */
  final int version_store_file;

/* init: 1  */
  final int version_realtime_db;

  // end

//          --TURN_GEN--
//             v0.4.7
//  *************************************
//           GENERATED CODE
//  *************************************

  const FireStoreDbModel({
    this.version_store_file = 1,
    this.version_realtime_db = 1,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'version_store_file': version_store_file,
      'version_realtime_db': version_realtime_db,
    };
  }

  factory FireStoreDbModel.fromMap(Map<dynamic, dynamic>? map) {
    if (map == null) return const FireStoreDbModel();

    return FireStoreDbModel(
      version_store_file: map['version_store_file'] != null
          ? (map['version_store_file'] as num).toInt()
          : 1,
      version_realtime_db: map['version_realtime_db'] != null
          ? (map['version_realtime_db'] as num).toInt()
          : 1,
    );
  }

  FireStoreDbModel copyWith({
    int? version_store_file,
    int? version_realtime_db,
  }) {
    return FireStoreDbModel(
      version_store_file: version_store_file ?? this.version_store_file,
      version_realtime_db: version_realtime_db ?? this.version_realtime_db,
    );
  }

  String toJson() => json.encode(toMap());
  factory FireStoreDbModel.fromJson(String source) => FireStoreDbModel.fromMap(
        json.decode(source) as Map<String, dynamic>,
      );

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is FireStoreDbModel &&
            (identical(other.version_store_file, version_store_file) ||
                other.version_store_file == version_store_file) &&
            (identical(other.version_realtime_db, version_realtime_db) ||
                other.version_realtime_db == version_realtime_db));
  }

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        version_store_file,
        version_realtime_db,
      ]);

  @override
  String toString() {
    return 'FireStoreDbModel(version_store_file: $version_store_file, version_realtime_db: $version_realtime_db, )';
  }
}
