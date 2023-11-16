// ignore_for_file:  prefer-static-class, constant_identifier_names

import 'dart:async';
import 'dart:isolate';

import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:kidneysmart/app/app.dart';
import 'package:kidneysmart/firebase_options.dart';
import 'package:kidneysmart/providers/debug/app_setting_notifier.dart';

import 'package:kidneysmart/services/about_device/about_device.dart';
import 'package:kidneysmart/services/api_client/api_client.dart';
import 'package:kidneysmart/services/app_logger/app_logger.dart';
import 'package:kidneysmart/services/app_logger/log_state.dart';
import 'package:kidneysmart/services/navigation/app_router.dart';
import 'package:kidneysmart/services/network/network_client.dart';
import 'package:kidneysmart/services/storage/app_storage.dart';
import 'package:shared_preferences/shared_preferences.dart';

Future<void> bootstrap(FutureOr<Widget> Function() app) async {
  try {
    await runZonedGuarded(
      () async {
        final widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
        FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);

        final _ = await Firebase.initializeApp(
          options: DefaultFirebaseOptions.currentPlatform,
        );

        final sharedPreferences = await SharedPreferences.getInstance();
        final appStorage = AppStorage(pref: sharedPreferences);
        // Получение информации о пакете и версии
        final packageName = await AboutDevice.getPackageName();
        final currentVersionApp = await AboutDevice.getAppVersion();

        final appSettingState = appStorage.getAppSettingState().copyWith(
              appInfoSettings: AppInfoSettings(
                appPackage: packageName,
                currentVersion: currentVersionApp,
              ),
            );
        await appStorage.setAppSettingState(appSettingState);
        final appRouter = AppRouter();

        final networkClient = NetworkClient(
          baseUrl: appSettingState.enumProject.api,
          router: appRouter,
          userAgent: '',
        );
        final apiClient = ApiClient(client: networkClient, storage: appStorage);

        // final userAgent = await AboutDevice.getAgent(
        // _debugState.isDebugMenuEnabled ? _debugState.enumStore.name : null,
        // );


        // final versionCheckService = VersionCheckService(storage: appStorage);
        // await versionCheckService
        // .checkVersionAndUpdateIfNeeded(currentVersionApp);

        FlutterError.onError = (details) {
          final exception = details.exception;
          final stackTrace = details.stack ?? StackTrace.current;
          // if (_debugState.isDebugMenuEnabled) {
          FlutterError.dumpErrorToConsole(details);
          // }
          // if (kReleaseMode || _debugState.isDebugMenuEnabled) {
          // In development mode simply print to console.
          // Zone.current.handleUncaughtError(exception, stackTrace);
          // }
        };

        await _initOrientationApp();

        log.f(
          packageName,
        );

        runApp(
          ProviderScope(
            overrides: [
              appStorageProvider.overrideWithValue(appStorage),
              appRouterProvider.overrideWithValue(appRouter),
              networkClientProvider.overrideWithValue(networkClient),
              apiClientProvider.overrideWithValue(apiClient),
            ],
            observers: [if (kDebugMode) LogState()],
            child: const App(),
          ),
        );
      },
      (error, stackTrace) {
        logger.e(
          '🚑🚑',
          time: DateTime.now(),
          error: error,
          stackTrace: stackTrace,
        );
        if (kReleaseMode) _recordError(error, stackTrace);
      },
    );
    // Pass all uncaught asynchronous errors that aren't handled by the Flutter framework to Crashlytics
    PlatformDispatcher.instance.onError = (error, stackTrace) {
      logger.e(
        '🚑🚑🚑',
        time: DateTime.now(),
        error: error.toString(),
        stackTrace: stackTrace,
      );
      if (kReleaseMode) _recordError(error, stackTrace);
      return true;
    };
    if (kReleaseMode) {
      Isolate.current.addErrorListener(
        RawReceivePort((List<dynamic> errorAndStacktrace) async {
          await _recordError(
            errorAndStacktrace.first,
            errorAndStacktrace.last as StackTrace,
          );
        }).sendPort,
      );
    }
  } catch (e) {
    log.e(
      '🚑',
      error: e,
      stackTrace: StackTrace.current,
    );

    if (kReleaseMode) await _recordError(e, StackTrace.current);
  }
  FlutterNativeSplash.remove();
  log.t('** close NATIVE splash**');
}

Future<void> _recordError(dynamic exception, StackTrace stack) async {
  await FirebaseCrashlytics.instance.recordError(
    exception,
    stack,
    // reason: typeError,
    fatal: true,
  );
}

Future<void> _initOrientationApp() async {
  await SystemChrome.setPreferredOrientations(
    [DeviceOrientation.portraitUp],
  );
}
