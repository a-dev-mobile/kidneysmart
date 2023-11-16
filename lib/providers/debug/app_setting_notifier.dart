import 'dart:async';

import 'dart:developer';
import 'dart:io';

import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:kidneysmart/enum/enum_project.dart';
import 'package:kidneysmart/enum/enum_store.dart';
import 'package:kidneysmart/models/api/app_update/res/api_app_update_check_res.dart';
import 'package:kidneysmart/services/storage/app_storage.dart';

import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'app_setting_notifier.g.dart';
part 'app_setting_state.dart';
part 'app_setting_notifier.freezed.dart';

@Riverpod(keepAlive: true)
class AppSettingNotifier extends _$AppSettingNotifier {
  late final _storage = ref.read(appStorageProvider);

  @override
  AppSettingState build() {
    // Future.microtask(load);
    return _storage.getAppSettingState();
  }

  @override
  set state(AppSettingState value) {
    // Вызывается каждый раз, когда состояние изменяется
    super.state = value;

    // Тут можно вызвать метод для сохранения состояния
    _saveState();
  }

  Future<void> load() async {
    await loadStart();
    await Future<void>.delayed(const Duration(seconds: 2));
    await loadStart();
  }

  Future<void> loadStart() async {}

  void setClickDebug() {
    _startTime();
  }

  Timer? _timer;
// сколько нужно раз нажать
  static const int _sumClick = 3;
  // в течении которого времени
  static const int _sec = 5;

  // текущее нажатие на скрытую кнопку
  int _pressedHideBtn = 0;
  void _startTime() {
    _pressedHideBtn = _pressedHideBtn + 1;
    log('time start');

    log('countClick $_pressedHideBtn');

    if (_timer != null && _timer!.isActive) {
      return;
    }

    var seconds = _sec;

    log('time run');
    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      seconds = seconds - 1;
      if (seconds >= 0) {
        log('time $seconds');
      } else {
        timer.cancel();
        if (_pressedHideBtn == _sumClick) changeDebugMenu();
        _pressedHideBtn = 0;
        log(' timer.cancel();');
      }
    });
  }

  void changeDebugMenu() {
    state = state.copyWith(isDebugMenuEnabled: !state.isDebugMenuEnabled);

    _saveState();
  }

  Future<void> _saveState() async {
    if (!state.isDebugMenuEnabled) {
      // обнуление состояния если выключаем debug menu
      state = const AppSettingState();

      await _storage.clearAll();
      await Future<void>.delayed(const Duration(seconds: 1));

      exit(0);
    } else {
      await _storage
          .setAppSettingState(state.copyWith(isShowBtnHttpLog: false));
    }
  }
}
