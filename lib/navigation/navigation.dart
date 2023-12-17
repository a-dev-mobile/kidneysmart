import 'dart:async';

import 'package:flutter/material.dart';

import 'package:go_router/go_router.dart';
import 'package:kidneysmart/core/notifier/page_tracker_notifier.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'package:kidneysmart/feature/splash/view/splash_page%20copy.dart';

import 'package:kidneysmart/feature/splash/view/splash_page.dart';
import 'package:kidneysmart/navigation/custom_router_observer.dart';

part 'navigation.g.dart';

@Riverpod(keepAlive: true)
Navigation navigation(NavigationRef ref) {
  return throw UnimplementedError('init with override');
}

class Navigation {
  Navigation(this.pageTrackerNotifier) {
    router = _createRouter();
  }
  late final GoRouter router;
  final PageTrackerNotifier pageTrackerNotifier;
  GoRouter _createRouter() {
    return GoRouter(
      errorPageBuilder: (context, state) => MaterialPage<void>(
        key: state.pageKey,
        child: Center(child: Text(state.error.toString())),
      ),
      initialLocation: SplashPage.path,
      observers: <NavigatorObserver>[CustomRouterObserver(pageTrackerNotifier)],
      debugLogDiagnostics: true,
      routes: [
        GoRoute(
          path: SplashPage.path,
          name: SplashPage.name,
          pageBuilder: (context, state) => MaterialPage(
            key: state.pageKey,
            name: state.name,
            child: const SplashPage(),
          ),
        ),
        GoRoute(
          path: SplashPage2.path,
          name: SplashPage2.name,
          pageBuilder: (context, state) => MaterialPage(
            key: state.pageKey,
            name: state.name,
            child: const SplashPage2(),
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
      ],
    );
  }

  Future<void> toAutoRouter() async {
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
}
