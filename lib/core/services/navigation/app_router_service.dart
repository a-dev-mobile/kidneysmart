// ignore_for_file: public_member_api_docs, sort_constructors_first, dead_code

import 'dart:async';

import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:nutrition/core/services/navigation/models/app_state.dart';
import 'package:nutrition/core/services/storage/app_storage_service.dart';
import 'package:nutrition/features/debug_menu/debug_menu.dart';
import 'package:nutrition/features/info_html/info_html.dart';

import 'package:nutrition/features/onboarding/vew/onboarding_page.dart';
import 'package:nutrition/features/overlay_widget/view/view.dart';
import 'package:nutrition/features/registration/name/name.dart';
import 'package:nutrition/features/splash/splash.dart';
import 'package:nutrition/features/steps/activity/activity.dart';
import 'package:nutrition/features/steps/birthday/birthday.dart';
import 'package:nutrition/features/steps/ckd/ckd.dart';
import 'package:nutrition/features/steps/diabetes/diabetes.dart';
import 'package:nutrition/features/steps/gender/gender.dart';
import 'package:nutrition/features/steps/height/height.dart';
import 'package:nutrition/features/steps/hypertension/hypertension.dart';
import 'package:nutrition/features/steps/urine/urine.dart';
import 'package:nutrition/features/steps/weight/weight.dart';
import 'package:nutrition/features/update_db/update_db.dart';
import 'package:nutrition/global/global.dart';

final appRouterServiceProvider = Provider<AppRouterService>((ref) {
  final storage = ref.read(appStorageServiceProvider);

  return AppRouterService(storage: storage);
});

class AppRouterService {
  AppRouterService({required AppStorageService storage}) : _storage = storage;

  // private navigators
  static final _rootNavigatorKey = GlobalKey<NavigatorState>();
  static final _pageNavigatorKey = GlobalKey<NavigatorState>();

  final AppStorageService _storage;

  final GoRouter router = GoRouter(
    // initialLocation: DashBoardPage.path,
    initialLocation: SplashPage.path,
    // initialLocation: HealthProfilePage.path,
    observers: <NavigatorObserver>[
      FirebaseAnalyticsObserver(analytics: FirebaseAnalytics.instance),
    ],
    // ignore: avoid_redundant_argument_values
    debugLogDiagnostics: AppDartDefineConst.IS_DEBUG_MENU_ENABLED,
    navigatorKey: _rootNavigatorKey,

    routes: [
      ShellRoute(
        builder: (_, GoRouterState state, child) {
          return OverlayWidget(goRouterState: state, child: child);
        },
        routes: [
          GoRoute(
            path: DebugMenuPage.path,
            name: DebugMenuPage.name,
            pageBuilder: (context, state) => MaterialPage<void>(
              key: state.pageKey,
              child: const DebugMenuPage(),
            ),
          ),
          GoRoute(
            path: SplashPage.path,
            name: SplashPage.name,
            pageBuilder: (context, state) => MaterialPage<void>(
              key: state.pageKey,
              child: const SplashPage(),
            ),
          ),
          GoRoute(
            path: RegistrationNamePage.path,
            name: RegistrationNamePage.name,
            pageBuilder: (context, state) => MaterialPage<void>(
              key: state.pageKey,
              child: const RegistrationNamePage(),
            ),
          ),
          GoRoute(
            path: OnboardingPage.path,
            name: OnboardingPage.name,
            pageBuilder: (context, state) => MaterialPage<void>(
              key: state.pageKey,
              child: const OnboardingPage(),
            ),
          ),
          // GoRoute(
          //   path: HealthProfilePage.path,
          //   name: HealthProfilePage.name,
          //   pageBuilder: (context, state) => MaterialPage<void>(
          //     key: state.pageKey,
          //     child: const HealthProfilePage(),
          //   ),
          // ),
          GoRoute(
            path: InfoHtmlPage.path,
            name: InfoHtmlPage.name,
            pageBuilder: (context, state) => MaterialPage<void>(
              key: state.pageKey,
              child: InfoHtmlPage(
                enumInfoType: state.extra! as EnumInfoType,
              ),
            ),
          ),
          // GoRoute(
          //   path: CalcNutrientPage.path,
          //   name: CalcNutrientPage.name,
          //   pageBuilder: (context, state) => MaterialPage<void>(
          //     key: state.pageKey,
          //     child: const CalcNutrientPage(),
          //   ),
          // ),
          GoRoute(
            path: GenderPage.path,
            name: GenderPage.name,
            pageBuilder: (context, state) => MaterialPage<void>(
              key: state.pageKey,
              child: const GenderPage(),
            ),
          ),

          GoRoute(
            path: UpdateDbPage.path,
            name: UpdateDbPage.name,
            pageBuilder: (context, state) => MaterialPage<void>(
              key: state.pageKey,
              child: const UpdateDbPage(),
            ),
          ),
          GoRoute(
            path: BirthdayPage.path,
            name: BirthdayPage.name,
            pageBuilder: (context, state) => MaterialPage<void>(
              key: state.pageKey,
              child: const BirthdayPage(),
            ),
          ),
          GoRoute(
            path: HeightPage.path,
            name: HeightPage.name,
            pageBuilder: (context, state) => MaterialPage<void>(
              key: state.pageKey,
              child: const HeightPage(),
            ),
          ),
          GoRoute(
            path: WeightPage.path,
            name: WeightPage.name,
            pageBuilder: (context, state) => MaterialPage<void>(
              key: state.pageKey,
              child: const WeightPage(),
            ),
          ),
          GoRoute(
            path: ActivityPage.path,
            name: ActivityPage.name,
            pageBuilder: (context, state) => MaterialPage<void>(
              key: state.pageKey,
              child: const ActivityPage(),
            ),
          ),
          GoRoute(
            path: HypertensionPage.path,
            name: HypertensionPage.name,
            pageBuilder: (context, state) => MaterialPage<void>(
              key: state.pageKey,
              child: const HypertensionPage(),
            ),
          ),
          GoRoute(
            path: DiabetesPage.path,
            name: DiabetesPage.name,
            pageBuilder: (context, state) => MaterialPage<void>(
              key: state.pageKey,
              child: const DiabetesPage(),
            ),
          ),
          GoRoute(
            path: UrinePage.path,
            name: UrinePage.name,
            pageBuilder: (context, state) => MaterialPage<void>(
              key: state.pageKey,
              child: const UrinePage(),
            ),
          ),
          GoRoute(
            path: CkdPage.path,
            name: CkdPage.name,
            pageBuilder: (context, state) => MaterialPage<void>(
              key: state.pageKey,
              child: const CkdPage(),
            ),
          ),
        ],
        navigatorKey: _pageNavigatorKey,
      ),
    ],

    // ShellRoute(
    //   // builder: (_, GoRouterState state, child) {
    //     // return OverlayWidget(goRouterState: state, child: child);
    //   // },
    //   ,
    //   navigatorKey: _pageNavigatorKey,
    // ),

    // GoRoute(
    //   path: SettingPage.path,
    //   name: SettingPage.name,
    //   pageBuilder: (context, state) => MaterialPage<void>(
    //     key: state.pageKey,
    //     child: const SettingPage(),
    //   ),
    // ),
    // GoRoute(
    //   path: RegistrationPage.path,
    //   name: RegistrationPage.name,
    //   pageBuilder: (context, state) => MaterialPage<void>(
    //     key: state.pageKey,
    //     child: const RegistrationPage(),
    //   ),
    // ),

    // GoRoute(
    //   path: OnBoardingPage.path,
    //   name: OnBoardingPage.name,
    //   pageBuilder: (context, state) => MaterialPage<void>(
    //     key: state.pageKey,
    //     child: const OnBoardingPage(),
    //   ),
    // ),
    // GoRoute(
    //   path: TestAppPage.path,
    //   name: TestAppPage.name,
    //   pageBuilder: (context, state) => MaterialPage<void>(
    //     key: state.pageKey,
    //     child: const TestAppPage(),
    //   ),
    // ),

    errorPageBuilder: (context, state) => NoTransitionPage<void>(
      key: state.pageKey,
      child: Center(child: Text(state.error.toString())),
    ),
  );

  Future<void> nextPage(AppState appState) async {
    // router.goNamed(HealthProfilePage.name);

    if (appState.isUseUpdateDB) {
      router.goNamed(UpdateDbPage.name);

      return;
    }

    if (appState.isFirstTime || !appState.isOnboardingCompleted) {
      await _storage.setAppState(appState.copyWith(isFirstTime: false));

      router.goNamed(OnboardingPage.name);

      return;
    }

    if (appState.isOnboardingCompleted && !appState.isFirstTime) {
      router.goNamed(GenderPage.name);

      return;
    }

    // if (!isOnboardingCompleted) {
    //   final _ = _storage.completeFirstStart();
    //   router.goNamed(OnBoardingPage.name);

    //   return;
    // }
    router.goNamed(SplashPage.name);
  }

  Future<void> exitApp() async {
    await _storage.clearAll();
    // await _storage.completeOnboarding();
    // await _storage.completeFirstStart();

    router.goNamed(SplashPage.name);
  }
}
