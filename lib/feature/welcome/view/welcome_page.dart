import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:kidneysmart/core/constants/app_text_styles.dart';
import 'package:kidneysmart/core/extension/gorouter_extension.dart';
import 'package:kidneysmart/core/widgets/clean_focus.dart';
import 'package:kidneysmart/core/widgets/default_app_bar.dart';
import 'package:kidneysmart/feature/login/view/login_screen.dart';
import 'package:kidneysmart/feature/setting/view/setting_page.dart';
import 'package:kidneysmart/feature/splash/notifier/splash_notifier.dart';

import 'package:kidneysmart/feature/welcome/notifier/welcome_notifier.dart';
import 'package:kidneysmart/gen/assets.gen.dart';
import 'package:kidneysmart/navigation/app_router.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  static const path = '/WelcomePage';
  static const name = 'WelcomePage';

  @override
  Widget build(BuildContext context) {
    return const ClearFocus(
      child: Scaffold(
        appBar: CustomAppBar(title: 'Добро пожаловать'),
        body: _View(),
      ),
    );
  }
}

class _View extends ConsumerWidget {
  const _View();
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(welcomeNotifierProvider);
    final widthScreen = MediaQuery.of(context).size.width;
    return Stack(
      children: [
        ListView(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'Питание при ХБП',
                  style: AppTextStyle.s30w400h40,
                ),
                SvgPicture.asset(AssetPaths.logoSvg),
              ],
            ),
            const Text(
              '(ХБП - хроническая болезнь почек)',
              style: AppTextStyle.s14w500h16,
            ),
            const SizedBox(height: 16),
            const Text(
              'Поздравляем! Вы сделали новый шаг на пути к более здоровому образу жизни',
            ),
            SvgPicture.asset(
              AssetPaths.remindYouSvg,
              width: 200,
            ),
            const SizedBox(height: 150),
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
                TextButton(
                  onPressed: () {},
                  child: const Text('Политика конфиденциальности'),
                ),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      ref
                          .read(appRouterProvider)
                          .router
                          .pushNamed<void>(LoginScreen.name);
                    },
                    child: const Text('Начать'),
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
