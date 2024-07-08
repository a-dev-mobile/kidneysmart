import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:kidneysmart/core/constants/app_text_styles.dart';
import 'package:kidneysmart/core/extension/common.dart';
import 'package:kidneysmart/core/widgets/clean_focus.dart';
import 'package:kidneysmart/core/widgets/default_app_bar.dart';
import 'package:kidneysmart/core/widgets/keyboard_auto_scroll_widget.dart';
import 'package:kidneysmart/feature/setting/view/setting_page.dart';
import 'package:kidneysmart/feature/splash/notifier/splash_notifier.dart';

import 'package:kidneysmart/feature/login/notifier/login_notifier.dart';
import 'package:kidneysmart/gen/assets.gen.dart';
import 'package:kidneysmart/navigation/app_router.dart';

class LoginPage extends ConsumerWidget {
  const LoginPage({super.key});

  static const path = '/LoginPage';
  static const name = 'LoginPage';

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return const ClearFocus(
      child: Scaffold(
        appBar: CustomAppBar(title: 'Войти/регистрация'),
        body: _View(),
      ),
    );
  }
}

class _View extends ConsumerWidget {
  const _View();
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(loginNotifierProvider);
    final notifier = ref.read(loginNotifierProvider.notifier);
    final widthScreen = MediaQuery.of(context).size.width;

    final scrollController = ScrollController();
    return KeyboardAutoScrollWidget(
      scrollController: scrollController,
      child: Stack(
        children: [
          ListView(
            controller: scrollController,
            children: [
              SvgPicture.asset(
                AssetPaths.logoSvg,
                width: widthScreen / 1,
              ),
              const Text(
                'Войдите или зарегистрируйтесь, чтобы сохранить прогресс',
                style: AppTextStyle.s14w500h16,
              ),

              const Text(
                'Поздравляем! Вы сделали новый шаг на пути к более здоровому образу жизни',
              ),
              // Email TextField
              const SizedBox(height: 16),
              const TextField(
                decoration: InputDecoration(
                  labelText: 'Email',
                  hintText: 'Введите ваш email',
                ),
                keyboardType: TextInputType.emailAddress,
              ),

              TextButton(onPressed: () {}, child: const Text('Пропустить')),
              const SizedBox(height: 80),
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
                        notifier.login(email: 'dev.mobile@yandex.ru');
                      },
                      child: const Text('Продолжить'),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
