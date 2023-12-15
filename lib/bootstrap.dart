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
import 'package:kidneysmart/app_bloc_observer.dart';

import 'package:kidneysmart/core/cubits/debug_cubit/debug_cubit.dart';
import 'package:kidneysmart/core/dadata/dadata.dart';
import 'package:kidneysmart/core/device/about_device.dart';
import 'package:kidneysmart/core/enum/enum_log_level.dart';
import 'package:kidneysmart/core/log/logger.dart';

import 'package:kidneysmart/core/service/error_handler/error_handler.dart';
import 'package:kidneysmart/core/service/error_handler/model/app_error.dart';
import 'package:kidneysmart/core/service/network/network.dart';
import 'package:kidneysmart/core/storage/local_storage.dart';
import 'package:kidneysmart/core/storage/version_check_service.dart';
import 'package:kidneysmart/core/utils/utils.dart';

import 'package:kidneysmart/firebase_options.dart';
import 'package:kidneysmart/navigation/app_router.dart';

DebugState globalDebugState = const DebugState();

Future<void> bootstrap(FutureOr<Widget> Function() app) async {
  await runZonedGuarded(
    () async {
      final widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
      FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
      await Firebase.initializeApp(
        options: DefaultFirebaseOptions.currentPlatform,
      );

      final appStorage = LocalStorage();
      ErrorHandler.initialize(appStorage, FirebaseCrashlytics.instance);

      _configureFlutterErrorHandling();
      globalDebugState = await appStorage.getDebugState();

      final userAgent = await AboutDevice.getAgent(
        globalDebugState.isDebugMenuEnabled
            ? globalDebugState.enumStore.name
            : null,
      );
      final packageName = await AboutDevice.getPackageName();
      final currentVersionApp = await AboutDevice.getAppVersion();

      final versionCheckService = VersionCheckService(storage: appStorage);
      await versionCheckService
          .checkVersionAndUpdateIfNeeded(currentVersionApp);

      await _initOrientationApp();
      await _initPushNotification();

      log.f(
        '$packageName\n$userAgent\n${globalDebugState.enumProject.name} - ${globalDebugState.enumProject.api}',
      );

      final fcmToken = await _getFirebaseToken();
      if (kDebugMode) Bloc.observer = const AppBlocObserver();
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
                baseUrl: globalDebugState.enumProject.api,
                storage: context.read<LocalStorage>(),
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
                storage: context.read<LocalStorage>(),
              ),
            ),
          ],
          child: await app(),
        ),
      );
    },
    (error, stackTrace) {
      ErrorHandler.instance.recordError(
        AppError.uncaughtError(
          message: error.toString(),
          stackTrace: stackTrace,
        ),
      );
    },
  );
  FlutterNativeSplash.remove();
  log.t('** close NATIVE splash**');

  // Platform-level error handling
  _configurePlatformErrorHandling();
}

void _configureFlutterErrorHandling() {
  FlutterError.onError = (FlutterErrorDetails details) {
    ErrorHandler.instance.recordError(
      AppError.frameworkError(
        message: details.exceptionAsString(),
        details: details.toDiagnosticsNode().toJsonMap(
              const DiagnosticsSerializationDelegate(
                // Adjust the properties as needed
                includeProperties:
                    true, // Whether to include properties of the node
                subtreeDepth:
                    1, // Depth to which the subtree should be serialized
              ),
            ),
        stackTrace: details.stack,
        isFatal: true,
      ),
    );
  };
}

void _configurePlatformErrorHandling() {
  PlatformDispatcher.instance.onError = (error, stackTrace) {
    ErrorHandler.instance.recordError(
      AppError.platformError(
        message: error.toString(),
        stackTrace: stackTrace,
      ),
    );
    return true;
  };
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
   ErrorHandler.instance.recordError(
        AppError.apiError(
            message: 'Error with push notifications',
            details: {'reason': 'a non-fatal error', 'additionalInfo': 'Error details'},
            stackTrace: s,
      ),
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
  } on Object catch (e, s) {
    await ErrorHandler.instance.recordError(
      AppError.apiError(
        message: 'Error retrieving Firebase token',
        details: {'reason': 'Error _getFirebaseToken', 'info': e.toString()},
        stackTrace: s,
      ),
    );
    return null;
  }
}
