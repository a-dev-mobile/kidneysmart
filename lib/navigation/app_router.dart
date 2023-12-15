import 'dart:async';

import 'package:collection/collection.dart';
import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:kidneysmart/api/api_client.dart';
import 'package:kidneysmart/core/enum/enum_store.dart';
import 'package:kidneysmart/core/service/network/dio_log/http_log_list_widget.dart';
import 'package:kidneysmart/core/storage/local_storage.dart';
import 'package:kidneysmart/feature/debug_menu/view/debug_menu_page.dart';
import 'package:kidneysmart/feature/onboarding/cubit/onboarding_cubit.dart';
import 'package:kidneysmart/feature/onboarding/vew/onboarding_page.dart';
import 'package:kidneysmart/feature/overlay_widget/view/overlay_widget.dart';
import 'package:kidneysmart/feature/overlay_widget/view/widget/update_hard_app_page.dart';
import 'package:kidneysmart/feature/overlay_widget/view/widget/update_soft_app_page.dart';
import 'package:kidneysmart/feature/splash/view/splash_page.dart';

class AppRouter {
  // ignore_for_file: avoid-global-state
  static FirebaseAnalytics analytics = FirebaseAnalytics.instance;
  static FirebaseAnalyticsObserver observer =
      FirebaseAnalyticsObserver(analytics: analytics);

  final GoRouter router = GoRouter(
    errorPageBuilder: (context, state) => MaterialPage<void>(
      key: state.pageKey,
      child: Center(child: Text(state.error.toString())),
    ),
    initialLocation: SplashPage.path,
    observers: <NavigatorObserver>[observer],
    debugLogDiagnostics: true,
    routes: [
      GoRoute(
        path: DebugMenuPage.path,
        name: DebugMenuPage.name,
        pageBuilder: (context, state) => MaterialPage(
          key: state.pageKey,
          child: const DebugMenuPage(),
        ),
      ),
      GoRoute(
        path: SplashPage.path,
        name: SplashPage.name,
        pageBuilder: (context, state) =>
            MaterialPage(child: const SplashPage(), key: state.pageKey),
      ),

      GoRoute(
        name: OnBoardingPage.name,
        path: OnBoardingPage.path,
        pageBuilder: (context, state) => MaterialPage(
          key: state.pageKey,
          child: const OnBoardingPage(),
        ),
      ),
      // GoRoute(
      // name: UpdateSoftAppPage.name,
      // path: UpdateSoftAppPage.path,
      // pageBuilder: (context, state) => MaterialPage(
      // key: state.pageKey,
      // child: const UpdateSoftAppPage(),
      // ),
      // ),
      GoRoute(
        name: UpdateHardAppPage.name,
        path: UpdateHardAppPage.path,
        pageBuilder: (context, state) {
          final store = state.extra != null && state.extra is EnumStore
              ? state.extra! as EnumStore
              : null;

          return MaterialPage(
            key: state.pageKey,
            child: UpdateHardAppPage(store: store),
          );
        },
      ),

      GoRoute(
        name: HttpLogListWidget.name,
        path: HttpLogListWidget.path,
        pageBuilder: (context, state) => MaterialPage(
          key: state.pageKey,
          child: const HttpLogListWidget(),
        ),
      ),
    ],
  );

  Future<void> toAutoRouter({
    required LocalStorage storage,
    required ApiClient client,
    bool isPinSuccess = false,
  }) async {
    // final isFirstTime = await storage.isFirstStart();
    // final refToken = await storage.getTokenRef();
    // final isOnboardingCompleted = await storage.isOnboardingCompleted();
    // final isTestUser = await storage.isTestUser();
    // final phoneSave = await storage.getPhoneNotFormat();

    // final idUser = await storage.getUserId();
    // final remoteConfig = await storage.getRemoteConfigState();

    // if (isTestUser) {
    // router.goNamed(CalculatorTestPage.name);

    // return;
    // }

    // if (isFirstTime) {
      // final _ = await storage.completeFirstStart();

      // router.goNamed(
        // OnBoardingPage.name,
      // );

      // return;
    // } else {
      // router.goNamed(OnBoardingPage.name);
    // }
  }

  Future<void> exitApp({
    required LocalStorage storage,
  }) async {
    // сохраняем состояние

    // final remoteConfigState = await storage.getRemoteConfigState();
    // await storage.clearAll();
    // await storage.setDebugState(debugState);
    // await storage.setRemoteConfigState(remoteConfigState);
// если выход из приложения
    // await storage.setToken('');
    // await storage.setTokenRef('');
    // await storage.setUserId(null);
//
    // await storage.setTokenDate('');
//
    // await storage.setLastStep('');
    // await storage.setPin('');
    // await storage.setPhoneFormat('');
    // await storage.setPhoneNotFormat('');
    // await storage.setPromo('');
    // await storage.setPassword('');
    // await storage.setPromoTemp('');
    // await storage.setTestUser(false);
    // await storage.setSmsRequests(0);
    // await storage.setUseBiometrics(false);
//
    // await storage.completeOnboarding();
    // await storage.completeFirstStart();

    // router.goNamed(LoginPage.name);
  }
}
