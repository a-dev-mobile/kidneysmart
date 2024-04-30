import 'dart:async';

import 'dart:developer';
import 'dart:io';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kidneysmart/core/enum/enum_project.dart';
import 'package:kidneysmart/core/enum/enum_store.dart';
import 'package:dartlog/dartlog.dart';
import 'package:kidneysmart/core/storage/app_storage.dart';

import 'package:package_info_plus/package_info_plus.dart';

import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'debug_notifier.g.dart';
part 'debug_state.dart';
part 'debug_notifier.freezed.dart';

@Riverpod(keepAlive: true)
class DebugNotifier extends _$DebugNotifier {
  late final _storage = ref.read(appStorageProvider);

  @override
  DebugState build() {
    Future.microtask(load);
    return _storage.getDebugState();
  }

  Future<void> load() async {
    var debugState = state;

    // если магазин не определен - определяем
    if (debugState.enumStore.isUnknown) {
      final packageInfo = await PackageInfo.fromPlatform();
      final installerStore = packageInfo.installerStore;

      final enumStore =
          EnumStore.fromPackageId(installerStore, fallback: EnumStore.unknown);

      debugState = debugState.copyWith(enumStore: enumStore);
      _storage.setDebugState(debugState);
    }

    state = debugState;
  }

  void setEnumProject({required EnumProject? enumProject}) {
    state = state.copyWith(enumProject: enumProject ?? state.enumProject);
    _saveState();
  }

  void setEnumStore(EnumStore? value) {
    state = state.copyWith(enumStore: value ?? state.enumStore);
    _saveState();
  }

  void setShowBtnHttpLog({required bool isShow}) {
    state = state.copyWith(isShowBtnHttpLog: isShow);
  }

  void setShowUrlPdfPage({required bool isShow}) {
    state = state.copyWith(isShowUrlPdfPage: isShow);
  }

  void setShowDebugRepaintRainbow({required bool isShow}) {
    state = state.copyWith(isShowRepaintRainbow: isShow);
  }

  void setShowPaintSizeEnabled({required bool isShow}) {
    state = state.copyWith(isShowPaintSizeEnabled: isShow);
  }

  void changeDebugMenu() {
    state = state.copyWith(isDebugMenuEnabled: !state.isDebugMenuEnabled);

    _saveState();
  }

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

    Logger.debug('time run');
    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      seconds = seconds - 1;
      if (seconds >= 0) {
        Logger.debug('time $seconds');
      } else {
        timer.cancel();
        if (_pressedHideBtn == _sumClick) changeDebugMenu();
        _pressedHideBtn = 0;
        Logger.debug(' timer.cancel();');
      }
    });
  }

  void toggleForceUpdate() {
    // Переключаем значение forceUpdate
    state = state.copyWith(forceUpdate: !state.forceUpdate);
  }

  Future<void> _saveState() async {
    if (!state.isDebugMenuEnabled) {
      // обнуление состояния если выключаем debug menu
      const intState = DebugState();

      state = intState;
      // await _storage.clearAll();
      await Future<void>.delayed(const Duration(seconds: 1));

      exit(0);
    } else {
      _storage.setDebugState(state.copyWith(isShowBtnHttpLog: false));
    }
  }
}
