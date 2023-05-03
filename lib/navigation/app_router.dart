// ignore_for_file: public_member_api_docs, sort_constructors_first, dead_code

import 'dart:async';

import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:nutrition/features/debug_menu/debug_menu.dart';
import 'package:nutrition/features/info_html/info_html.dart';
import 'package:nutrition/features/onboarding/vew/onboarding_page.dart';
import 'package:nutrition/features/overlay_widget/view/view.dart';
import 'package:nutrition/features/setting/setting.dart';
import 'package:nutrition/features/splash/splash.dart';
import 'package:nutrition/features/steps/activity/activity.dart';
import 'package:nutrition/features/steps/birthday/birthday.dart';
import 'package:nutrition/features/steps/ckd/ckd.dart';
import 'package:nutrition/features/steps/diabetes/diabetes.dart';
import 'package:nutrition/features/steps/gender/gender.dart';
import 'package:nutrition/features/steps/height/height.dart';
import 'package:nutrition/features/steps/hypertension/hypertension.dart';
import 'package:nutrition/features/steps/name/name.dart';
import 'package:nutrition/features/steps/urine_input/urine_input.dart';
import 'package:nutrition/features/steps/urine_select/urine_select.dart';

import 'package:nutrition/features/steps/weight/weight.dart';
import 'package:nutrition/features/welcome/view/welcome_page.dart';
import 'package:nutrition/global/global.dart';
import 'package:nutrition/navigation/models/app_state.dart';
import 'package:nutrition/shared/data/local/shared_prefs/app_storage.dart';

final appRouterProvider = Provider<AppRouter>((ref) {
  final storage = ref.read(appStorageProvider);

  return AppRouter(storage: storage);
});

class AppRouter {
  AppRouter({required AppStorage storage}) : _storage = storage;

  // private navigators
  static final _rootNavigatorKey = GlobalKey<NavigatorState>();
  static final _pageNavigatorKey = GlobalKey<NavigatorState>();

  final AppStorage _storage;

  final GoRouter router = GoRouter(
    // initialLocation: DashBoardPage.path,
    initialLocation: SplashPage.path,
    // initialLocation: HealthProfilePage.path,
    observers: <NavigatorObserver>[
      FirebaseAnalyticsObserver(analytics: FirebaseAnalytics.instance),
    ],
    // ignore: avoid_redundant_argument_values
    debugLogDiagnostics: DartDefineConst.IS_DEBUG_MENU_ENABLED,
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
            path: OnboardingPage.path,
            name: OnboardingPage.name,
            pageBuilder: (context, state) => MaterialPage<void>(
              key: state.pageKey,
              child: const OnboardingPage(),
            ),
          ),
          GoRoute(
            path: WelcomePage.path,
            name: WelcomePage.name,
            pageBuilder: (context, state) => MaterialPage<void>(
              key: state.pageKey,
              child: const WelcomePage(),
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
            path: StepGenderPage.path,
            name: StepGenderPage.name,
            pageBuilder: (context, state) => MaterialPage<void>(
              key: state.pageKey,
              child: const StepGenderPage(),
            ),
          ),
          GoRoute(
            path: StepNamePage.path,
            name: StepNamePage.name,
            pageBuilder: (context, state) => MaterialPage<void>(
              key: state.pageKey,
              child: const StepNamePage(),
            ),
          ),
          GoRoute(
            path: SettingPage.path,
            name: SettingPage.name,
            pageBuilder: (context, state) => MaterialPage<void>(
              key: state.pageKey,
              child: const SettingPage(),
            ),
          ),
          GoRoute(
            path: StepBirthdayPage.path,
            name: StepBirthdayPage.name,
            pageBuilder: (context, state) => MaterialPage<void>(
              key: state.pageKey,
              child: const StepBirthdayPage(),
            ),
          ),
          GoRoute(
            path: StepHeightPage.path,
            name: StepHeightPage.name,
            pageBuilder: (context, state) => MaterialPage<void>(
              key: state.pageKey,
              child: const StepHeightPage(),
            ),
          ),
          GoRoute(
            path: StepWeightPage.path,
            name: StepWeightPage.name,
            pageBuilder: (context, state) => MaterialPage<void>(
              key: state.pageKey,
              child: const StepWeightPage(),
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
            path: StepHypertensionPage.path,
            name: StepHypertensionPage.name,
            pageBuilder: (context, state) => MaterialPage<void>(
              key: state.pageKey,
              child: const StepHypertensionPage(),
            ),
          ),
          GoRoute(
            path: StepDiabetesPage.path,
            name: StepDiabetesPage.name,
            pageBuilder: (context, state) => MaterialPage<void>(
              key: state.pageKey,
              child: const StepDiabetesPage(),
            ),
          ),
          GoRoute(
            path: StepUrineInputPage.path,
            name: StepUrineInputPage.name,
            pageBuilder: (context, state) => MaterialPage<void>(
              key: state.pageKey,
              child: const StepUrineInputPage(),
            ),
          ),
          GoRoute(
            path: StepUrineSelectPage.path,
            name: StepUrineSelectPage.name,
            pageBuilder: (context, state) => MaterialPage<void>(
              key: state.pageKey,
              child: const StepUrineSelectPage(),
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

    if (appState.isFirstTime || !appState.isOnboardingCompleted) {
      await _storage.setAppState(appState.copyWith(isFirstTime: false));

      router.goNamed(WelcomePage.name);

      return;
    }

    if (appState.isOnboardingCompleted && !appState.isFirstTime) {
      router.goNamed(StepGenderPage.name);

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
