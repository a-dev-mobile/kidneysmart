import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:kidneysmart/core/theme/theme.dart';
import 'package:kidneysmart/core/widget/widget.dart';

import 'package:kidneysmart/features/steps/hypertension/hypertension.dart';
import 'package:kidneysmart/gen/gen.dart';

class StepHypertensionPage extends ConsumerWidget {
  const StepHypertensionPage({super.key});

  static const path = '/StepHypertensionPage';
  static const name = 'StepHypertensionPage';

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(hypertensionProvider);
    final notifier = ref.watch(hypertensionProvider.notifier);

    return StepContainer(
      enumValid: state.enumValid,
      backPressed: notifier.backPressed,
      nextPressed: notifier.nextPressed,
      titleAppBar: 'Немного медицинских вопросов',
      widgets: [
        SizedBox(
          height: 118,
          width: 335,
          child: SvgPicture.asset(AssetPaths.bloodPressureSvg),
        ),
        const SizedBox(height: 16),
        const Text(
          'Бывает ли у Вас\nвысокое давление?',
          style: AppTextStyles.headlineLarge,
          textAlign: TextAlign.center,
        ),
        const SizedBox(height: 16),
        BtnToggleText(
          textList: state.listHypertension.map((e) => e.value).toList(),
          isSelected: state.listSelected,
          onPressed: notifier.setHypertension,
          errorText: state.enumValid.maybeMapOrNullValue(error: state.error),
        ),
        const SizedBox(height: 16),
        Text(
          '''
   Высокое кровяное давление (артериальная гипертензия) является общей проблемой для больных ХБП (хронической болезнью почек). 
                
   При ХБП почки не могут полностью выполнять свою функцию очищения крови от избытка жидкости и солей, что может привести к увеличению объема жидкости в организме и ухудшению кровотока.''',
          style: AppTextStyles.labelLarge.copyWith(
            color: Theme.of(context).colorScheme.secondary,
          ),
        )
      ],
    );
  }
}
