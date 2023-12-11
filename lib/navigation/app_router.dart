import 'dart:async';

import 'package:collection/collection.dart';
import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:kidneysmart/api/api_client.dart';
import 'package:kidneysmart/core/enum/enum_store.dart';
import 'package:kidneysmart/core/network/dio_log/http_log_list_widget.dart';
import 'package:kidneysmart/core/storage/app_storage.dart';
import 'package:kidneysmart/feature/debug_menu/view/debug_menu_page.dart';
import 'package:kidneysmart/feature/onboarding/vew/onboarding_page.dart';
import 'package:kidneysmart/feature/overlay_widget/view/overlay_widget.dart';
import 'package:kidneysmart/feature/overlay_widget/view/widget/update_hard_app_page.dart';
import 'package:kidneysmart/feature/overlay_widget/view/widget/update_soft_app_page.dart';
import 'package:kidneysmart/feature/splash/view/splash_page.dart';
import 'package:kidneysmart/feature/test_page/device_info/view/device_page.dart';


// ignore_for_file: lines_longer_than_80_chars, no-magic-number,no-equal-arguments,  arguments-ordering
abstract class AppRoute {
  static const String stepCalculator = '/registration/calculator';

  static const String phoneBook = '/phone-book';

  static const String httpLog = '/http-log';

  // static const String docSigningLoan = '/doc_signing_loan';

  static const String dashboard = 'dashboard';
  static const dashboardItem = ['diary', 'profile'];

  static const String firebaseTest = 'firebase_test';
  static const String search = 'search';

  static const testFlashLib = '/test_flash_lib';
}

// ignore: prefer-static-class
final _pageNavigatorKey = GlobalKey<NavigatorState>();
// ignore: prefer-static-class
final _tabNavigatorKey = GlobalKey<NavigatorState>();

class AppRouter {
  // ignore_for_file: avoid-global-state
  static FirebaseAnalytics analytics = FirebaseAnalytics.instance;
  static FirebaseAnalyticsObserver observer =
      FirebaseAnalyticsObserver(analytics: analytics);


  final GoRouter router = GoRouter(
    errorPageBuilder: (context, state) => NoTransitionPage<void>(
      key: state.pageKey,
      child: Center(child: Text(state.error.toString())),
    ),
    // initialLocation: DevicePage.path,
    // initialLocation: AddressStepPage.path,
    // initialLocation: SplashPage.path,
    initialLocation: SplashPage.path,
    // initialLocation: TextFieldPage.path,
    observers: <NavigatorObserver>[observer],
    debugLogDiagnostics: true,
    routes: [
      ShellRoute(
        builder: (_, GoRouterState state, child) {
          return OverlayWidget(goRouterState: state, child: child);
        },
        routes: [
          GoRoute(
            path: DebugMenuPage.path,
            name: DebugMenuPage.name,
            pageBuilder: (context, state) => NoTransitionPage(
              key: state.pageKey,
              child: const DebugMenuPage(),
            ),
          ),
          GoRoute(
            path: SplashPage.path,
            name: SplashPage.name,
            pageBuilder: (context, state) =>
                NoTransitionPage(child: const SplashPage(), key: state.pageKey),
          ),
       
          GoRoute(
            name: UpdateSoftAppPage.name,
            path: UpdateSoftAppPage.path,
            pageBuilder: (context, state) => NoTransitionPage(
              key: state.pageKey,
              child: const UpdateSoftAppPage(),
            ),
          ),
          GoRoute(
            name: UpdateHardAppPage.name,
            path: UpdateHardAppPage.path,
            pageBuilder: (context, state) {
              final store = state.extra != null && state.extra is EnumStore
                  ? state.extra! as EnumStore
                  : null;

              return NoTransitionPage(
                key: state.pageKey,
                child: UpdateHardAppPage(store: store),
              );
            },
          ),
         
          GoRoute(
            name: HttpLogListWidget.name,
            path: HttpLogListWidget.path,
            pageBuilder: (context, state) => NoTransitionPage(
              key: state.pageKey,
              child: const HttpLogListWidget(),
            ),
          ),
          GoRoute(
            name: DevicePage.name,
            path: DevicePage.path,
            pageBuilder: (context, state) =>
                NoTransitionPage(key: state.pageKey, child: const DevicePage()),
          ),
       
        ],
        navigatorKey: _pageNavigatorKey,
      ),
    ],
  );

  Future<void> toAutoRouter({
    required AppStorage storage,
    required ApiClient client,
    bool isPinSuccess = false,
  }) async {
    final isFirstTime = await storage.isFirstStart();
    // final refToken = await storage.getTokenRef();
    final isOnboardingCompleted = await storage.isOnboardingCompleted();
    // final isTestUser = await storage.isTestUser();
    // final phoneSave = await storage.getPhoneNotFormat();

    // final idUser = await storage.getUserId();
    // final remoteConfig = await storage.getRemoteConfigState();

    // if (isTestUser) {
      // router.goNamed(CalculatorTestPage.name);

      // return;
    // }

    if (isFirstTime || !isOnboardingCompleted) {
      final _ = await storage.completeFirstStart();

      router.goNamed(
        OnBoardingPage.name,
      );

      return;
    }

    else {
      router.goNamed(OnBoardingPage.name);
    }
  }

  Future<void> exitApp({
    required AppStorage storage,
  }) async {
    // сохраняем состояние

    // final remoteConfigState = await storage.getRemoteConfigState();
    // await storage.clearAll();
    // await storage.setDebugState(debugState);
    // await storage.setRemoteConfigState(remoteConfigState);
// если выход из приложения
    await storage.setToken('');
    await storage.setTokenRef('');
    await storage.setUserId(null);

    await storage.setTokenDate('');

    await storage.setLastStep('');
    await storage.setPin('');
    await storage.setPhoneFormat('');
    await storage.setPhoneNotFormat('');
    await storage.setPromo('');
    await storage.setPassword('');
    await storage.setPromoTemp('');
    await storage.setTestUser(false);
    await storage.setSmsRequests(0);
    await storage.setUseBiometrics(false);

    await storage.completeOnboarding();
    await storage.completeFirstStart();

    router.goNamed(LoginPage.name);
  }
}
