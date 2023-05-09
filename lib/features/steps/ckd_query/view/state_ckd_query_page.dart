import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:nutrition/features/steps/ckd_query/ckd_query.dart';
import 'package:nutrition/features/steps/common/widget/widget.dart';

import 'package:nutrition/gen/gen.dart';
import 'package:nutrition/shared/theme/theme.dart';
import 'package:nutrition/shared/widget/widget.dart';

class StepCkdQueryPage extends ConsumerWidget {
  const StepCkdQueryPage({super.key});

  static const path = '/CkdQueryPage';
  static const name = 'CkdQueryPage';

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(ckdQueryProvider);
    final notifier = ref.watch(ckdQueryProvider.notifier);

    return StepContainer(
      widgets: [
        const Text(
          'Вам определить\nстадию ХБП?',
          style: AppTextStyles.headlineLarge,
          textAlign: TextAlign.center,
        ),
        Text(
          '(хроническая болезнь почек)',
          style: AppTextStyles.labelLarge.copyWith(
            color: Theme.of(context).colorScheme.secondary,
          ),
          textAlign: TextAlign.center,
        ),
        const SizedBox(height: 16),
        SvgPicture.asset(AssetPaths.stageDetermineSvg, height: 220),
        const SizedBox(height: 16),
        BtnToggleText(
          textList: state.listCkdQuery.map((e) => e.value).toList(),
          isSelected: state.listSelected,
          onPressed: notifier.setCkdQuery,
          errorText: state.enumValid.maybeMapOrNullValue(error: state.error),
        ),
        const SizedBox(height: 16),
        Expanded(
          child: Scrollbar(
            thumbVisibility: true,
            child: SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              child: Text(
                '''
   Для диагностики стадии хронической болезни почек (ХБП) требуется комплексное обследование пациента, включающее анализы мочи и крови, ультразвуковое исследование почек и измерение скорости клубочковой фильтрации (СКФ). 

   СКФ - это наиболее точный показатель функции почек, который выражается в мл/мин/1,73 м² и измеряется на основе анализа содержания креатинина в крови.''',
                style: AppTextStyles.labelLarge.copyWith(
                  color: Theme.of(context).colorScheme.secondary,
                ),
              ),
            ),
          ),
        ),
        BtnStepNextBack(
          isValid: notifier.isValid,
          backPressed: notifier.previousPage,
          nextPressed: notifier.nextPage,
        ),
      ],
    );
  }
}
