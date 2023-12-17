// ignore_for_file: prefer_static_class, constant_identifier_names

import 'dart:async';
import 'dart:isolate';

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:kidneysmart/app/view/app.dart';
import 'package:kidneysmart/core/log/logger.dart';
import 'package:kidneysmart/core/notifier/page_tracker_notifier.dart';
import 'package:kidneysmart/core/observer/provider_observer.dart';
import 'package:kidneysmart/core/storage/local_storage.dart';
import 'package:kidneysmart/firebase_options.dart';
import 'package:kidneysmart/navigation/navigation.dart';
import 'package:shared_preferences/shared_preferences.dart';

late final LocalStorage _localStorage;
late final PageTrackerNotifier _pageTrackerNotifier;
late final Navigation _navigation;

Future<void> bootstrap(FutureOr<Widget> Function() app) async {
  try {
    await runZonedGuarded(
      () async {
        await initializeApp();

        _configureFlutterErrorHandling();
        _configurePlatformErrorHandling();
        await _initOrientationApp();
        runApp(
          ProviderScope(
            overrides: [
              pageTrackerNotifierProvider
                  .overrideWith(() => _pageTrackerNotifier),
              localStorageProvider.overrideWithValue(_localStorage),
              navigationProvider.overrideWithValue(_navigation),
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
        LocalStorage(sharedPreferences: sharedPreferences, isShowLog: true);
    _pageTrackerNotifier = PageTrackerNotifier();
    _navigation = Navigation(_pageTrackerNotifier);
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
    error: error,
    stackTrace: stackTrace,
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
