// ignore_for_file: require_trailing_commas

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:kidneysmart/core/theme/theme.dart';
import 'package:kidneysmart/core/widget/widget.dart';

import 'package:kidneysmart/features/steps/urine_input/urine_input.dart';
import 'package:kidneysmart/gen/gen.dart';

class StepUrineInputPage extends ConsumerWidget {
  const StepUrineInputPage({super.key});

  static const path = '/StepUrineInputPage';
  static const name = 'StepUrineInputPage';

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(stepUrineInputProvider);
    final notifier = ref.watch(stepUrineInputProvider.notifier);

    return StepContainer(
      enumValid: state.enumValid,
      backPressed: notifier.backPressed,
      nextPressed: notifier.nextPressed,
      titleAppBar: 'Постарайтесь ответить!',
      widgets: [
        ContainerSvgAnimate(
          assetPaths: AssetPaths.urineInputSvg,
          heightMin: 0,
          heightMax: 200,
          isKeyboardOpen: state.isKeyboardOpen,
        ),
        const SizedBox(height: 16),
        const Text(
          'Укажите количество выделяемой мочи за сутки',
          style: AppTextStyles.headlineSmall,
          textAlign: TextAlign.center,
        ),
        const SizedBox(height: 16),
        const FieldUrineOutput(),
        const SizedBox(height: 16),
        Text(
          '''
   Оценка функции почек и контроль за лечением заболеваний мочевыводящей системы являются важными задачами, для которых необходимо знать суточный объем мочи. 

   Если суточный объем мочи ниже нормы, это может свидетельствовать о дегидратации или проблемах с почками, а если выше нормы - это может указывать на нарушение механизмов удержания жидкости в организме. 

   В случае наличия проблем с почками или необычного количества мочи необходима консультация с врачом для диагностики и лечения.''',
          style: AppTextStyles.labelLarge.copyWith(
            color: Theme.of(context).colorScheme.secondary,
          ),
        ),
      ],
    );
  }
}
