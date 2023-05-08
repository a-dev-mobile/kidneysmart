import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:nutrition/features/steps/common/widget/widget.dart';
import 'package:nutrition/features/steps/dialysis_type/dialysis_type.dart';
import 'package:nutrition/gen/gen.dart';
import 'package:nutrition/shared/theme/theme.dart';

import 'package:nutrition/shared/widget/widget.dart';

class StepDialysisTypePage extends ConsumerWidget {
  const StepDialysisTypePage({super.key});

  static const path = '/DialysisTypePage';
  static const name = 'DialysisTypePage';

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(dialysisTypeProvider);
    final notifier = ref.watch(dialysisTypeProvider.notifier);

    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(8),
          child: Column(
            children: [
              const Text(
                'Уточняющие вопросы о применяемом диализе!',
                style: AppTextStyles.headlineMedium,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 16),
              SvgPicture.asset(
                AssetPaths.dialysisTypeSvg,
                width: 200,
                height: 200,
              ),
              const SizedBox(height: 16),
              const Text(
                'Какой тип диализа\nвы получаете?',
                style: AppTextStyles.headlineLarge,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 16),
              BtnToggleText(
                textList: state.listDialysisType.map((e) => e.value).toList(),
                isSelected: state.listSelected,
                onPressed: notifier.setDialysisType,
                errorText:
                    state.enumValid.maybeMapOrNullValue(error: state.error),
              ),
              const SizedBox(height: 16),
              Expanded(
                child: SingleChildScrollView(
                  physics: const BouncingScrollPhysics(),
                  child: Text(
                    '''
  Диализ - это процедура очищения крови, которая может быть выполнена двумя способами:

  Гемодиализ: кровь выводится через катетер, очищается в специальной машине и возвращается в организм через другой катетер.

  Перитонеальный диализ: специальное решение вводится в брюшную полость через катетер, где оно очищает кровь в течение нескольких часов, затем удаляется через тот же катетер.
''',
                    style: AppTextStyles.labelLarge.copyWith(
                      color: Theme.of(context).colorScheme.secondary,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 16),
              BtnStepNextBack(
                isValid: notifier.isValid,
                backPressed: context.pop<void>,
                nextPressed: notifier.nextPage,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
