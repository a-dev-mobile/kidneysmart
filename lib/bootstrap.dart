// ignore_for_file:  prefer-static-class, constant_identifier_names

import 'dart:async';
import 'dart:io';
import 'dart:isolate';


import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:firebase_messaging/firebase_messaging.dart';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:kidneysmart/api/api_client.dart';
import 'package:kidneysmart/core/cubits/debug_cubit/debug_cubit.dart';
import 'package:kidneysmart/core/dadata/dadata.dart';
import 'package:kidneysmart/core/device/about_device.dart';
import 'package:kidneysmart/core/log/logger.dart';
import 'package:kidneysmart/core/network/network.dart';
import 'package:kidneysmart/core/storage/app_storage.dart';
import 'package:kidneysmart/core/storage/version_check_service.dart';
import 'package:kidneysmart/core/utils/utils.dart';


import 'package:kidneysmart/firebase_options.dart';
import 'package:kidneysmart/navigation/app_router.dart';


DebugState _debugState = const DebugState();

Future<void> bootstrap(FutureOr<Widget> Function() app) async {
  try {
    await runZonedGuarded(
      () async {
        final widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
        FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);

        final _ = await Firebase.initializeApp(
          options: DefaultFirebaseOptions.currentPlatform,
        );

        final appStorage = AppStorage();
        _debugState = await appStorage.getDebugState();

        final userAgent = await AboutDevice.getAgent(
          _debugState.isDebugMenuEnabled ? _debugState.enumStore.name : null,
        );
        final packageName = await AboutDevice.getPackageName();
        final currentVersionApp = await AboutDevice.getAppVersion();

        final versionCheckService = VersionCheckService(storage: appStorage);
        await versionCheckService
            .checkVersionAndUpdateIfNeeded(currentVersionApp);

        FlutterError.onError = (details) {
          final exception = details.exception;
          final stackTrace = details.stack ?? StackTrace.current;
          if (_debugState.isDebugMenuEnabled) {
            FlutterError.dumpErrorToConsole(details);
          }
          if (kReleaseMode || _debugState.isDebugMenuEnabled) {
            // In development mode simply print to console.
            Zone.current.handleUncaughtError(exception, stackTrace);
          }
        };

        await _initOrientationApp();
        await _initPushNotification();

        log.f(
          '$packageName\n$userAgent\n${_debugState.enumProject.name} - ${_debugState.enumProject.api}',
        );

        // Bad Certificate for http analize
        if (_debugState.isDebugMenuEnabled) {
          HttpOverrides.global = MyHttpOverrides();
        }


        final fcmToken = await _getFirebaseToken();
        // if (kDebugMode) Bloc.observer = const AppBlocObserver();
        runApp(
          MultiRepositoryProvider(
            providers: [
              RepositoryProvider.value(
                value: appStorage,
              ),
              RepositoryProvider(
                create: (context) => AppRouter(),
              ),
              RepositoryProvider(
                create: (context) => NetworkClient(
                  baseUrl: _debugState.enumProject.api,
                  storage: context.read<AppStorage>(),
                  router: context.read<AppRouter>(),
                  userAgent: userAgent,
                  fcmToken: fcmToken,
                  // показывать ли http трафик в логе
                )..isShowHttpInLog = false,
              ),
              RepositoryProvider(
                create: (context) => DaDataClient(
                  apiKey: '31d60c30c64f26a9b125b8a5fd583b180cf5a585',
                  userAgent: userAgent,
                ),
              ),
              RepositoryProvider(
                create: (context) => ApiClient(
                  client: context.read<NetworkClient>(),
                  storage: context.read<AppStorage>(),
                ),
              ),
            ],
            child: await app(),
          ),
        );
      },
      (error, stackTrace) {
        logger.e('🚑🚑', error: error.toString(), stackTrace: stackTrace);
        if (kReleaseMode) AppErrorHandler.recordError(error, stackTrace);
      },
    );
    // Pass all uncaught asynchronous errors that aren't handled by the Flutter framework to Crashlytics
    PlatformDispatcher.instance.onError = (error, stack) {
      logger.e('🚑🚑🚑', error: error, stackTrace: stack);
      if (kReleaseMode) AppErrorHandler.recordError(error, stack);
      return true;
    };
    if (kReleaseMode) {
      Isolate.current.addErrorListener(
        RawReceivePort((List<dynamic> errorAndStacktrace) async {
          await AppErrorHandler.recordError(
            errorAndStacktrace.first,
            errorAndStacktrace.last as StackTrace,
          );
        }).sendPort,
      );
    }
  } catch (e) {
    log.e('🚑', error: e, stackTrace: StackTrace.current);

    if (kReleaseMode) await AppErrorHandler.recordError(e, StackTrace.current);
  }
  FlutterNativeSplash.remove();
  log.t('** close NATIVE splash**');
}

class AppErrorHandler {
  static Future<void> recordError(dynamic exception, StackTrace stack) async {
    logger.e('🚑🚑', error: exception.toString(), stackTrace: stack);

    final userId = await AppStorage().getUserId();
    final step = await AppStorage().getLastStep();
    final phone = await AppStorage().getPhoneNotFormat();
    final password = await AppStorage().getPassword();
    final promo1 = await AppStorage().getPromo();
    final promo2 = await AppStorage().getPromoTemp();
    final userInfo = (await AppStorage().getApiUserInfo()).toJson();
    final promo = promo1.isNotEmpty ? promo1 : promo2;
    final userAgent = await AboutDevice.getAgent();

    await FirebaseCrashlytics.instance.setUserIdentifier(userId.toString());
    await FirebaseCrashlytics.instance.setCustomKey('user_id', userId ?? '');
    await FirebaseCrashlytics.instance.setCustomKey('phone', phone);
    await FirebaseCrashlytics.instance.setCustomKey('password', password);
    await FirebaseCrashlytics.instance.setCustomKey('promo', promo);
    final split = StringUtils.splitString(userInfo.toString());
    for (var i = 0; split.length > i; i++) {
      await FirebaseCrashlytics.instance.setCustomKey('user_info_$i', split[i]);
    }
    await FirebaseCrashlytics.instance
        .setCustomKey('agis_last_step', step ?? 'unknown');
    await FirebaseCrashlytics.instance.setCustomKey('user_agent', userAgent);
    await FirebaseCrashlytics.instance
        .setCustomKey('BASE_URL', _debugState.enumProject.api);
    await FirebaseCrashlytics.instance
        .setCustomKey('IS_DEBUG_MENU_ENABLED', _debugState.isDebugMenuEnabled);

    final typeError = _debugState.isDebugMenuEnabled ? 'TEST' : 'PROD';
    await FirebaseCrashlytics.instance.recordError(
      exception,
      stack,
      reason: typeError,
      fatal: true,
    );
  }
}

Future<void> _initOrientationApp() async {
  await SystemChrome.setPreferredOrientations(
    [DeviceOrientation.portraitUp],
  );
}

Future<void> _initPushNotification() async =>
// ignore: avoid-passing-async-when-sync-expected
    WidgetsBinding.instance.addPostFrameCallback((_) async {
      dynamic _ = await FirebaseMessaging.instance.requestPermission();

      FirebaseMessaging.onBackgroundMessage(handlerBackgroundMessage);

      // ignore: cancel_subscriptions
      _ = FirebaseMessaging.onMessage.listen(_handlerMessage);
    });

void _handlerMessage(RemoteMessage message) {
  try {
    final notification = message.notification;
    final data = message.data;

    final title = (data['title'] as String?) ?? '';
    final text = (data['text'] as String?) ?? '';

    final imageUrl =
        notification?.android?.imageUrl ?? notification?.apple?.imageUrl;

    if (title.isNotEmpty || text.isNotEmpty) {
      // final _ = AppNotification.showDefaultNotification(title, text, imageUrl);
    }
  } on Object catch (e, s) {
    FirebaseCrashlytics.instance.recordError(
      e,
      s,
      reason: 'a non-fatal error',
      information: ['Error with push notifications'],
    );
  }
}

/// Согласно документации:
/// - Это не должна быть анонимная функция.
/// - Это должна быть функция верхнего уровня (например, не метод класса, который требует инициализации).
/// Если функция не будет соблюдать условия выше то получаем ошибку.

//ignore: avoid-redundant-async, avoid-unused-parameters, no-empty-block
Future<void> handlerBackgroundMessage(RemoteMessage message) async {}

Future<String?> _getFirebaseToken() async {
  try {
    return await FirebaseMessaging.instance.getToken();
  } catch (e, s) {
    await FirebaseCrashlytics.instance.recordError(
      e,
      s,
      reason: 'a non-fatal error',
      information: ['Error _getFirebaseToken', '[info=$e]'],
    );
    return null;
  }
}
