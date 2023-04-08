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
import 'package:nutrition/core/info/app_info.dart';
import 'package:nutrition/core/log/log.dart';
import 'package:nutrition/core/services/db/firebase/firebase.dart';
import 'package:nutrition/core/services/storage/app_storage_service.dart';
import 'package:nutrition/firebase_options.dart';
import 'package:nutrition/global.dart';
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

          if (DartDefine.IS_DEBUG_MENU_ENABLED) {
            FlutterError.dumpErrorToConsole(details);
          }

          if (kReleaseMode || DartDefine.IS_DEBUG_MENU_ENABLED) {
            // In development mode simply print to console.
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
  // await FirebaseCrashlytics.instance.setCustomKey('phone', '22e2222e22');
  // await FirebaseCrashlytics.instance.setCustomKey('loan', '22e2222e22');
  // await FirebaseCrashlytics.instance.setCustomKey('last_step', '22e2222e22');
  // await FirebaseCrashlytics.instance.setCustomKey('BASE_URL', '22e2222e22');
  // await FirebaseCrashlytics.instance
  //     .setCustomKey('IS_DEBUG_MENU_ENABLED', DartDefine.IS_DEBUG_MENU_ENABLED);
  // await FirebaseCrashlytics.instance
  //     .setCustomKey('IS_ANALYTICS_ENABLED', DartDefine.IS_ANALYTICS_ENABLED);

  // await FirebaseCrashlytics.instance.setUserIdentifier("5858512555e1");

  const typeError = DartDefine.IS_DEBUG_MENU_ENABLED ? 'TEST' : 'PROD';

  await FirebaseCrashlytics.instance.recordError(
    exception,
    stack,
    reason: typeError,
    fatal: true,
  );
}

/* ****************************** */

Future<void> _showSettingAppInLog() async {
  final userAgent = await AppInfo.getUserAgent();
  final packageName = await AppInfo.getPackageName();
  log.wtf(
    'IS_DEBUG_MENU_ENABLED = ${DartDefine.IS_DEBUG_MENU_ENABLED} | IS_ANALYTICS_ENABLED = ${DartDefine.IS_ANALYTICS_ENABLED}\n$packageName\n$userAgent',
  );
}

Future<void> _initOrientationApp() async {
  await SystemChrome.setPreferredOrientations(
    [DeviceOrientation.portraitUp],
  );
}

/// Triggered from bootstrap() to complete futures
Future<List<Override>> overrideProviders() async {
  final sp = await SharedPreferences.getInstance();
  final fb = await FirebaseServiceProvider().load();

  return <Override>[
    sharedPreferencesProvider.overrideWithValue(sp),
    firebaseServiceProvider.overrideWithValue(fb),
  ];
}
