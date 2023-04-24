import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:nutrition/core/style/app_text_style.dart';
import 'package:nutrition/core/widget/widget.dart';

import 'package:nutrition/features/welcome/welcome.dart';
import 'package:nutrition/gen/assets.gen.dart';

class WelcomePage extends ConsumerWidget {
  const WelcomePage({super.key});

  static const path = '/WelcomePage';
  static const name = 'WelcomePage';

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // ignore: unused_local_variable
    final state = ref.watch(welcomeProvider);
    final notifier = ref.watch(welcomeProvider.notifier);

    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Align(
                alignment: Alignment.centerRight,
                child: IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.settings_outlined),
                ),
              ),
              Text(
                'Добро пожаловать\nв наше приложение',
                style: AppTextStyles.headlineSmall(),
              ),
              const SizedBox(height: 16),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Text('Питание при ХБП'),
                  SizedBox(
                    width: 65,
                    height: 38,
                    child: SvgPicture.asset(AssetPaths.logoSvg),
                  ),
                ],
              ),
              const SizedBox(height: 8),
              Text(
                '(ХБП - хроническая болезнь почек)',
                style: AppTextStyles.labelLarge(
                  color: Theme.of(context).colorScheme.secondary,
                ),
              ),
              const SizedBox(height: 16),
              Text(
                'Поздравляем! Вы сделали новый шаг на пути к более здоровому образу жизни',
                textAlign: TextAlign.center,
                style: AppTextStyles.bodyLarge(),
              ),
              const SizedBox(height: 16),
              SizedBox(
                width: 200,
                height: 150,
                child: SvgPicture.asset(AssetPaths.remindYouSvg),
              ),
              const Spacer(),
              BasicButton(
                onPressed: notifier.nextPage,
                isTextBtn: true,
                text: 'Политика конфиденциальности',
              ),
              BasicButton(
                onPressed: notifier.nextPage,
                text: 'Начать',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
