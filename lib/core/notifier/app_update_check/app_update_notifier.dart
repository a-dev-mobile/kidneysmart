import 'dart:async';

import 'package:app_updater/app_updater.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
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
    Future.microtask(load);
    return const AppUpdateState();
  }

  late final _client = ref.read(networkClientProvider);
  late final appDevice = ref.read(appDeviceProvider);
  Future<void> load() async {
    final appUpdateClient = AppUpdateClient(
      dio: _client.dio,
      url: 'https://wayofdt.com/app-update-api/v1/check',
    );

    final updateCheckReq = ApiAppUpdateCheckReq(

      installerPackageName: appDevice.packageName,
      versionCode: appDevice.buildNumber,
      packageName:  appDevice.packageName,
      versionName:  appDevice.version,
    );
    final response = await appUpdateClient.checkForUpdates(updateCheckReq);

    state = state.copyWith(apiAppUpdateCheckRes: response);
  }
}
