import 'dart:async';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:meta/meta.dart';

import 'package:nutrition/core/services/navigation/navigation.dart';
import 'package:nutrition/core/services/storage/app_storage_service.dart';
import 'package:nutrition/global/db.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

part 'splash_state.dart';

final splashProvider =
    StateNotifierProvider.autoDispose<SplashNotifier, SplashState>((ref) {
  return SplashNotifier(
    router: ref.read(appRouterServiceProvider),
    storage: ref.read(appStorageServiceProvider),
  )..load();
});

class SplashNotifier extends StateNotifier<SplashState> {
  SplashNotifier({
    required AppRouterService router,
    required AppStorageService storage,
  })  : _go = router,
        _storage = storage,
        super(const SplashState.load());
  final AppStorageService _storage;
  final AppRouterService _go;

  // проверка если есть база новая то на дозагрузку
  Future<void> load() async {
    var appState = _storage.getAppState();
    // var pathPage = HealthProfilePage.name;

    final dbPath = await getDatabasesPath();
    final basePath = join(dbPath, AppDBConst.name);

    appState = appState.copyWith(
      dbPath: basePath,
      isFirstTime: false,
    );

    await _storage.setAppState(appState);

    unawaited(_go.nextPage(appState));
    state = const SplashState.success();
  }
}
