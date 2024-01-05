import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:kidneysmart/core/constants/app_text_styles.dart';
import 'package:kidneysmart/core/extension/common.dart';
import 'package:kidneysmart/core/widgets/clean_focus.dart';
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
    return ClearFocus(
      child: Scaffold(
        appBar: AppBar(title: const Text('Войти/регистрация'), actions: [
          IconButton(
              onPressed: () {
                ref
                    .read(appRouterProvider)
                    .router
                    .pushNamed<void>(SettingPage.name);
              },
              icon: const Icon(Icons.settings))
        ]),
        body: const _View(),
      ),
    );
  }
}

class _View extends ConsumerWidget {
  const _View();
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(loginNotifierProvider);
    final widthScreen = MediaQuery.of(context).size.width;
    return Stack(
      children: [
        ListView(
          children: [
            const Text(
              'Войдите или зарегистрируйтесь, чтобы сохранить прогресс',
              style: AppTextStyle.s14w500h16,
            ),
            const SizedBox(height: 16),
            const Text(
                'Поздравляем! Вы сделали новый шаг на пути к более здоровому образу жизни'),
            TextField(),
            TextField(),
            TextField(),
            TextField(),
            TextField(),
            TextField(),
            TextField(),
            TextField(),
            TextField(),
            TextButton(onPressed: () {}, child: Text('Забыли пароль?')),
            ElevatedButton(onPressed: () {}, child: Text('Войти')),
            TextButton(onPressed: () {}, child: Text('Пропустить')),
            const SizedBox(height: 50),
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
                      child: TextButton(
                          onPressed: () {},
                          child: const Text('Зарегистрироваться')))
                ],
              ),
            ))
      ],
    );
  }
}
