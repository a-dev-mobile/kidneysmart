// ignore_for_file: prefer_static_class, constant_identifier_names

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
import 'package:kidneysmart/enum/enum_project.dart';
import 'package:kidneysmart/firebase_options.dart';
import 'package:kidneysmart/providers/debug/app_setting_notifier.dart';
import 'package:kidneysmart/services/api_client/api_client.dart';
import 'package:kidneysmart/services/app_logger/app_logger.dart';
import 'package:kidneysmart/services/app_logger/log_state.dart';
import 'package:kidneysmart/services/error_handler/error_handler.dart';
import 'package:kidneysmart/services/navigation/app_router.dart';
import 'package:kidneysmart/services/network/network_client.dart';
import 'package:kidneysmart/services/storage/app_storage.dart';
import 'package:shared_preferences/shared_preferences.dart';

late final AppStorage _appStorage;
late final AppSettingState _appSettingState;

late final AppRouter _appRouter;
late final NetworkClient _networkClient;
late final ApiClient _apiClient;
Future<void> bootstrap(FutureOr<Widget> Function() app) async {
  try {
    await runZonedGuarded(
      () async {
        await initializeApp();
        configureFlutterErrorHandling();
        await initializeNetworkAndApiClient();
        setupIsolateErrorHandling();
        await _initOrientationApp();
        runApp(
          ProviderScope(
            overrides: [
              appStorageProvider.overrideWithValue(_appStorage),
              appRouterProvider.overrideWithValue(_appRouter),
              networkClientProvider.overrideWithValue(_networkClient),
              apiClientProvider.overrideWithValue(_apiClient),
            ],
            observers: [if (kDebugMode) LogState()],
            child: const App(),
          ),
        );
      },
      handleError,
    );
  } catch (e) {
    log.e('🚑', error: e, stackTrace: StackTrace.current);
    if (kReleaseMode) await _recordError(e, StackTrace.current);
  }
  finalizeBootstrap();
}

Future<void> initializeApp() async {
  final widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);

  final _ = await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  final sharedPreferences = await SharedPreferences.getInstance();
  _appStorage = AppStorage(pref: sharedPreferences);

  _appSettingState =
      _appStorage.getAppSettingState().copyWith(enumProject: EnumProject.prod);

  await _appStorage.setAppSettingState(_appSettingState);

  _appRouter = AppRouter();
}

void configureFlutterErrorHandling() {
  // ignore: unnecessary_lambdas
  FlutterError.onError = (details) {
    // final exception = details.exception;
    // final stackTrace = details.stack ?? StackTrace.current;
    FlutterError.dumpErrorToConsole(details);
  };
}

Future<void> initializeNetworkAndApiClient() async {
  _networkClient = NetworkClient(
    baseUrl: _appSettingState.enumProject.api,
    router: _appRouter,
    userAgent: '',
  );
  _apiClient = ApiClient(client: _networkClient, storage: _appStorage);
}

void setupIsolateErrorHandling() {
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
}

void handleError(dynamic error, StackTrace stackTrace) {
  logger.e(
    '🚑🚑',
    time: DateTime.now(),
    error: error,
    stackTrace: stackTrace,
  );

  // Здесь добавляется вызов reportError из ErrorHandler
  ErrorHandler().reportError(
    error,
    stackTrace,
    customMessage: 'An error occurred',
  );
  if (kReleaseMode) _recordError(error, stackTrace);
}

void finalizeBootstrap() {
  FlutterNativeSplash.remove();
  log.t('** close NATIVE splash**');
}

Future<void> _recordError(dynamic exception, StackTrace stack) async {
  await FirebaseCrashlytics.instance.recordError(
    exception,
    stack,
    fatal: true,
  );
}

Future<void> _initOrientationApp() async {
  await SystemChrome.setPreferredOrientations(
    [DeviceOrientation.portraitUp],
  );
}
