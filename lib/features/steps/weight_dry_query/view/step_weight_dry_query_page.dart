import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:kidneysmart/features/steps/common/widget/widget.dart';
import 'package:kidneysmart/features/steps/weight_dry_query/weight_dry_query.dart';

import 'package:kidneysmart/gen/gen.dart';
import 'package:kidneysmart/shared/theme/theme.dart';
import 'package:kidneysmart/shared/widget/widget.dart';

class StepWeightDryQueryPage extends ConsumerWidget {
  const StepWeightDryQueryPage({super.key});

  static const path = '/WeightDryQueryPage';
  static const name = 'WeightDryQueryPage';

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(weightDryQueryProvider);
    final notifier = ref.watch(weightDryQueryProvider.notifier);

    return StepContainer(
      widgets: [
        const Text(
          'Мы заканчиваем!',
          style: AppTextStyles.headlineLarge,
          textAlign: TextAlign.center,
        ),
        const SizedBox(height: 16),
        SvgPicture.asset(
          AssetPaths.dryWeightQuerySvg,
          height: 200,
        ),
        const SizedBox(height: 16),
        const Text(
          'Знаете ли вы\nсвой “сухой” вес?',
          style: AppTextStyles.headlineSmall,
        ),
        // const SizedBox(height: 16),
        const SizedBox(height: 16),
        BtnToggleText(
          textList: state.listWeightDryQuery.map((e) => e.value).toList(),
          isSelected: state.listSelected,
          onPressed: notifier.setWeightDryQuery,
          errorText: state.enumValid.maybeMapOrNullValue(error: state.error),
        ),
        const SizedBox(height: 16),
        Expanded(
          child: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Text(
              '''
   Сухой вес - это вес тела без жидкости, важный для расчета доз лекарств и количества удаляемой жидкости во время диализа. 

   Не знание своего сухого веса может указывать на отсутствие регулярных медицинских обследований и помощи.''',
              style: AppTextStyles.labelLarge.copyWith(
                color: Theme.of(context).colorScheme.secondary,
              ),
            ),
          ),
        ),
        const SizedBox(height: 16),
        BtnStepNextBack(
          isValid: notifier.isValid,
          backPressed: notifier.previousPage,
          nextPressed: notifier.nextPage,
        ),
      ],
    );
  }
}
