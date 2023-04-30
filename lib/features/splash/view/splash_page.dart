import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:nutrition/features/splash/splash.dart';
import 'package:nutrition/shared/widget/page/app_load_page.dart';

class SplashPage extends ConsumerWidget {
  const SplashPage({super.key});

  static const path = '/splash';
  static const name = 'splash';

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // ignore: unused_local_variable
    final provider = ref.watch(splashProvider);

    return const AppLoadPage();
  }
}
