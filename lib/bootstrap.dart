// ignore_for_file: constant_identifier_names, lines_longer_than_80_chars

import 'dart:async';
import 'dart:isolate';

import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:kidneysmart/firebase_options.dart';
import 'package:kidneysmart/global/global.dart';
import 'package:kidneysmart/shared/app/info/app_info.dart';
import 'package:kidneysmart/shared/data/local/shared_prefs/app_storage.dart';
import 'package:kidneysmart/shared/log/log.dart';
import 'package:shared_preferences/shared_preferences.dart';

// ignore: prefer-static-class
Future<void> bootstrap(FutureOr<Widget> Function() app) async {
  try {
    await runZonedGuarded(
      () async {
        final widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
        FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);

        final _ = await Firebase.initializeApp(
          options: DefaultFirebaseOptions.currentPlatform,
        );

        FlutterError.onError = (details) {
          final exception = details.exception;
          final stackTrace = details.stack ?? StackTrace.current;

          if (DartDefineConst.IS_DEBUG_MENU_ENABLED) {
            FlutterError.dumpErrorToConsole(details);
            Zone.current.handleUncaughtError(exception, stackTrace);
          }
        };

        await _initOrientationApp();

        await _showSettingAppInLog();

        // prepare await provider
        final overrides = await overrideProviders();

        runApp(
          ProviderScope(
            overrides: overrides,
            observers: [if (kDebugMode) LogRiverpod()],
            child: await app(),
          ),
        );
      },
      (error, stackTrace) {
        logger.e('🚑🚑', error.toString(), stackTrace);

        _recordError(error, stackTrace);
      },
    );
    FlutterNativeSplash.remove();
    log.v('** close NATIVE splash**');

    // Pass all uncaught asynchronous errors that aren't handled by the Flutter framework to Crashlytics
    PlatformDispatcher.instance.onError = (error, stack) {
      logger.e('🚑🚑🚑', error, stack);
      _recordError(error, stack);

      return true;
    };
    Isolate.current.addErrorListener(
      RawReceivePort((List<dynamic> errorAndStacktrace) async {
        await _recordError(
          errorAndStacktrace.first,
          errorAndStacktrace.last as StackTrace,
        );
      }).sendPort,
    );
  } catch (e) {
    log.e(e, '🚑', StackTrace.current);

    await _recordError(e, StackTrace.current);
  }
}

Future<void> _recordError(dynamic exception, StackTrace stack) async {
  final typeError = _getErrorType();

  await FirebaseCrashlytics.instance.recordError(
    exception,
    stack,
    reason: typeError,
    fatal: true,
  );
}

String _getErrorType() =>
    DartDefineConst.IS_DEBUG_MENU_ENABLED ? 'TEST' : 'PROD';

// Show information about the app in the logcat
Future<void> _showSettingAppInLog() async {
  final userAgent = await AppInfo.getUserAgent();
  final packageName = await AppInfo.getPackageName();
  log.wtf(
    'IS_DEBUG_MENU_ENABLED = ${DartDefineConst.IS_DEBUG_MENU_ENABLED}\n$packageName\n$userAgent',
  );
}

// Initialize the orientation of the app to portrait up
Future<void> _initOrientationApp() async {
  await SystemChrome.setPreferredOrientations(
    [DeviceOrientation.portraitUp],
  );
}

/// Triggered from bootstrap() to complete futures
Future<List<Override>> overrideProviders() async {
  final sp = await SharedPreferences.getInstance();
  // final db = await DbProvider().load();

  return <Override>[
    sharedPreferencesProvider.overrideWithValue(sp),
    // dbProvider.overrideWithValue(db),
  ];
}
