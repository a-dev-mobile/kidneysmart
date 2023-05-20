import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:kidneysmart/core/theme/theme.dart';
import 'package:kidneysmart/core/widget/widget.dart';

import 'package:kidneysmart/features/steps/dialysiis_query/dialysiis_query.dart';
import 'package:kidneysmart/gen/gen.dart';

class StepDialysisQueryPage extends ConsumerWidget {
  const StepDialysisQueryPage({super.key});

  static const path = '/StepDialysisQueryPage';
  static const name = 'StepDialysisQueryPage';

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(dialysisQueryProvider);
    final notifier = ref.watch(dialysisQueryProvider.notifier);

    return StepContainer(
      enumValid: state.enumValid,
      backPressed: notifier.backPressed,
      nextPressed: notifier.nextPressed,
      titleAppBar: 'Уточняющие вопросы!',
      widgets: [
        SvgPicture.asset(
          AssetPaths.dialysisSvg,
          width: 200,
          height: 200,
        ),
        const SizedBox(height: 16),
        const Text(
          'Проходите ли вы лечение\nдиализом в настоящее время?',
          textAlign: TextAlign.center,
          style: AppTextStyles.headlineSmall,
        ),
        // const SizedBox(height: 16),
        const SizedBox(height: 16),
        BtnToggleText(
          textList: state.listDialysisQuery.map((e) => e.value).toList(),
          isSelected: state.listSelected,
          onPressed: notifier.setDialysisQuery,
          errorText: state.enumValid.maybeMapOrNullValue(error: state.error),
        ),
        const SizedBox(height: 16),
        Text(
          '''
  Диализ - это медицинская процедура, которая используется для очистки крови от вредных веществ, которые обычно удаляются через почки, но которые в некоторых случаях могут накапливаться в крови, если почки не функционируют должным образом. 

  Диализ может быть жизненно важной процедурой для людей с хронической почечной недостаточностью или другими заболеваниями, которые приводят к нарушению функции почек.''',
          style: AppTextStyles.labelLarge.copyWith(
            color: Theme.of(context).colorScheme.secondary,
          ),
        ),
      ],
    );
  }
}
