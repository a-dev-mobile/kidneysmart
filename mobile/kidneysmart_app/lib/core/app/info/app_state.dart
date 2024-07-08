// ignore_for_file: sort_constructors_first, avoid_bool_literals_in_conditional_expressions
import 'dart:convert';

import 'package:kidneysmart/core/enum/enum.dart';
import 'package:kidneysmart/features/welcome/welcome.dart';
import 'package:meta/meta.dart';

@immutable
class AppState {
  /* init: true */
  final bool isFirstTime;

  /* init: '' */
  final String dbPath;
  /* init: WelcomePage.name */
  final String lastNamePage;
  /* init: EnumLang.ru */
  final EnumLang enumLang;

  /* init: '1.0' */
  final String appVersion;

  /* init: '' */
  final String userAgent;
  /* init: 1 */
  final int appBuildVersion;
  // end

//          --TURN_GEN--
//             (data)
//  *************************************
//         GENERATED CODE
//  *************************************
  const AppState({
    this.isFirstTime = true,
    this.dbPath = '',
    this.lastNamePage = WelcomePage.name,
    this.enumLang = EnumLang.ru,
    this.appVersion = '1.0',
    this.userAgent = '',
    this.appBuildVersion = 1,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'isFirstTime': isFirstTime,
      'dbPath': dbPath,
      'lastNamePage': lastNamePage,
      'enumLang': enumLang.index,
      'appVersion': appVersion,
      'userAgent': userAgent,
      'appBuildVersion': appBuildVersion,
    };
  }

  factory AppState.fromMap(Map<dynamic, dynamic>? map) {
    if (map == null) return const AppState();

    return AppState(
      isFirstTime: map['isFirstTime'] as bool? ?? true,
      dbPath: map['dbPath'] as String? ?? '',
      lastNamePage: map['lastNamePage'] as String? ?? WelcomePage.name,
      enumLang: map['enumLang'] != null
          ? map['enumLang'] is int
              ? EnumLang.values[map['enumLang'] as int]
              : map['enumLang'] is String
                  // ignore: prefer-enums-by-name
                  ? EnumLang.values.firstWhere(
                      (e) =>
                          e.toString().split('EnumLang.')[1] ==
                          map['enumLang'].toString(),
                      orElse: () => EnumLang.ru,
                    )
                  : EnumLang.ru
          : EnumLang.ru,
      appVersion: map['appVersion'] as String? ?? '1.0',
      userAgent: map['userAgent'] as String? ?? '',
      appBuildVersion: (map['appBuildVersion'] as num?)?.toInt() ?? 1,
    );
  }

  AppState copyWith({
    bool? isFirstTime,
    String? dbPath,
    String? lastNamePage,
    EnumLang? enumLang,
    String? appVersion,
    String? userAgent,
    int? appBuildVersion,
  }) {
    return AppState(
      isFirstTime: isFirstTime ?? this.isFirstTime,
      dbPath: dbPath ?? this.dbPath,
      lastNamePage: lastNamePage ?? this.lastNamePage,
      enumLang: enumLang ?? this.enumLang,
      appVersion: appVersion ?? this.appVersion,
      userAgent: userAgent ?? this.userAgent,
      appBuildVersion: appBuildVersion ?? this.appBuildVersion,
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
                  other.dbPath,
                  dbPath,
                ) ||
                other.dbPath == dbPath) &&
            (identical(
                  other.lastNamePage,
                  lastNamePage,
                ) ||
                other.lastNamePage == lastNamePage) &&
            (identical(
                  other.enumLang,
                  enumLang,
                ) ||
                other.enumLang == enumLang) &&
            (identical(
                  other.appVersion,
                  appVersion,
                ) ||
                other.appVersion == appVersion) &&
            (identical(
                  other.userAgent,
                  userAgent,
                ) ||
                other.userAgent == userAgent) &&
            (identical(
                  other.appBuildVersion,
                  appBuildVersion,
                ) ||
                other.appBuildVersion == appBuildVersion));
  }

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        isFirstTime,
        dbPath,
        lastNamePage,
        enumLang,
        appVersion,
        userAgent,
        appBuildVersion,
      ]);

  @override
  String toString() {
    return 'AppState(isFirstTime: $isFirstTime, dbPath: $dbPath, lastNamePage: $lastNamePage, enumLang: $enumLang, appVersion: $appVersion, userAgent: $userAgent, appBuildVersion: $appBuildVersion, )';
  }
}
