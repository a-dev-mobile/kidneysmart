// ignore_for_file: require_trailing_commas

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:kidneysmart/core/theme/theme.dart';
import 'package:kidneysmart/core/widget/widget.dart';

import 'package:kidneysmart/features/steps/weight_dry_input/weight_dry_input.dart';
import 'package:kidneysmart/gen/gen.dart';

class StepWeightDryInputPage extends ConsumerWidget {
  const StepWeightDryInputPage({super.key});

  static const path = '/StepWeightDryInputPage';
  static const name = 'StepWeightDryInputPage';

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(stepWeightDryInputProvider);
    final notifier = ref.watch(stepWeightDryInputProvider.notifier);

    return StepContainer(
      enumValid: state.enumValid,
      backPressed: notifier.backPressed,
      nextPressed: notifier.nextPressed,
      titleAppBar: 'Это будет последний вопрос!',
      widgets: [
        ContainerSvgAnimate(
          assetPaths: AssetPaths.dryWeightInputSvg,
          heightMin: 0,
          heightMax: 200,
          isKeyboardOpen: state.isKeyboardOpen,
        ),
        const SizedBox(height: 16),
        const Text(
          'Введите Ваш “сухой” вес',
          style: AppTextStyles.headlineLarge,
          textAlign: TextAlign.center,
        ),
        const SizedBox(height: 16),
        const FieldWeightDryInput(),
        const SizedBox(height: 16),
        Text(
          '''
   Определение и контроль сухого веса на диализе - важнейший аспект ухода, который помогает избежать осложнений и сохранить здоровье пациентов.
                        
   Возврат пациентов к своему сухому весу после диализа предотвращает обезвоживание и задержку жидкости в организме.''',
          style: AppTextStyles.labelLarge.copyWith(
            color: Theme.of(context).colorScheme.secondary,
          ),
        ),
      ],
    );
  }
}
