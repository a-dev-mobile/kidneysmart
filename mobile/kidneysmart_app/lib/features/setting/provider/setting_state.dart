// ignore_for_file: avoid_bool_literals_in_conditional_expressions
// ignore_for_file: sort_constructors_first
import 'dart:convert';

import 'package:kidneysmart/features/setting/setting.dart';
import 'package:meta/meta.dart';

@immutable
class SettingState {
  /* init: const ThemeSetting() */
  final ThemeSetting themeSetting;

  // end

//          --TURN_GEN--
//             (data)
//  *************************************
//         GENERATED CODE
//  *************************************
  const SettingState({
    this.themeSetting = const ThemeSetting(),
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'themeSetting': themeSetting.toMap(),
    };
  }

  factory SettingState.fromMap(Map<dynamic, dynamic>? map) {
    if (map == null) return const SettingState();

    return SettingState(
      themeSetting: map['themeSetting'] != null
          ? ThemeSetting.fromMap(
              Map<String, dynamic>.from(
                map['themeSetting'] as Map,
              ),
            )
          : const ThemeSetting(),
    );
  }

  SettingState copyWith({
    ThemeSetting? themeSetting,
  }) {
    return SettingState(
      themeSetting: themeSetting ?? this.themeSetting,
    );
  }

  String toJson() => json.encode(toMap());
  factory SettingState.fromJson(String source) => SettingState.fromMap(
        json.decode(source) as Map<String, dynamic>,
      );

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SettingState &&
            (identical(
                  other.themeSetting,
                  themeSetting,
                ) ||
                other.themeSetting == themeSetting));
  }

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        themeSetting,
      ]);

  @override
  String toString() {
    return 'SettingState(themeSetting: $themeSetting, )';
  }
}
