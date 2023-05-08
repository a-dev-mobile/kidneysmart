// ignore_for_file: require_trailing_commas

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:nutrition/features/steps/common/widget/widget.dart';
import 'package:nutrition/features/steps/weight_dry_input/weight_dry_input.dart';

import 'package:nutrition/gen/gen.dart';
import 'package:nutrition/shared/theme/theme.dart';
import 'package:nutrition/shared/widget/widget.dart';

class StepWeightDryInputPage extends ConsumerWidget {
  const StepWeightDryInputPage({super.key});

  static const path = '/StepWeightDryInputPage';
  static const name = 'StepWeightDryInputPage';

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(stepWeightDryInputProvider);
    final notifier = ref.watch(stepWeightDryInputProvider.notifier);

    return ClearFocus(
      child: SafeArea(
        child: Scaffold(
          appBar: const AppMyAppBar(),
          body: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              children: [
                const Text(
                  'Мы заверяем Вас, что это будет последний вопрос!',
                  style: AppTextStyles.headlineSmall,
                  textAlign: TextAlign.center,
                ),
                if (!state.isKeyboardOpen) const SizedBox(height: 16),
                ContainerSvgAnimate(
                  assetPaths: AssetPaths.dryWeightSvg,
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
                Expanded(
                  child: Scrollbar(
                    thumbVisibility: true,
                    child: SingleChildScrollView(
                      physics: const BouncingScrollPhysics(),
                      child: Text(
                        '''
   Определение и контроль сухого веса на диализе - важнейший аспект ухода, который помогает избежать осложнений и сохранить здоровье пациентов.
                        
   Возврат пациентов к своему сухому весу после диализа предотвращает обезвоживание и задержку жидкости в организме.''',
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
