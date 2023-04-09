import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:meta/meta.dart';
import 'package:nutrition/core/info/app_info.dart';

import 'package:nutrition/core/services/db/firebase/firebase.dart';
import 'package:nutrition/core/services/navigation/navigation.dart';
import 'package:nutrition/core/services/storage/app_storage_service.dart';
import 'package:nutrition/features/health_profile/health_profile.dart';
import 'package:nutrition/features/update_db/view/update_db_page.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

part 'splash_state.dart';

final splashProvider =
    StateNotifierProvider.autoDispose<SplashNotifier, SplashState>((ref) {
  return SplashNotifier(
    router: ref.read(appRouterServiceProvider),
    storage: ref.read(appStorageServiceProvider),
    firebase: ref.read(firebaseServiceProvider),
  )..load();
});

class SplashNotifier extends StateNotifier<SplashState> {
  SplashNotifier({
    required AppRouterService router,
    required AppStorageService storage,
    required FirebaseServiceProvider firebase,
  })  : _go = router,
        _storage = storage,
        _firebase = firebase,
        super(const SplashState.load());
  final AppStorageService _storage;
  final AppRouterService _go;
  final FirebaseServiceProvider _firebase;

  // проверка если есть база новая то на дозагрузку
  Future<void> load() async {
    var appState = _storage.getAppState();
    var pathPage = HealthProfilePage.name;

    final dbPath = await getDatabasesPath();
    final basePath = join(dbPath, 'v_1.db');

    final versionOnlineDb = _firebase.getVersionOnlineDb();
    final appBuildNumber = await AppInfo.getBuildNumber();
    final versionOfflineDb = appState.dbVersion;

    appState = appState.copyWith(
      dbPathBase: basePath,
      isUseUpdateDB: false,
      isFirstTime: false,
      appBuildNumber: appBuildNumber,
    );

    await _storage.setAppState(appState);
    // await Future<void>.delayed(const Duration(seconds: 1));

    if (versionOnlineDb > versionOfflineDb) {
      pathPage = UpdateDbPage.name;
    }

    _go.router.goNamed(pathPage);
    state = const SplashState.success();
  }
}
