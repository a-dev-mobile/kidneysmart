import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:kidneysmart/core/extension/common.dart';

import 'package:kidneysmart/feature/splash/notifier/splash_notifier.dart';
import 'package:kidneysmart/feature/splash/view/splash_page%20copy.dart';
import 'package:kidneysmart/navigation/navigation.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  static const path = '/splash';
  static const name = 'Splash';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('SplashPage')),
      body: const _SplashView(),
    );
  }
}

class _SplashView extends ConsumerWidget {
  const _SplashView();
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(splashNotifierProvider);
    return state.enumPageStatus.mapValue(
      init: const Center(child: Text('initial')),
      load: const Center(child: Text('loading')),
      success: const Center(child: Text('success')),
      error: Center(
        child: ElevatedButton(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Text('failure'),
              Text(ref.read(navigationProvider).router.location() ?? ''),
            ],
          ),
          onPressed: () {
            context.pushNamed(SplashPage2.name);
          },
        ),
      ),
    );
  }
}
