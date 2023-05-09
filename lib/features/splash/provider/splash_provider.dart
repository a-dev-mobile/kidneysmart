import 'dart:async';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:nutrition/features/splash/splash.dart';
import 'package:nutrition/navigation/navigation.dart';
import 'package:nutrition/shared/data/local/shared_prefs/app_storage.dart';

final splashProvider =
    StateNotifierProvider.autoDispose<SplashNotifier, SplashState>((ref) {
  return SplashNotifier(
    router: ref.read(appRouterProvider),
    storage: ref.read(appStorageProvider),
  )..load();
});

class SplashNotifier extends StateNotifier<SplashState> {
  SplashNotifier({
    required AppRouter router,
    required AppStorage storage,
  })  : _go = router,
        _storage = storage,
        super(const SplashState.load());
  final AppStorage _storage;
  final AppRouter _go;

  // проверка если есть база новая то на дозагрузку
  Future<void> load() async {
    // var pathPage = HealthProfilePage.name;

    // final dbPath = await getDatabasesPath();
    // final basePath = join(dbPath, AppDBConst.name);

    // appState = appState.copyWith(
    //   dbPath: basePath,
    // );

    // await _storage.setAppState(appState);
    final appState = _storage.getAppState();
    await Future<void>.delayed(const Duration(seconds: 1));

    await _go.nextPage(appState);
  }
}
