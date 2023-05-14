// ignore_for_file: public_member_api_docs, sort_constructors_first, dead_code

import 'dart:async';

import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:kidneysmart/features/calc_nutient/calc_nutient.dart';
import 'package:kidneysmart/features/debug_menu/debug_menu.dart';
import 'package:kidneysmart/features/info_html/info_html.dart';
import 'package:kidneysmart/features/onboarding/vew/onboarding_page.dart';
import 'package:kidneysmart/features/overlay_widget/view/view.dart';
import 'package:kidneysmart/features/setting/setting.dart';
import 'package:kidneysmart/features/splash/splash.dart';
import 'package:kidneysmart/features/steps/activity/activity.dart';
import 'package:kidneysmart/features/steps/birthday/birthday.dart';
import 'package:kidneysmart/features/steps/ckd_query/ckd_query.dart';
import 'package:kidneysmart/features/steps/ckd_select/ckd.dart';
import 'package:kidneysmart/features/steps/diabetes/diabetes.dart';
import 'package:kidneysmart/features/steps/dialysiis_query/dialysiis_query.dart';
import 'package:kidneysmart/features/steps/dialysis_type/dialysis_type.dart';
import 'package:kidneysmart/features/steps/gender/gender.dart';
import 'package:kidneysmart/features/steps/gfr/gfr.dart';
import 'package:kidneysmart/features/steps/height/height.dart';
import 'package:kidneysmart/features/steps/hypertension/hypertension.dart';
import 'package:kidneysmart/features/steps/name/name.dart';
import 'package:kidneysmart/features/steps/urine_input/urine_input.dart';
import 'package:kidneysmart/features/steps/urine_select/urine_select.dart';

import 'package:kidneysmart/features/steps/weight/weight.dart';
import 'package:kidneysmart/features/steps/weight_dry_input/weight_dry_input.dart';
import 'package:kidneysmart/features/steps/weight_dry_query/weight_dry_query.dart';
import 'package:kidneysmart/features/welcome/view/welcome_page.dart';
import 'package:kidneysmart/global/global.dart';
import 'package:kidneysmart/shared/app/app.dart';

import 'package:kidneysmart/shared/data/local/shared_prefs/app_storage.dart';

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
          GoRoute(
            path: CalcNutrientPage.path,
            name: CalcNutrientPage.name,
            pageBuilder: (context, state) => MaterialPage<void>(
              key: state.pageKey,
              child: const CalcNutrientPage(),
            ),
          ),
          GoRoute(
            path: StepDialysisQueryPage.path,
            name: StepDialysisQueryPage.name,
            pageBuilder: (context, state) => MaterialPage<void>(
              key: state.pageKey,
              child: const StepDialysisQueryPage(),
            ),
          ),
          GoRoute(
            path: StepWeightDryQueryPage.path,
            name: StepWeightDryQueryPage.name,
            pageBuilder: (context, state) => MaterialPage<void>(
              key: state.pageKey,
              child: const StepWeightDryQueryPage(),
            ),
          ),
          GoRoute(
            path: StepWeightDryInputPage.path,
            name: StepWeightDryInputPage.name,
            pageBuilder: (context, state) => MaterialPage<void>(
              key: state.pageKey,
              child: const StepWeightDryInputPage(),
            ),
          ),
          GoRoute(
            path: StepDialysisTypePage.path,
            name: StepDialysisTypePage.name,
            pageBuilder: (context, state) => MaterialPage<void>(
              key: state.pageKey,
              child: const StepDialysisTypePage(),
            ),
          ),
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
            path: StepActivityPage.path,
            name: StepActivityPage.name,
            pageBuilder: (context, state) => MaterialPage<void>(
              key: state.pageKey,
              child: const StepActivityPage(),
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
            path: StepCkdSelectPage.path,
            name: StepCkdSelectPage.name,
            pageBuilder: (context, state) => MaterialPage<void>(
              key: state.pageKey,
              child: const StepCkdSelectPage(),
            ),
          ),
          GoRoute(
            path: StepCkdQueryPage.path,
            name: StepCkdQueryPage.name,
            pageBuilder: (context, state) => MaterialPage<void>(
              key: state.pageKey,
              child: const StepCkdQueryPage(),
            ),
          ),
          GoRoute(
            path: StepGfrInputPage.path,
            name: StepGfrInputPage.name,
            pageBuilder: (context, state) => MaterialPage<void>(
              key: state.pageKey,
              child: const StepGfrInputPage(),
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
    final lastNamePage = appState.lastNamePage;
    if (appState.isFirstTime || lastNamePage == SplashPage.name) {
      await _storage.setAppState(appState.copyWith(isFirstTime: false));

      router.goNamed(WelcomePage.name);

      return;
    } else {
      router.goNamed(appState.lastNamePage);

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
