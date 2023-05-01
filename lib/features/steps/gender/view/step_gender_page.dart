import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';

import 'package:nutrition/features/steps/common/widget/widget.dart';
import 'package:nutrition/features/steps/gender/gender.dart';
import 'package:nutrition/gen/assets.gen.dart';
import 'package:nutrition/global/global.dart';
import 'package:nutrition/shared/theme/app_text_style.dart';
import 'package:nutrition/shared/widget/widget.dart';

class StepGenderPage extends ConsumerWidget {
  const StepGenderPage({super.key});

  static const path = '/GenderPage';
  static const name = 'GenderPage';

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(stepGenderProvider);
    final notifier = ref.watch(stepGenderProvider.notifier);

    return SafeArea(
      child: Scaffold(
        appBar: const AppMyAppBar(),
        body: Padding(
          padding: AppPaddingConst.kDefaultPadding,
          child: Column(
            children: [
              const Text(
                'Отлично, продолжим!',
                style: AppTextStyles.headlineLarge,
              ),
              const SizedBox(height: 16),
              Text(
                'Здраствуйте ${state.name}!',
                style: AppTextStyles.headlineSmall,
              ),
              SizedBox(
                height: 280,
                width: 250,
                child: SvgPicture.asset(AssetPaths.genderSvg),
              ),
              const SizedBox(height: 16),
              if (state.isDefinedGenderInStepName)
                const _SetTitle(text: 'Проверте свой пол')
              else
                const _SetTitle(text: 'Укажите свой пол'),
              BtnToggleText(
                textList: state.listGender.map((e) => e.value).toList(),
                isSelected: state.listSelected,
                onPressed: notifier.setGender,
                errorText:
                    state.enumValid.maybeMapOrNullValue(error: state.error),
              ),
              const Spacer(),
              BtnStepNextBack(
                isValid: notifier.isValid,
                backPressed: context.pop<void>,
                nextPressed: notifier.nextPage,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _SetTitle extends StatelessWidget {
  const _SetTitle({
    required this.text,
  });
  final String text;
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: AppTextStyles.headlineLarge,
    );
  }
}
