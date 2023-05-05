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
                const SizedBox(height: 16),
                ImageAnimateContainer(
                  assetPaths: AssetPaths.urineInputSvg,
                  heightMax: 120,
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
   Для больных с почечной недостаточностью, заболеваниями почек или другими заболеваниями мочевыводящей системы, определение суточного объема мочи является важным индикатором здоровья почек. Суточный объем мочи может быть использован для оценки функции почек и контроля за лечением заболеваний почек, таких как хроническая почечная недостаточность.
    
   Кроме того, суточное выделение мочи может быть полезным инструментом для определения уровня жидкости в организме. Если суточное количество мочи меньше нормы, это может свидетельствовать о дегидратации или проблемах с почками, а если количество мочи выше нормы - это может указывать на нарушение механизмов удержания жидкости в организме.
    
   Знание суточного объема мочи важно, поскольку это может быть показателем функции почек и здоровья организма в целом. Если у вас есть какие-либо проблемы с почками или вы наблюдаете необычное количество мочи, обратитесь к врачу для диагностики и лечения.
                  ''',
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
