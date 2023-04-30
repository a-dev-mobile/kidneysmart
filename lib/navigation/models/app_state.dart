// ignore_for_file: sort_constructors_first, avoid_bool_literals_in_conditional_expressions
import 'dart:convert';

import 'package:meta/meta.dart';
import 'package:nutrition/shared/enum/enum.dart';

@immutable
class AppState {
  /* init: true */
  final bool isFirstTime;
  /* init: false */
  final bool isOnboardingCompleted;

  /* init: '' */
  final String dbPath;
  /* init: EnumLang.ru */
  final EnumLang enumLang;
  // end

//          --TURN_GEN--
//             (data)
//  *************************************
//         GENERATED CODE
//  *************************************
  const AppState({
    this.isFirstTime = true,
    this.isOnboardingCompleted = false,
    this.dbPath = '',
    this.enumLang = EnumLang.ru,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'isFirstTime': isFirstTime,
      'isOnboardingCompleted': isOnboardingCompleted,
      'dbPath': dbPath,
      'enumLang': enumLang.index,
    };
  }

  factory AppState.fromMap(Map<dynamic, dynamic>? map) {
    if (map == null) return const AppState();

    return AppState(
      isFirstTime: map['isFirstTime'] as bool? ?? true,
      isOnboardingCompleted: map['isOnboardingCompleted'] as bool? ?? false,
      dbPath: map['dbPath'] as String? ?? '',
      enumLang: map['enumLang'] != null
          ? EnumLang.values[map['enumLang'] as int]
          : EnumLang.ru,
    );
  }

  AppState copyWith({
    bool? isFirstTime,
    bool? isOnboardingCompleted,
    String? dbPath,
    EnumLang? enumLang,
  }) {
    return AppState(
      isFirstTime: isFirstTime ?? this.isFirstTime,
      isOnboardingCompleted:
          isOnboardingCompleted ?? this.isOnboardingCompleted,
      dbPath: dbPath ?? this.dbPath,
      enumLang: enumLang ?? this.enumLang,
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
                  other.dbPath,
                  dbPath,
                ) ||
                other.dbPath == dbPath) &&
            (identical(
                  other.enumLang,
                  enumLang,
                ) ||
                other.enumLang == enumLang));
  }

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        isFirstTime,
        isOnboardingCompleted,
        dbPath,
        enumLang,
      ]);

  @override
  String toString() {
    return 'AppState(isFirstTime: $isFirstTime, isOnboardingCompleted: $isOnboardingCompleted, dbPath: $dbPath, enumLang: $enumLang, )';
  }
}
