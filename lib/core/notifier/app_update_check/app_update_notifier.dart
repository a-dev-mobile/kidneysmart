import 'dart:async';

import 'package:app_updater/app_updater.dart';
import 'package:dartlog/dartlog.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kidneysmart/core/enum/enum_screen_state.dart';
import 'package:kidneysmart/core/notifier/debug_notifier/debug_notifier.dart';
import 'package:kidneysmart/core/service/app_device/app_device.dart';

import 'package:kidneysmart/core/service/network/network_client.dart';

import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'app_update_notifier.g.dart';
part 'app_update_state.dart';
part 'app_update_notifier.freezed.dart';

@Riverpod(keepAlive: true)
class AppUpdateNotifier extends _$AppUpdateNotifier {
  @override
  AppUpdateState build() {
    // ref.watch(debugNotifierProvider.select((it) => it.forceUpdate));

    Future.microtask(load);
    return const AppUpdateState();
  }

  late NetworkClient _client;
  late AppUpdateClient _appUpdateClient;
  late AppDevice _appDevice;

  Future<void> load() async {
    _client = ref.read(networkClientProvider);
    _appDevice = ref.read(appDeviceProvider);
  }

  Future<void> check({bool isDebug = false}) async {
    // if (_appUpdateClient != null) return;

    state = state.copyWith(
      apiAppUpdateCheckRes: const ApiAppUpdateCheckRes.init(),

    );
    _appUpdateClient = AppUpdateClient(
      dio: _client.dio,
      url: 'https://wayofdt.com/app-update-api/v1/check',
      // url: 'http://localhost/app-update-api/v1/check',
    );

    final updateCheckReq = ApiAppUpdateCheckReq(
      installerPackageName: _appDevice.installerStore,
      versionCode: _appDevice.buildNumber,
      packageName: _appDevice.packageName,
      versionName: _appDevice.version,
      debugMode: isDebug,
    );
    final response = await _appUpdateClient.checkForUpdates(updateCheckReq);

    state = state.copyWith(apiAppUpdateCheckRes: response);
  }

    Future<void> resetState() async {
    state = state.copyWith(
      apiAppUpdateCheckRes: const ApiAppUpdateCheckRes.init(),
    
    );
  }

}
