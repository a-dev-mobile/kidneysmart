// ignore_for_file: prefer_static_class, constant_identifier_names

import 'dart:async';

import 'package:dartlog/dartlog.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:kidneysmart/app/app.dart';
import 'package:dartlog/dartlog.dart';
import 'package:kidneysmart/core/notifier/debug_notifier/debug_notifier.dart';
import 'package:kidneysmart/core/notifier/screen_tracker_notifier/screen_tracker_notifier.dart';

import 'package:kidneysmart/core/observer/provider_observer.dart';
import 'package:kidneysmart/core/service/app_device/app_device.dart';
import 'package:kidneysmart/core/service/network/network_client.dart';

import 'package:kidneysmart/core/storage/app_storage.dart';
import 'package:kidneysmart/firebase_options.dart';
import 'package:kidneysmart/navigation/app_router.dart';
import 'package:shared_preferences/shared_preferences.dart';

late final AppStorage _localStorage;
late final ScreenTrackerNotifier _screenTrackerNotifier;
late final AppRouter _appRouter;
late final AppDevice _appDevice;
late final NetworkClient _networkClient;

Future<void> bootstrap(FutureOr<Widget> Function() app) async {
  try {
    await runZonedGuarded(
      () async {
        await initializeApp();
        Logger.initialize(
          packagePrefix: 'package:kidneysmart/',
          basePath: r'c:\DEV\MY\MY_GITHUB\kidneysmart\',
        );

        _configureFlutterErrorHandling();
        _configurePlatformErrorHandling();
        await _initOrientationApp();
        runApp(
          ProviderScope(
            overrides: [
              screenTrackerNotifierProvider
                  .overrideWith(() => _screenTrackerNotifier),
              appStorageProvider.overrideWithValue(_localStorage),
              appRouterProvider.overrideWithValue(_appRouter),
              networkClientProvider.overrideWithValue(_networkClient),
              appDeviceProvider.overrideWithValue(_appDevice),
            ],
            observers: [if (kDebugMode) AppProviderObserver()],
            child: const App(),
          ),
        );
      },
      (error, stackTrace) => handleError('runZonedGuarded', error, stackTrace),
    );
  } catch (e, s) {
    handleError('bootstrap', e, s);
  }
  finalizeBootstrap();
}

Future<void> initializeApp() async {
  try {
    final widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
    FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
    await Firebase.initializeApp(
      options: DefaultFirebaseOptions.currentPlatform,
    );
    final sharedPreferences = await SharedPreferences.getInstance();

    _localStorage =
        AppStorage(sharedPreferences: sharedPreferences, isShowLog: true);
    _screenTrackerNotifier = ScreenTrackerNotifier();
    _appRouter = AppRouter(_screenTrackerNotifier);
    // Создание и инициализация AboutDeviceNotifier
    _appDevice = AppDevice();
    await _appDevice.load();

    _networkClient = NetworkClient(
      userAgent: _appDevice.userAgent,
      router: _appRouter,
      storage: _localStorage,
    );
  } catch (e, s) {
    handleError('initializeApp', e, s);
    rethrow;
  }
}

void _configureFlutterErrorHandling() {
  FlutterError.onError = (details) {
    FlutterError.dumpErrorToConsole(details);
    handleError(
      'FlutterError',
      details.exception,
      details.stack ?? StackTrace.current,
    );
  };
}

void _configurePlatformErrorHandling() {
  PlatformDispatcher.instance.onError = (error, stackTrace) {
    handleError('PlatformDispatcher', error, stackTrace);
    return true;
  };
}

void handleError(String context, dynamic error, StackTrace stackTrace) {
  Logger.error(
    'Error in $context',
    error,
    stackTrace,
  );
}

void finalizeBootstrap() {
  FlutterNativeSplash.remove();
  Logger.info('Application initialized successfully.');
}

Future<void> _initOrientationApp() async {
  try {
    await SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp],
    );
  } catch (e, s) {
    handleError('_initOrientationApp', e, s);
    rethrow;
  }
}
