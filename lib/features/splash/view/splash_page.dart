import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:kidneysmart/core/widget/page/app_load_page.dart';
import 'package:kidneysmart/features/splash/splash.dart';

class SplashPage extends ConsumerWidget {
  const SplashPage({super.key});

  static const path = '/splash';
  static const name = 'splash';

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // ignore: unused_local_variable
    final state = ref.watch(splashProvider);

    return state.map(
      load: (v) => const AppLoadPage(),
      success: (v) {
        return const AppLoadPage();
      },
    );
  }
}
