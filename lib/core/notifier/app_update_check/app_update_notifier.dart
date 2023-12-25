import 'dart:async';

import 'package:app_updater/app_updater.dart';
import 'package:dartlog/dartlog.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
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

  late  NetworkClient _client;
  late  AppUpdateClient _appUpdateClient;
  late  AppDevice _appDevice;

  Future<void> load() async {
    _client = ref.read(networkClientProvider);
    _appDevice = ref.read(appDeviceProvider);
  }

  Future<void> check({bool isDebug = false}) async {
    _appUpdateClient = AppUpdateClient(
      dio: _client.dio,
      url: 'https://wayofdt.com/app-update-api/v1/check',
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

  Future<void> downloadApk() async {
    state.apiAppUpdateCheckRes.maybeWhen(
      success: (v) {
        _appUpdateClient.downloadApk(v, (percentage, downloadedMB, totalMB) {
       

//  когда загрузка

        }).then((filePath) async {
          Logger.info('Проверка checksum sha256');

          final verifyChecksum = await _appUpdateClient.verifyChecksum(
            filePath,
            v.latestVersion?.checksum ?? '',
          );

          Logger.info('verifyChecksum = $verifyChecksum');
        }).catchError((Object e) {
          Logger.error('downloadApk', e);
        });
      },
      orElse: () {
        Logger.info('No updates available or an error occurred');
      },
    );
  }
}
