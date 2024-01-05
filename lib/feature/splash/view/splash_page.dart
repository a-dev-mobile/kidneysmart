import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:kidneysmart/core/enum/enum_page_status.dart';
import 'package:kidneysmart/core/extension/common.dart';
import 'package:kidneysmart/core/widgets/app_load_widget.dart';
import 'package:kidneysmart/feature/splash/notifier/splash_notifier.dart';


import 'package:kidneysmart/feature/welcome/view/welcome_page.dart';
import 'package:kidneysmart/navigation/app_router.dart';

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









    return const AppLoadWidget();
  }
}
