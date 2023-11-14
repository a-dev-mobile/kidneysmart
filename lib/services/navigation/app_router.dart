import 'dart:async';

import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:flutter/material.dart';

import 'package:go_router/go_router.dart';
import 'package:kidneysmart/features/debug_menu/view/debug_menu_page.dart';
import 'package:kidneysmart/features/failure_internet/failure_internet.dart';
import 'package:kidneysmart/features/overlay_widget/view/overlay_widget.dart';
import 'package:kidneysmart/features/overlay_widget/view/widget/update_hard_app_page.dart';
import 'package:kidneysmart/features/overlay_widget/view/widget/update_soft_app_page.dart';
import 'package:kidneysmart/features/splash/view/splash_page.dart';
import 'package:kidneysmart/services/network/dio_log/dio_log.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'app_router.g.dart';

@riverpod
AppRouter appRouter(AppRouterRef ref) {
  return throw UnimplementedError('init with override');
}

// ignore: prefer-static-class
final _pageNavigatorKey = GlobalKey<NavigatorState>();
// ignore: prefer-static-class
final _tabNavigatorKey = GlobalKey<NavigatorState>();

class AppRouter {

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
            pageBuilder: (context, state) => NoTransitionPage(
              key: state.pageKey,
              child: const SplashPage(),
            ),
          ),
          GoRoute(
            name: FailureInternet.name,
            path: FailureInternet.path,
            pageBuilder: (context, state) => NoTransitionPage(
              key: state.pageKey,
              child: const FailureInternet(),
            ),
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
            pageBuilder: (context, state) => NoTransitionPage(
              key: state.pageKey,
              child: const UpdateHardAppPage(),
            ),
          ),
          GoRoute(
            name: HttpLogListWidget.name,
            path: HttpLogListWidget.path,
            pageBuilder: (context, state) => NoTransitionPage(
              key: state.pageKey,
              child: const HttpLogListWidget(),
            ),
          ),
        ],
    
  );

  Future<void> toAutoRouter() async {}
}
