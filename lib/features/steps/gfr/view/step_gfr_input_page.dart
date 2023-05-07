import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:go_router/go_router.dart';

import 'package:nutrition/features/steps/common/widget/widget.dart';
import 'package:nutrition/features/steps/gfr/gfr.dart';

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
   Для больных ХБП (хронической почечной болезнью), знание уровня креатинина в крови является крайне важным, так как он выполняет несколько функций:

   Во-первых, креатинин является маркером функции почек. Его уровень в крови позволяет оценить эффективность работы почек по удалению отходов из крови. Уровень креатинина может повышаться при ХБП, когда почки функционируют менее эффективно.

   Во-вторых, уровень креатинина используется для определения стадии ХБП. Она оценивается на основе скорости клубочковой фильтрации (СКФ), которая измеряет, насколько быстро почки очищают кровь от креатинина. Чем выше уровень креатинина, тем ниже СКФ и тем более продвинута стадия ХБП.

   В-третьих, знание уровня креатинина позволяет врачам отслеживать прогрессирование ХБП и корректировать лечение. Если уровень креатинина увеличивается, это может указывать на то, что заболевание продвигается.
  
   Наконец, уровень креатинина используется для расчета дозы лекарств, которые могут использоваться для лечения ХБП. Если функция почек нарушена, необходимо корректировать дозировку лекарств, чтобы избежать их накопления в организме и возможных побочных эффектов.

   В целом, знание уровня креатинина в крови помогает оценить функцию почек и определить стадию ХБП. Это важно для выбора подходящей терапии и контроля прогрессирования болезни.
''',
                        style: AppTextStyles.labelLarge.copyWith(
                          color: Theme.of(context).colorScheme.secondary,
                        ),
                      ),
                    ),
                  ),
                ),
                BtnStepNextBack(
                  isValid: notifier.isValid,
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
