// ignore_for_file: noop_primitive_operations, avoid_print

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kidneysmart/core/enum/enum_page_status.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'splash_notifier.freezed.dart';
part 'splash_notifier.g.dart';
part 'splash_state.dart';

@riverpod
class SplashNotifier extends _$SplashNotifier {
  @override
  SplashState build() {
    Future.microtask(load);
    return const SplashState();
  }

  // late final _client = ref.read(apiClientProvider);
  // late final _appSettingState = ref.read(appSettingNotifierProvider);

  // late final _appSettingNotifier =
  // ref.read(appSettingNotifierProvider.notifier);

  Future<void> load() async {
    await Future<void>.delayed(const Duration(seconds: 3));
    state = state.copyWith(enumPageStatus: EnumPageStatus.load);
    await Future<void>.delayed(const Duration(seconds: 3));
    state = state.copyWith(enumPageStatus: EnumPageStatus.success);
    await Future<void>.delayed(const Duration(seconds: 3));
    state = state.copyWith(enumPageStatus: EnumPageStatus.error);
    await Future<void>.delayed(const Duration(seconds: 3));
    throw Exception('Unable to load');

    // final req = ApiAppUpdateCheckReq(
    // versionCode: await AboutDevice.getAppBuildNumber(),
    // versionName: await AboutDevice.getAppVersion(),
    // packageName: await AboutDevice.getPackageName(),
    // installerPackageName: await AboutDevice.getInstallerStore(),
    // );
//
    // final appUpdateClient = AppUpdateClient(baseUrl: EnumProject.prod.api);

    // final response = await appUpdateClient.checkForUpdates(req);

    // response.when(
    // success: (api) {
    // _appSettingNotifier.state =
    // _appSettingState.copyWith(apiAppUpdateCheckResSuccess: api);
    // },
    // error: (v) {},
    // );
//
    // state = state.copyWith(enumPageStatus: EnumPageStatus.success);
  }
}
