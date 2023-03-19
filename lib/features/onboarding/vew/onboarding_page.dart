// ignore_for_file: lines_longer_than_80_chars

import 'package:flutter/material.dart';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import 'package:nutrition/core/widget/widget.dart';
import 'package:nutrition/features/onboarding/onboarding.dart';
import 'package:nutrition/features/splash/splash.dart';

class OnBoardingPage extends ConsumerWidget {
  const OnBoardingPage({super.key});

  static const path = '/onboarding';
  static const name = 'onboarding';

  Future<bool> _willPopScopeCall(BuildContext context) async {
    GoRouter.of(context).goNamed(SplashPage.name);
// code to show toast or modal

    return false; // return true to exit app or return false to cancel exit
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // final state = ref.watch(onboardingProvider);
    // final notifier = ref.watch(onboardingProvider.notifier);
    final state = ref.watch(onboardingProvider);

    return WillPopScope(
      onWillPop: () => _willPopScopeCall(context),
      child: state.maybeMap(
        success: (v) =>
            AppMarkDownPage(text: v.textMarkdown, isYesCloseBtn: true),
        orElse: () => const AppLoadPage(),
      ),
    );
  }
}
