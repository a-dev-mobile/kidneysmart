import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kidneysmart/core/enum/enum_screen_state.dart';
import 'package:kidneysmart/core/storage/app_storage.dart';
import 'package:kidneysmart/feature/setting/enum/enum_theme.dart';

import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'setting_notifier.freezed.dart';
part 'setting_notifier.g.dart';
part 'setting_state.dart';

@Riverpod(keepAlive: true)
class SettingNotifier extends _$SettingNotifier {
  late final _storage = ref.read(appStorageProvider);
  @override
  SettingState build() {
    return _storage.getSettingState();
  }

  void toggleTheme() {
    state = state.copyWith(
      enumTheme: state.enumTheme.isDark ? EnumTheme.light : EnumTheme.dark,
    );
    _saveState();
  }

  Future<void> _saveState() async {
    _storage.setSettingState(state);
  }

  void setTheme(EnumTheme theme) {
    state = state.copyWith(
      enumTheme: theme,
    );
    _saveState();
  }
}
