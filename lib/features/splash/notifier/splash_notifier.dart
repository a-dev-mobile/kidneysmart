// ignore_for_file: noop_primitive_operations, avoid_print

import 'dart:convert';
import 'dart:developer';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kidneysmart/enum/enum_page_status.dart';
import 'package:kidneysmart/models/api/app_update/req/api_app_update_check_req.dart';
import 'package:kidneysmart/services/api_client/api_client.dart';
import 'package:meta/meta.dart';

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
  Future<void> load() async {
    state = state.copyWith(enumPageStatus: EnumPageStatus.load);
    await Future<void>.delayed(const Duration(seconds: 3));
    const req = ApiAppUpdateCheckReq(
      currentVersionCode: 2,
      packageName: 'com.wayofdt.kidneysmart',
      installerPackageName: 'apk',
    );

    final a = await _client.fetchAppVersion(req);

    a.when(
      success: (v) {
        log(v.toString());

       
        log(v.enumAppUpdateType.mapValue(hard: 'hard', none: 'none', soft: 'soft'));
      },
      error: (v) {
        log(v.toString());
      },
    );

    state = state.copyWith(enumPageStatus: EnumPageStatus.load);
    await Future<void>.delayed(const Duration(seconds: 3));
    state = state.copyWith(enumPageStatus: EnumPageStatus.success);
    await Future<void>.delayed(const Duration(seconds: 3));
    state = state.copyWith(enumPageStatus: EnumPageStatus.error);
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
