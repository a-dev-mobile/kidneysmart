// ignore_for_file: sort_constructors_first, avoid_bool_literals_in_conditional_expressions
import 'dart:convert';

import 'package:meta/meta.dart';

@immutable
class AppState {
  /* init: true */
  final bool isFirstTime;
  /* init: false */
  final bool isOnboardingCompleted;
  /* init: 1 */
  final int appBuildNumber;
/* init: 1 */
  final int dbVersion;
  /* init: '' */
  final String dbUrl;
  /* init: '' */
  final String dbPathBase;
  /* init: '' */
  final String dbPathUpdate;
  /* init: false */
  final bool isUseUpdateDB;
  // end

//          --TURN_GEN--
//          v0.8.7 (data)
//  *************************************
//         GENERATED CODE
//  *************************************
  const AppState({
    this.isFirstTime = true,
    this.isOnboardingCompleted = false,
    this.appBuildNumber = 1,
    this.dbVersion = 1,
    this.dbUrl = '',
    this.dbPathBase = '',
    this.dbPathUpdate = '',
    this.isUseUpdateDB = false,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'isFirstTime': isFirstTime,
      'isOnboardingCompleted': isOnboardingCompleted,
      'appBuildNumber': appBuildNumber,
      'dbVersion': dbVersion,
      'dbUrl': dbUrl,
      'dbPathBase': dbPathBase,
      'dbPathUpdate': dbPathUpdate,
      'isUseUpdateDB': isUseUpdateDB,
    };
  }

  factory AppState.fromMap(Map<dynamic, dynamic>? map) {
    if (map == null) return const AppState();

    return AppState(
      isFirstTime: map['isFirstTime'] as bool? ?? true,
      isOnboardingCompleted: map['isOnboardingCompleted'] as bool? ?? false,
      appBuildNumber: (map['appBuildNumber'] as num?)?.toInt() ?? 1,
      dbVersion: (map['dbVersion'] as num?)?.toInt() ?? 1,
      dbUrl: map['dbUrl'] as String? ?? '',
      dbPathBase: map['dbPathBase'] as String? ?? '',
      dbPathUpdate: map['dbPathUpdate'] as String? ?? '',
      isUseUpdateDB: map['isUseUpdateDB'] as bool? ?? false,
    );
  }

  AppState copyWith({
    bool? isFirstTime,
    bool? isOnboardingCompleted,
    int? appBuildNumber,
    int? dbVersion,
    String? dbUrl,
    String? dbPathBase,
    String? dbPathUpdate,
    bool? isUseUpdateDB,
  }) {
    return AppState(
      isFirstTime: isFirstTime ?? this.isFirstTime,
      isOnboardingCompleted:
          isOnboardingCompleted ?? this.isOnboardingCompleted,
      appBuildNumber: appBuildNumber ?? this.appBuildNumber,
      dbVersion: dbVersion ?? this.dbVersion,
      dbUrl: dbUrl ?? this.dbUrl,
      dbPathBase: dbPathBase ?? this.dbPathBase,
      dbPathUpdate: dbPathUpdate ?? this.dbPathUpdate,
      isUseUpdateDB: isUseUpdateDB ?? this.isUseUpdateDB,
    );
  }

  String toJson() => json.encode(toMap());
  factory AppState.fromJson(String source) => AppState.fromMap(
        json.decode(source) as Map<String, dynamic>,
      );

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AppState &&
            (identical(
                  other.isFirstTime,
                  isFirstTime,
                ) ||
                other.isFirstTime == isFirstTime) &&
            (identical(
                  other.isOnboardingCompleted,
                  isOnboardingCompleted,
                ) ||
                other.isOnboardingCompleted == isOnboardingCompleted) &&
            (identical(
                  other.appBuildNumber,
                  appBuildNumber,
                ) ||
                other.appBuildNumber == appBuildNumber) &&
            (identical(
                  other.dbVersion,
                  dbVersion,
                ) ||
                other.dbVersion == dbVersion) &&
            (identical(
                  other.dbUrl,
                  dbUrl,
                ) ||
                other.dbUrl == dbUrl) &&
            (identical(
                  other.dbPathBase,
                  dbPathBase,
                ) ||
                other.dbPathBase == dbPathBase) &&
            (identical(
                  other.dbPathUpdate,
                  dbPathUpdate,
                ) ||
                other.dbPathUpdate == dbPathUpdate) &&
            (identical(
                  other.isUseUpdateDB,
                  isUseUpdateDB,
                ) ||
                other.isUseUpdateDB == isUseUpdateDB));
  }

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        isFirstTime,
        isOnboardingCompleted,
        appBuildNumber,
        dbVersion,
        dbUrl,
        dbPathBase,
        dbPathUpdate,
        isUseUpdateDB,
      ]);

  @override
  String toString() {
    return 'AppState(isFirstTime: $isFirstTime, isOnboardingCompleted: $isOnboardingCompleted, appBuildNumber: $appBuildNumber, dbVersion: $dbVersion, dbUrl: $dbUrl, dbPathBase: $dbPathBase, dbPathUpdate: $dbPathUpdate, isUseUpdateDB: $isUseUpdateDB, )';
  }
}
