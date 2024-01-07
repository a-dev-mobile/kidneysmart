import 'dart:async';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:kidneysmart/core/notifier/page_tracker_notifier/page_tracker_notifier.dart';

import 'package:kidneysmart/core/service/network/dio_log/http_log_list_widget.dart';
import 'package:kidneysmart/feature/debug_menu/view/debug_menu_page.dart';
import 'package:kidneysmart/feature/login/view/login_page.dart';
import 'package:kidneysmart/feature/overlay/view/app_update_page.dart';
import 'package:kidneysmart/feature/overlay/view/widget/app_update_hard_page.dart';
import 'package:kidneysmart/feature/overlay/view/widget/no_internet_widget.dart';
import 'package:kidneysmart/feature/password_create/view/password_create_page.dart';
import 'package:kidneysmart/feature/password_entry/view/password_entry_page.dart';
import 'package:kidneysmart/feature/setting/view/setting_page.dart';

import 'package:kidneysmart/feature/splash/view/splash_page.dart';
import 'package:kidneysmart/feature/verification_code/view/verification_code_page.dart';
import 'package:kidneysmart/feature/welcome/view/welcome_page.dart';
import 'package:kidneysmart/navigation/custom_router_observer.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'app_router.g.dart';

@Riverpod(keepAlive: true)
AppRouter appRouter(AppRouterRef ref) {
  return throw UnimplementedError('init with override');
}

class AppRouter {
  AppRouter(this.pageTrackerNotifier) {
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
          path: SettingPage.path,
          name: SettingPage.name,
          pageBuilder: (context, state) => MaterialPage(
            key: state.pageKey,
            name: state.name,
            child: const SettingPage(),
          ),
        ),
        GoRoute(
          path: LoginPage.path,
          name: LoginPage.name,
          pageBuilder: (context, state) => MaterialPage(
            key: state.pageKey,
            name: state.name,
            child: const LoginPage(),
          ),
        ),

        GoRoute(
          path: DebugMenuPage.path,
          name: DebugMenuPage.name,
          pageBuilder: (context, state) => MaterialPage(
            key: state.pageKey,
            name: state.name,
            child: const DebugMenuPage(),
          ),
        ),
        GoRoute(
          path: PasswordCreatePage.path,
          name: PasswordCreatePage.name,
          pageBuilder: (context, state) => MaterialPage(
            key: state.pageKey,
            name: state.name,
            child: const PasswordCreatePage(),
          ),
        ),
           GoRoute(
          path: PasswordEntryPage.path,
          name: PasswordEntryPage.name,
          pageBuilder: (context, state) => MaterialPage(
            key: state.pageKey,
            name: state.name,
            child: const PasswordEntryPage(),
          ),
        ),
          GoRoute(
          path: VerificationCodePage.path,
          name: VerificationCodePage.name,
          pageBuilder: (context, state) => MaterialPage(
            key: state.pageKey,
            name: state.name,
            child: const VerificationCodePage(),
          ),
        ),
        GoRoute(
          path: WelcomePage.path,
          name: WelcomePage.name,
          pageBuilder: (context, state) => MaterialPage(
            key: state.pageKey,
            name: state.name,
            child: const WelcomePage(),
          ),
        ),
        GoRoute(
          path: HttpLogListWidget.path,
          name: HttpLogListWidget.name,
          pageBuilder: (context, state) => MaterialPage(
            key: state.pageKey,
            name: state.name,
            child: const HttpLogListWidget(),
          ),
        ),
        GoRoute(
          path: AppUpdateHardPage.path,
          name: AppUpdateHardPage.name,
          pageBuilder: (context, state) => MaterialPage(
            key: state.pageKey,
            name: state.name,
            child: const AppUpdateHardPage(url: ''),
          ),
        ),
        GoRoute(
          path: AppUpdatePage.path,
          name: AppUpdatePage.name,
          pageBuilder: (context, state) => MaterialPage(
            key: state.pageKey,
            name: state.name,
            child: const AppUpdatePage(),
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
