import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:nutrition/features/steps/common/widget/widget.dart';
import 'package:nutrition/features/steps/gfr/gfr.dart';
import 'package:nutrition/gen/gen.dart';

import 'package:nutrition/shared/theme/theme.dart';
import 'package:nutrition/shared/widget/widget.dart';

class StepGfrInputPage extends ConsumerWidget {
  const StepGfrInputPage({super.key});

  static const path = '/StepGfrInputPage';
  static const name = 'StepGfrInputPage';

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // ignore: unused_local_variable
    final state = ref.watch(stepGfrInputProvider);
    final notifier = ref.watch(stepGfrInputProvider.notifier);
    final colorSecondary = Theme.of(context).colorScheme.secondary;

    return ClearFocus(
      child: SafeArea(
        child: Scaffold(
          appBar: const AppMyAppBar(),
          body: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              children: [
                _Title(state: state, colorSecondary: colorSecondary),
                const Text(
                  'Укажите уровень креатинина\nв сыворотке/плазме',
                  style: AppTextStyles.headlineSmall,
                  textAlign: TextAlign.center,
                ),
                Text(
                  '(метод расчета CKD-EPI)',
                  style: AppTextStyles.labelLarge.copyWith(
                    color: colorSecondary,
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 16),
                ContainerSvgAnimate(
                  assetPaths: AssetPaths.ckdSvg,
                  isKeyboardOpen: state.isKeyboardOpen,
                  heightMax: 150,
                ),
                const SizedBox(height: 16),
                const DropInputTypeCreatinine(),
                const SizedBox(height: 16),
                const FieldCreatinine(),
                const SizedBox(height: 16),
                Expanded(
                  child: Scrollbar(
                    thumbVisibility: true,
                    child: SingleChildScrollView(
                      physics: const BouncingScrollPhysics(),
                      child: Text(
                        '''
   Уровень креатинина в крови является важным маркером функции почек для больных ХБП. Он используется для оценки эффективности работы почек по удалению отходов из крови, определения стадии ХБП и отслеживания прогрессирования болезни. 

   Кроме того, уровень креатинина используется для расчета дозы лекарств при лечении ХБП. 

   Знание уровня креатинина в крови помогает врачам выбрать подходящую терапию и контролировать прогрессирование болезни.''',
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
            ),
          ),
        ),
      ),
    );
  }
}

class _Title extends StatelessWidget {
  const _Title({
    required this.state,
    required this.colorSecondary,
  });

  final StepGfrInputState state;
  final Color colorSecondary;

  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: !state.isKeyboardOpen,
      child: Column(
        children: [
          const Text(
            'Расчет СКФ',
            style: AppTextStyles.headlineLarge,
            textAlign: TextAlign.center,
          ),
          Text(
            '(скорость клубочковой фильтрации)',
            style: AppTextStyles.labelLarge.copyWith(
              color: colorSecondary,
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 16),
        ],
      ),
    );
  }
}
