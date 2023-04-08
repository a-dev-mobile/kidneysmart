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
  final int buildApp;
/* init: 1 */
  final int versionDb;
  // end
   
//          --TURN_GEN--
//          v0.8.3 (data)
//  *************************************
//         GENERATED CODE
//  *************************************
  const AppState({
    this.isFirstTime = true,
    this.isOnboardingCompleted = false,
    this.buildApp = 1,
    this.versionDb = 1,
  });


  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'isFirstTime': isFirstTime, 
      'isOnboardingCompleted': isOnboardingCompleted, 
      'buildApp': buildApp, 
      'versionDb': versionDb, 
    };
  }


  factory AppState.fromMap(Map<dynamic, dynamic>? map) {
    if (map == null) return const AppState();

    return AppState(
      isFirstTime: map['isFirstTime'] as bool? ?? true, 
      isOnboardingCompleted: map['isOnboardingCompleted'] as bool? ?? false, 
      buildApp: (map['buildApp'] as num?)?.toInt() ?? 1, 
      versionDb: (map['versionDb'] as num?)?.toInt() ?? 1, 
    );
  }

  AppState copyWith({
    bool? isFirstTime,
    bool? isOnboardingCompleted,
    int? buildApp,
    int? versionDb,
  }) {
    return AppState(
      isFirstTime: isFirstTime ?? this.isFirstTime, 
      isOnboardingCompleted: isOnboardingCompleted ?? this.isOnboardingCompleted, 
      buildApp: buildApp ?? this.buildApp, 
      versionDb: versionDb ?? this.versionDb, 
    );
  }

  String toJson() => json.encode(toMap());  
  factory AppState.fromJson(String source) => AppState.fromMap(json.decode(source) as Map<String, dynamic>,);  
   
  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AppState &&
            (identical(other.isFirstTime, isFirstTime) || other.isFirstTime == isFirstTime) && 
            (identical(other.isOnboardingCompleted, isOnboardingCompleted) || other.isOnboardingCompleted == isOnboardingCompleted) && 
            (identical(other.buildApp, buildApp) || other.buildApp == buildApp) && 
            (identical(other.versionDb, versionDb) || other.versionDb == versionDb));
  }

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        isFirstTime,
        isOnboardingCompleted,
        buildApp,
        versionDb,
]);

  @override
  String toString() {
    return 'AppState(isFirstTime: $isFirstTime, isOnboardingCompleted: $isOnboardingCompleted, buildApp: $buildApp, versionDb: $versionDb, )';
    }

}
