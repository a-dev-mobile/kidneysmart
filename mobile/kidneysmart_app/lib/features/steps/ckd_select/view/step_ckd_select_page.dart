import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:kidneysmart/core/theme/theme.dart';
import 'package:kidneysmart/core/widget/widget.dart';
import 'package:kidneysmart/features/steps/ckd_select/ckd.dart';

import 'package:kidneysmart/gen/gen.dart';

class StepCkdSelectPage extends ConsumerWidget {
  const StepCkdSelectPage({super.key});

  static const path = '/CkdPage';
  static const name = 'CkdPage';

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // ignore: unused_local_variable
    final state = ref.watch(stepCkdSelectProvider);
    final notifier = ref.watch(stepCkdSelectProvider.notifier);
    final colorSecondary = Theme.of(context).colorScheme.secondary;

    return StepContainer(
      enumValid: state.enumValid,
      backPressed: notifier.backPressed,
      nextPressed: notifier.nextPressed,
      titleAppBar: 'Нам нужен этот ответ!',
      widgets: [
        SvgPicture.asset(
          state.enumGender.maybeMapValue(
            orElse: AssetPaths.ckdFemaleSvg,
            male: AssetPaths.ckdMaleSvg,
          ),
          height: 200,
        ),
        const SizedBox(height: 16),
        const Text(
          'Укажите стадию ХБП',
          style: AppTextStyles.headlineSmall,
          textAlign: TextAlign.center,
        ),
        Text(
          '(хроническая болезнь почек)',
          style: AppTextStyles.labelLarge.copyWith(
            color: colorSecondary,
          ),
          textAlign: TextAlign.center,
        ),
        const SizedBox(height: 8),
        const BtnCkd(),
        // const FieldCreatinine(),
        const SizedBox(height: 16),
        Text(
          '''
   Хроническая болезнь почек (ХБП) - это прогрессирующее заболевание, которое проходит через несколько стадий, классификация которых основывается на скорости клубочковой фильтрации (СКФ). СКФ показывает, насколько хорошо почки фильтруют кровь. 

   Знание стадии ХБП позволяет пациенту принимать более информированные решения относительно своего лечения, ухода и образа жизни, а также уменьшить уровень стресса, связанного с болезнью. 

   Своевременное выявление и лечение ХБП могут замедлить прогрессирование заболевания и значительно улучшить качество жизни пациента.''',
          style: AppTextStyles.labelLarge.copyWith(
            color: Theme.of(context).colorScheme.secondary,
          ),
        ),
      ],
    );
  }
}
