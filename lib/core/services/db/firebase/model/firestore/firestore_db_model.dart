// ignore_for_file: sort_constructors_first, avoid_bool_literals_in_conditional_expressions, non_constant_identifier_names
import 'dart:convert';

import 'package:meta/meta.dart';

@immutable
class FireStoreDbModel {
/* init: 1  */
  final int db_version;

  // end

//          --TURN_GEN--
//          v0.8.7 (data)
//  *************************************
//         GENERATED CODE
//  *************************************
  const FireStoreDbModel({
    this.db_version = 1,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'db_version': db_version,
    };
  }

  factory FireStoreDbModel.fromMap(Map<dynamic, dynamic>? map) {
    if (map == null) return const FireStoreDbModel();

    return FireStoreDbModel(
      db_version: (map['db_version'] as num?)?.toInt() ?? 1,
    );
  }

  FireStoreDbModel copyWith({
    int? db_version,
  }) {
    return FireStoreDbModel(
      db_version: db_version ?? this.db_version,
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
            (identical(
                  other.db_version,
                  db_version,
                ) ||
                other.db_version == db_version));
  }

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        db_version,
      ]);

  @override
  String toString() {
    return 'FireStoreDbModel(db_version: $db_version, )';
  }
}
