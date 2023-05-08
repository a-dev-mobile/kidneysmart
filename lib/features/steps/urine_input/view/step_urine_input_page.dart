// ignore_for_file: require_trailing_commas

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:nutrition/features/steps/common/widget/widget.dart';
import 'package:nutrition/features/steps/urine_input/urine_input.dart';

import 'package:nutrition/gen/gen.dart';
import 'package:nutrition/shared/theme/theme.dart';
import 'package:nutrition/shared/widget/widget.dart';

class StepUrineInputPage extends ConsumerWidget {
  const StepUrineInputPage({super.key});

  static const path = '/StepUrineInputPage';
  static const name = 'StepUrineInputPage';

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(stepUrineInputProvider);
    final notifier = ref.watch(stepUrineInputProvider.notifier);

    return ClearFocus(
      child: SafeArea(
        child: Scaffold(
          appBar: const AppMyAppBar(),
          body: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              children: [
                const Text(
                  'Постарайтесь ответить!',
                  style: AppTextStyles.headlineLarge,
                  textAlign: TextAlign.center,
                ),
                if (!state.isKeyboardOpen) const SizedBox(height: 16),
                ContainerSvgAnimate(
                  assetPaths: AssetPaths.urineInputSvg,
                  heightMin: 0,
                  heightMax: 200,
                  isKeyboardOpen: state.isKeyboardOpen,
                ),
                const SizedBox(height: 16),
                const Text(
                  'Укажите количество\nвыделяемой мочи за сутки',
                  style: AppTextStyles.headlineSmall,
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 16),
                const FieldUrineOutput(),
                const SizedBox(height: 16),
                Expanded(
                  child: Scrollbar(
                    thumbVisibility: true,
                    child: SingleChildScrollView(
                      physics: const BouncingScrollPhysics(),
                      child: Text(
                        '''
   Оценка функции почек и контроль за лечением заболеваний мочевыводящей системы являются важными задачами, для которых необходимо знать суточный объем мочи. 

   Если суточный объем мочи ниже нормы, это может свидетельствовать о дегидратации или проблемах с почками, а если выше нормы - это может указывать на нарушение механизмов удержания жидкости в организме. 

   В случае наличия проблем с почками или необычного количества мочи необходима консультация с врачом для диагностики и лечения.''',
                        style: AppTextStyles.labelLarge.copyWith(
                          color: Theme.of(context).colorScheme.secondary,
                        ),
                      ),
                    ),
                  ),
                ),
                BtnStepNextBack(
                  isValid: notifier.isValidInput,
                  backPressed: context.pop<void>,
                  nextPressed: notifier.nextPage,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
