import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:kidneysmart/core/theme/app_text_style.dart';
import 'package:kidneysmart/core/widget/widget.dart';

import 'package:kidneysmart/features/steps/gender/gender.dart';
import 'package:kidneysmart/gen/assets.gen.dart';

class StepGenderPage extends ConsumerWidget {
  const StepGenderPage({super.key});

  static const path = '/GenderPage';
  static const name = 'GenderPage';

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(stepGenderProvider);
    final notifier = ref.watch(stepGenderProvider.notifier);

    return StepContainer(
      enumValid: state.enumValid,
      backPressed: notifier.backPressed,
      nextPressed: notifier.nextPressed,
      titleAppBar: 'Отлично, продолжим',
      widgets: [
        Text(
          'Здраствуйте ${state.name}!',
          style: AppTextStyles.headlineSmall,
          textAlign: TextAlign.center,
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
        const SizedBox(height: 16),
        BtnToggleText(
          textList: state.listGender.map((e) => e.value).toList(),
          isSelected: state.listSelected,
          onPressed: notifier.setGender,
          errorText: state.enumValid.maybeMapOrNullValue(error: state.error),
        ),
      ],
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
      textAlign: TextAlign.center,
    );
  }
}
