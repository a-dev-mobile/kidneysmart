import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:kidneysmart/core/constants/app_text_styles.dart';
import 'package:kidneysmart/core/extension/gorouter_extension.dart';
import 'package:kidneysmart/core/widgets/default_app_bar.dart';
import 'package:kidneysmart/feature/login/view/login_screen.dart';

import 'package:kidneysmart/feature/splash/notifier/splash_notifier.dart';

import 'package:kidneysmart/feature/password_entry/notifier/password_entry_notifier.dart';
import 'package:kidneysmart/gen/assets.gen.dart';
import 'package:kidneysmart/navigation/app_router.dart';

class PasswordEntryScreen extends StatelessWidget {
  const PasswordEntryScreen({super.key});

  static const path = '/PasswordEntryScreen';
  static const name = 'PasswordEntryScreen';

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: CustomAppBar(title: 'Введите пароль'),
      body: _View(),
    );
  }
}

class _View extends ConsumerWidget {
  const _View();
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(passwordEntryNotifierProvider);
    final widthScreen = MediaQuery.of(context).size.width;
    return Stack(
      children: [
        ListView(
          children: [
            const SizedBox(height: 16),
            SvgPicture.asset(
              AssetPaths.remindYouSvg,
              width: 200,
            ),
            const Text(
              'Пожалуйста введите пароль',
              style: AppTextStyle.s30w400h40,
            ),
            TextField(),
            const SizedBox(height: 60),
          ],
        ),
        Positioned(
          bottom: 0,
          child: Container(
            width: widthScreen,
            padding: const EdgeInsets.all(8),
            color: Theme.of(context).colorScheme.background,
            child: Column(
              children: [
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      ref
                          .read(appRouterProvider)
                          .router
                          .pushNamed<void>(LoginScreen.name);
                    },
                    child: const Text('Войти'),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
