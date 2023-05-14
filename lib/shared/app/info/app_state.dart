// ignore_for_file: sort_constructors_first, avoid_bool_literals_in_conditional_expressions
import 'dart:convert';

import 'package:kidneysmart/features/welcome/welcome.dart';
import 'package:kidneysmart/shared/enum/enum.dart';
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
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'isFirstTime': isFirstTime,
      'dbPath': dbPath,
      'lastNamePage': lastNamePage,
      'enumLang': enumLang.index,
    };
  }

  factory AppState.fromMap(Map<dynamic, dynamic>? map) {
    if (map == null) return const AppState();

    return AppState(
      isFirstTime: map['isFirstTime'] as bool? ?? true,
      dbPath: map['dbPath'] as String? ?? '',
      lastNamePage: map['lastNamePage'] as String? ?? WelcomePage.name,
      enumLang: map['enumLang'] != null
          ? EnumLang.values[map['enumLang'] as int]
          : EnumLang.ru,
    );
  }

  AppState copyWith({
    bool? isFirstTime,
    String? dbPath,
    String? lastNamePage,
    EnumLang? enumLang,
  }) {
    return AppState(
      isFirstTime: isFirstTime ?? this.isFirstTime,
      dbPath: dbPath ?? this.dbPath,
      lastNamePage: lastNamePage ?? this.lastNamePage,
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
                other.enumLang == enumLang));
  }

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        isFirstTime,
        dbPath,
        lastNamePage,
        enumLang,
      ]);

  @override
  String toString() {
    return 'AppState(isFirstTime: $isFirstTime, dbPath: $dbPath, lastNamePage: $lastNamePage, enumLang: $enumLang, )';
  }
}
