import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:nutrition/core/style/app_text_style.dart';
import 'package:nutrition/core/widget/widget.dart';

import 'package:nutrition/features/welcome/welcome.dart';
import 'package:nutrition/gen/assets.gen.dart';
import 'package:nutrition/global/global.dart';

class WelcomePage extends ConsumerWidget {
  const WelcomePage({super.key});

  static const path = '/WelcomePage';
  static const name = 'WelcomePage';

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // ignore: unused_local_variable
    final state = ref.watch(welcomeProvider);
    final notifier = ref.watch(welcomeProvider.notifier);

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.settings_outlined),
            )
          ],
        ),
        body: Padding(
          padding: AppPaddingConst.kDefaultPadding,
          child: Column(
            children: [
              // Align(
              //           alignment: Alignment.centerRight,
              //           child: IconButton(
              //             onPressed: () {},
              //             icon: const Icon(Icons.settings_outlined),
              //           ),
              //         ),
              Expanded(
                child: Scrollbar(
                  thumbVisibility: true,
                  child: ListView(
                    children: [
                      Text(
                        'Добро пожаловать\nв наше приложение',
                        textAlign: TextAlign.center,
                        style: AppTextStyles.headlineSmall(),
                      ),
                      const SizedBox(height: 16),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Питание при ХБП',
                            style: AppTextStyles.headlineLarge(),
                          ),
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
                        textAlign: TextAlign.center,
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
                      const SizedBox(height: 16),
                      Text(
                        '   Хотим напомнить, что все представленные в приложении данные имеют исключительно информативный характер.\n\n   Лучше всего придерживаться рекомендаций врача и не забывать о профессиональной медицинской помощи.\n\n   Мы надеемся, что наше приложение будет для вас полезным инструментом в поддержании здоровья и благополучия.',
                        style: AppTextStyles.bodyLarge(),
                      ),
                      const SizedBox(height: 8),
                      Text(
                        'Спасибо за использование нашего приложения!',
                        textAlign: TextAlign.center,
                        style: AppTextStyles.bodyMedium(),
                      ),
                    ],
                  ),
                ),
              ),
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
