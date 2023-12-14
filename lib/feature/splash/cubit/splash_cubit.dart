// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kidneysmart/feature/splash/cubit/splash_state.dart';
import 'package:kidneysmart/navigation/app_router.dart';
import 'package:kidneysmart/api/api_client.dart';
import 'package:kidneysmart/core/storage/app_storage.dart';
import 'package:kidneysmart/feature/splash/cubit/splash_state.dart';
import 'package:kidneysmart/navigation/app_router.dart';
import 'package:package_info_plus/package_info_plus.dart';

class SplashCubit extends Cubit<SplashState> {
  final AppRouter _router;
  final AppStorage _storage;
  final ApiClient _client;

  SplashCubit({
    required AppRouter router,
    required ApiClient client,
    required AppStorage storage,
  })  : _router = router,
        _storage = storage,
        _client = client,
        super(const SplashState());

  Future<void> load() async {
    emit(state.copyWith(isLoad: true));

    try {
      // Attempt to fetch refresh token if it exists
      final refToken = await _storage.getTokenRef();
      if (refToken.isNotEmpty) {
        // await _client.fetchTokenRefresh(refreshToken: refToken);
      }



      final packageInfo = await PackageInfo.fromPlatform();

      final appId = await _storage.getAppId();

      if (appId.isEmpty) {
        await Future<void>.delayed(const Duration(seconds: 1));
        // await _client.sendDataApp();
      }

     

      // await _client.sendStartApp();
    } catch (e, stackTrace) {
      Error.throwWithStackTrace(e, stackTrace);
    } finally {
      await _router.toAutoRouter(storage: _storage, client: _client);
    }
  }
}
