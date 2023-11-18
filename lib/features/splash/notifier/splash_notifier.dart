// ignore_for_file: noop_primitive_operations, avoid_print

import 'package:app_updater/app_updater.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kidneysmart/enum/enum_page_status.dart';
import 'package:kidneysmart/enum/enum_project.dart';

import 'package:kidneysmart/providers/debug/app_setting_notifier.dart';
import 'package:kidneysmart/services/about_device/about_device.dart';
import 'package:kidneysmart/services/api_client/api_client.dart';

import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'splash_notifier.g.dart';
part 'splash_notifier.freezed.dart';
part 'splash_state.dart';

@riverpod
class SplashNotifier extends _$SplashNotifier {
  @override
  SplashState build() {
    Future.microtask(load);
    return const SplashState();
  }

  late final _client = ref.read(apiClientProvider);
  late final _appSettingState = ref.read(appSettingNotifierProvider);

  late final _appSettingNotifier =
      ref.read(appSettingNotifierProvider.notifier);

  Future<void> load() async {
    state = state.copyWith(enumPageStatus: EnumPageStatus.load);
    await Future<void>.delayed(const Duration(seconds: 3));

    final req = ApiAppUpdateCheckReq(
      versionCode: await AboutDevice.getAppBuildNumber(),
      versionName: await AboutDevice.getAppVersion(),
      packageName: await AboutDevice.getPackageName(),
      installerPackageName: await AboutDevice.getInstallerStore(),
    );

    final appUpdateClient = AppUpdateClient(baseUrl: EnumProject.prod.api);

    final response = await appUpdateClient.checkForUpdates(req);

    response.when(
      success: (api) {
        _appSettingNotifier.state =
            _appSettingState.copyWith(apiAppUpdateCheckResSuccess: api);
      },
      error: (v) {},
    );

    state = state.copyWith(enumPageStatus: EnumPageStatus.success);
  }
}

// class SplashCubit extends Cubit<SplashNotifier> {
//   final AppRouter _router;
//   final AppStorage _storage;
//   final ApiClient _client;

//   SplashCubit({
//     required AppRouter router,
//     required ApiClient client,
//     required AppStorage storage,
//   })  : _router = router,
//         _storage = storage,
//         _client = client,
//         super(const SplashNotifier());

//   Future<void> load() async {
//     emit(state.copyWith(isLoad: true));

//     try {
//       // Attempt to fetch refresh token if it exists
//       final refToken = await _storage.getTokenRef();
//       if (refToken.isNotEmpty) {
//         // await _client.fetchTokenRefresh(refreshToken: refToken);
//       }

//       final deviceInfoState = await _storage.getDeviceInfoState();
//       final metadata = deviceInfoState.deviceInfo?.metadata;
//       final packageInfo = await PackageInfo.fromPlatform();

//       final appId = await _storage.getAppId();

//       if (appId.isEmpty) {
//         await Future<void>.delayed(const Duration(seconds: 1));
//         await _client.sendDataApp();
//       }

//       if (packageInfo.buildNumber != metadata?.build_number ||
//           packageInfo.version != metadata?.version) {
//         await Future<void>.delayed(const Duration(seconds: 1));
//         await _client.updateDataApp();
//       }

//       await _client.sendStartApp();
//     } catch (e, stackTrace) {
//       Error.throwWithStackTrace(e, stackTrace);
//     } finally {
//       await _router.toAutoRouter(storage: _storage, client: _client);
//     }
//   }
// }
