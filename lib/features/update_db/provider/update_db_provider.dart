import 'dart:async';

import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:nutrition/core/enum/enum.dart';
import 'package:nutrition/core/log/log.dart';
import 'package:nutrition/core/services/db/firebase/firebase.dart';

import 'package:nutrition/core/services/navigation/navigation.dart';
import 'package:nutrition/core/services/network/network_client_service.dart';
import 'package:nutrition/core/services/storage/app_storage_service.dart';
import 'package:nutrition/features/health_profile/health_profile.dart';
import 'package:nutrition/features/update_db/update_db.dart';
import 'package:nutrition/localization/localization.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

final updateDbProvider =
    StateNotifierProvider.autoDispose<UpdateDbNotifier, UpdateDbState>(
  (ref) {
    return UpdateDbNotifier(
      l: ref.watch(appLocalizationsProvider),
      storage: ref.read(appStorageServiceProvider),
      client: ref.read(networkClientProvider),
      firebase: ref.read(firebaseServiceProvider),
      go: ref.read(appRouterServiceProvider),
    )..load();
  },
);

class UpdateDbNotifier extends StateNotifier<UpdateDbState> {
  UpdateDbNotifier({
    required AppLocalizations l,
    required AppStorageService storage,
    required NetworkClientService client,
    required AppRouterService go,
    required FirebaseServiceProvider firebase,
  })  : _storage = storage,
        _l = l,
        _client = client,
        _go = go,
        _firebase = firebase,
        super(
          const UpdateDbState(),
        );

  // ignore: unused_field
  final AppStorageService _storage;
  // ignore: unused_field
  final AppLocalizations _l;
  // ignore: unused_field
  final NetworkClientService _client;

  // ignore: unused_field
  final AppRouterService _go;
  final FirebaseServiceProvider _firebase;
  late StreamSubscription<TaskSnapshot> _stream;

  /// preload
  Future<void> load() async {
    final dbPath = await getDatabasesPath();
    final versionDb = _firebase.getVersionOnlineDb();
    final urlDb = _firebase.getUrlDb();
    final path = join(dbPath, 'v_$versionDb.db');

    var appState = _storage.getAppState();

    appState = appState.copyWith(dbUrl: urlDb, dbPathUpdate: path);
// сохраняем тольков релизе
    // if (kReleaseMode) {
    appState = appState.copyWith(dbVersion: versionDb);
    // }

    await _storage.setAppState(appState);
    try {
      final task = await _firebase.downloadDb(path: path);

      _stream = task.snapshotEvents.listen((taskSnapshot) {
        switch (taskSnapshot.state) {
          case TaskState.running:
            log.i('running');
            break;
          case TaskState.paused:
            log.i('paused');

            break;
          case TaskState.success:
            log.i('success');
            _storage.setAppState(appState.copyWith(isUseUpdateDB: true));
            _go.router.goNamed(HealthProfilePage.name);
            break;
          case TaskState.canceled:
            log.i('canceled');

            break;
          case TaskState.error:
            log.i('error');
            state = state.copyWith(enumResult: EnumResult.error);
            break;
        }
      });
    } on Object catch (e, stackTrace) {
      Error.throwWithStackTrace(e, stackTrace);
    }
  }

  @override
  void dispose() {
    _stream.cancel();
    super.dispose();
  }
}
