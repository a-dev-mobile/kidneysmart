import 'dart:async';
import 'dart:developer';
import 'dart:io';

import 'package:bloc/bloc.dart';

import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kidneysmart/core/enum/enum_project.dart';
import 'package:kidneysmart/core/enum/enum_store.dart';

import 'package:kidneysmart/core/storage/local_storage.dart';
import 'package:package_info_plus/package_info_plus.dart';

part 'debug_state.dart';
part 'debug_cubit.freezed.dart';
part 'debug_cubit.g.dart';

class DebugCubit extends Cubit<DebugState> {
  DebugCubit({
    required LocalStorage storage,
  })  : _storage = storage,
        super(
          const DebugState(),
        );

  final LocalStorage _storage;

  Future<void> load() async {
    var debugState = await _storage.getDebugState();

    // если магазин не определен - определяем
    if (debugState.enumStore.isUnknown) {
      final packageInfo = await PackageInfo.fromPlatform();
      final installerStore = packageInfo.installerStore;

      final enumStore =
          EnumStore.fromPackageId(installerStore, fallback: EnumStore.unknown);

      debugState = debugState.copyWith(enumStore: enumStore);
       _storage.setDebugState(debugState);
    }

    emit(debugState);
  }

  void setDevicePreview({required bool isShow}) {
    emit(state.copyWith(isShowDevicePreview: isShow));
  }

  void setEnumProject({required EnumProject? enumProject}) {
    emit(state.copyWith(enumProject: enumProject ?? state.enumProject));
    _saveState();
  }

  void setEnumStore(EnumStore? value) {
    emit(state.copyWith(enumStore: value ?? state.enumStore));
    _saveState();
  }

  void setShowBtnHttpLog({required bool isShow}) {
    emit(state.copyWith(isShowBtnHttpLog: isShow));
  }

  void setShowUrlPdfPage({required bool isShow}) {
    emit(state.copyWith(isShowUrlPdfPage: isShow));
  }

  void setShowDebugRepaintRainbow({required bool isShow}) {
    emit(state.copyWith(isShowRepaintRainbow: isShow));
  }

  void setShowPaintSizeEnabled({required bool isShow}) {
    emit(state.copyWith(isShowPaintSizeEnabled: isShow));
  }

  void changeDebugMenu() {
    emit(state.copyWith(isDebugMenuEnabled: !state.isDebugMenuEnabled));

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

  Future<void> _saveState() async {
    if (!state.isDebugMenuEnabled) {
      // обнуление состояния если выключаем debug menu
      const intState = DebugState();

      emit(intState);
      // await _storage.clearAll();
      await Future<void>.delayed(const Duration(seconds: 1));

      exit(0);
    } else {
      // await _storage.setDebugState(state.copyWith(isShowBtnHttpLog: false));
    }
  }
}
