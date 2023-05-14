/* import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import 'package:kidneysmart/core/services/locale/locale_provider.dart';
import 'package:kidneysmart/core/services/theme/theme_providers.dart';
import 'package:kidneysmart/core/widget/widget.dart';
import 'package:kidneysmart/features/calc_nutient/view/calc_nutient_page.dart';
import 'package:kidneysmart/features/health_profile/health_profile.dart';

/// {@template health_profile_page}
/// HealthProfilePage widget
/// {@endtemplate}
class HealthProfilePage extends ConsumerWidget {
  /// {@macro health_profile_page}
  const HealthProfilePage({super.key});
  static const path = '/HealthProfilePage';
  static const name = 'HealthProfilePage';

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // final state = ref.watch(healthProfileProvider);
    final notifier = ref.watch(healthProfileProvider.notifier);
    ref.listen<HealthProfileState>(healthProfileProvider, (p, c) {
      if (c.markdownError.isNotEmpty) {
        // var _ = context.showFlash<bool>(
        //   barrierDismissible: true,
        //   duration: const Duration(seconds: 3),
        //   builder: (context, controller) => FlashBar(
        //     controller: controller,
        //     // behavior: FlashBehavior.floating,
        //     position: FlashPosition.top,
        //     indicatorColor: Colors.red,
        //     // icon: const Icon(Icons.info_outline),

        //     content: SizedBox(
        //       height: lineLenght * 20,
        //       child: Markdown(
        //         data: c.markdownError,
        //         shrinkWrap: true,
        //         padding: EdgeInsets.zero,
        //         physics: const NeverScrollableScrollPhysics(),
        //       ),
        //     ),
        //   ),
        // );

        // showMarkdownAlertSnack(context, c.markdownError);
        showMarkdownSnack(context, c.markdownError);
      }
    });

    return ClearFocus(
      child: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            title: const Text('Введите данные'),
            actions: [
              IconButton(
                onPressed: () =>
                    ref.read(localeProvider.notifier).changeLocale(),
                icon: const Icon(Icons.language),
              ),
              IconButton(
                onPressed: () => ref.read(themeProvider.notifier).changeTheme(),
                icon: const Icon(Icons.brightness_4_outlined),
              ),
            ],
          ),
          body: ListView(
            padding: const EdgeInsets.all(10),
            children: [
              const BtnGender(),
              const DropBirthday(),
              const DropHeight(),
              const FieldWeight(),
              const ResultBmi(),
              const BtnActivity(),
              const BtnHypertension(),
              const BtnDiabetes(),
              const BtnDailyDiuresis(),
              const BtnCkd(),
              const ResultGfr(),
              const BtnDialysis(),
              const BtnDryWeight(),
              const FieldWeightDry(),
              ElevatedButton(
                // ignore: prefer-extracting-callbacks
                onPressed: () {
                  if (notifier.isValid()) {
                    context.pushNamed<void>(CalcNutrientPage.name);
                  }
                },
                child: const Text('Проверить'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
 */
