import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:nutrition/core/style/app_text_style.dart';
import 'package:nutrition/features/steps/common/common.dart';
import 'package:nutrition/features/steps/name/name.dart';

import 'package:nutrition/gen/assets.gen.dart';
import 'package:nutrition/global/global.dart';

class StepNamePage extends ConsumerWidget {
  const StepNamePage({super.key});

  static const path = '/StepNamePage';
  static const name = 'StepNamePage';

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // ignore: unused_local_variable
    final state = ref.watch(stepStepNameProvider);
    final notifier = ref.watch(stepStepNameProvider.notifier);

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.settings_outlined),
            ),
          ],
        ),
        body: Padding(
          padding: AppPaddingConst.kDefaultPadding,
          child: Column(
            children: [
              Text(
                'Давайте познакомимся!',
                textAlign: TextAlign.center,
                style: AppTextStyles.headlineLarge(),
              ),
              const SizedBox(height: 16),
              SizedBox(
                width: 280,
                height: 240,
                child: SvgPicture.asset(AssetPaths.nameStepSvg),
              ),
              const SizedBox(height: 16),
              Text(
                'Как Вас зовут?',
                textAlign: TextAlign.center,
                style: AppTextStyles.headlineLarge(),
              ),
              const SizedBox(height: 16),
              const TextField(),
              const Spacer(),
              const Spacer(),
              BtnStepNextBack(
                isValid: notifier.isValid,
                backPressed: notifier.backPage,
                nextPressed: notifier.nextPage,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
