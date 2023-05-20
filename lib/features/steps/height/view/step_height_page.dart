import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:kidneysmart/core/theme/app_text_style.dart';
import 'package:kidneysmart/core/widget/widget.dart';

import 'package:kidneysmart/features/steps/height/height.dart';
import 'package:kidneysmart/gen/gen.dart';

class StepHeightPage extends ConsumerWidget {
  const StepHeightPage({super.key});

  static const path = '/HeightPage';
  static const name = 'HeightPage';

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(stepHeightProvider);
    final notifier = ref.watch(stepHeightProvider.notifier);

    return StepContainer(
      enumValid: state.enumValid,
      backPressed: notifier.backPressed,
      nextPressed: notifier.nextPressed,
      titleAppBar: 'Спасибо!',
      widgets: [
        state.enumGender.maybeMapValue(
          male: const _SetGenderImage(
            assetPaths: AssetPaths.heightMaleSvg,
          ),
          orElse: const _SetGenderImage(
            assetPaths: AssetPaths.heightFemaleSvg,
          ),
        ),
        const SizedBox(height: 16),
        const Text(
          'Какой у Вас рост?',
          style: AppTextStyles.headlineLarge,
          textAlign: TextAlign.center,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AppDropDown(
              hint: 'Рост',
              value: state.result,
              onChanged: notifier.setHeight,
              values: state.heightList,
            ),
            const SizedBox(width: 10),
            const Text(
              'см',
              style: AppTextStyles.bodyLarge,
            ),
          ],
        ),
        ErrorMsg(
          error: state.enumValid.maybeMapOrNullValue(error: state.error),
        ),
      ],
    );
  }
}

class _SetGenderImage extends StatelessWidget {
  const _SetGenderImage({
    required this.assetPaths,
  });
  final String assetPaths;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      child: SvgPicture.asset(assetPaths),
    );
  }
}
