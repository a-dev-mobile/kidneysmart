// ignore_for_file: sort_constructors_first

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:kidneysmart/core/data/local/shared_prefs/app_storage.dart';
import 'package:kidneysmart/features/debug_menu/provider/debug_state.dart';

final debugProvider = StateNotifierProvider<DebugProvider, DebugState>((ref) {
  return DebugProvider(storage: ref.watch(appStorageProvider));
});

class DebugProvider extends StateNotifier<DebugState> {
  DebugProvider({required AppStorage storage})
      : _storage = storage,
        super(storage.getDebugState());

  final AppStorage _storage;

  void setDevicePreview({required bool isShow}) {
    state = state.copyWith(isShowDevice: isShow);
    _saveLocal();
  }

  void setShowBtnHttpLog({required bool isShow}) {
    state = state.copyWith(isShowBtnHttpLog: isShow);
    _saveLocal();
  }

  void setShowDebugRepaintRainbow({required bool isShow}) {
    state = state.copyWith(isShowRepaintRainbow: isShow);
    _saveLocal();
  }

  void setShowPaintSizeEnabled({required bool isShow}) {
    state = state.copyWith(isShowPaintSizeEnabled: isShow);
    _saveLocal();
  }

  void _saveLocal() {
    _storage.setDebugState(state);
  }
}
