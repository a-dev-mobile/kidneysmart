import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:kidneysmart/features/splash/notifier/splash_notifier.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  static const path = '/splash';
  static const name = 'Splash';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('test')), body: const _SplashView());
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
      error: const Center(child: Text('failure')),
    );
  }
}
