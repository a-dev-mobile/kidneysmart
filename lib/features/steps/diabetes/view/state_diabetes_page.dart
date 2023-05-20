import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:kidneysmart/core/theme/theme.dart';
import 'package:kidneysmart/core/widget/widget.dart';

import 'package:kidneysmart/features/steps/diabetes/diabetes.dart';
import 'package:kidneysmart/gen/gen.dart';

class StepDiabetesPage extends ConsumerWidget {
  const StepDiabetesPage({super.key});

  static const path = '/StepDiabetesPage';
  static const name = 'StepDiabetesPage';

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(diabetesProvider);
    final notifier = ref.watch(diabetesProvider.notifier);

    return StepContainer(
      enumValid: state.enumValid,
      backPressed: notifier.backPressed,
      nextPressed: notifier.nextPressed,
      titleAppBar: 'Продолжаем!',
      widgets: [
        SizedBox(
          height: 180,
          width: 180,
          child: SvgPicture.asset(AssetPaths.diabetSvg),
        ),
        const SizedBox(height: 16),
        const Text(
          'У Вас есть диабет?',
          style: AppTextStyles.headlineLarge,
          textAlign: TextAlign.center,
        ),
        const SizedBox(height: 16),
        BtnToggleText(
          textList: state.listDiabetes.map((e) => e.value).toList(),
          isSelected: state.listSelected,
          onPressed: notifier.setDiabetes,
          errorText: state.enumValid.maybeMapOrNullValue(error: state.error),
        ),
        const SizedBox(height: 16),
        Text(
          '''
   Диабет негативно влияет на функционирование почек больных ХБП, вызывая повреждения капилляров и нервов, что приводит к ухудшению их функциональности. 

   Дополнительно, диабет может вызвать повышение кровяного давления и появление белка в моче. 

   Поэтому контроль уровня сахара в крови и регулярное обследование - важные меры профилактики и лечения диабета у больных ХБП.''',
          style: AppTextStyles.labelLarge.copyWith(
            color: Theme.of(context).colorScheme.secondary,
          ),
        ),
      ],
    );
  }
}
