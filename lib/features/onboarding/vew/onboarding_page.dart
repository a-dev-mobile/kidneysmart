// ignore_for_file: lines_longer_than_80_chars

import 'package:flutter/material.dart';

import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:introduction_screen/introduction_screen.dart';

import 'package:kidneysmart/features/onboarding/onboarding.dart';

class OnboardingPage extends ConsumerWidget {
  /// {@macro onboarding_page}
  const OnboardingPage({super.key});

  static const path = '/OnboardingPage';
  static const name = 'OnboardingPage';
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // final l = context.l10n;

    // ignore: unused_local_variable
    final state = ref.watch(onboardingProvider);
    final notifier = ref.watch(onboardingProvider.notifier);

    return Scaffold(
      body: SafeArea(
        child: IntroductionScreen(
          showSkipButton: true,
          showNextButton: false,
          skip: const Text('Пропустить'),
          done: const Text('Далее'),
          onDone: notifier.onDone,
          onChange: print,
          pages: [
            PageViewModel(
              title: 'Распределение воды',
              body: 'Получение займа\nдо 7 минут на карту',
              image: const OnboardingItemImage(
                assetName: 'assets/image/onb_1.png',
              ),
            ),
            PageViewModel(
              body: 'Распределение еды',
              title: '',
              image: const OnboardingItemImage(
                assetName: 'assets/image/onb_2.png',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
