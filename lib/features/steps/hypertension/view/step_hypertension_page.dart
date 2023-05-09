import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:nutrition/features/steps/common/widget/widget.dart';
import 'package:nutrition/features/steps/hypertension/hypertension.dart';
import 'package:nutrition/gen/gen.dart';
import 'package:nutrition/shared/theme/theme.dart';
import 'package:nutrition/shared/widget/widget.dart';

class StepHypertensionPage extends ConsumerWidget {
  const StepHypertensionPage({super.key});

  static const path = '/HypertensionPage';
  static const name = 'HypertensionPage';

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(hypertensionProvider);
    final notifier = ref.watch(hypertensionProvider.notifier);

    return SafeArea(
      child: Scaffold(
        appBar: const AppMyAppBar(),
        body: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              const Text(
                'Немного\nмедицинских вопросов',
                style: AppTextStyles.headlineLarge,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 16),
              SizedBox(
                height: 118,
                width: 335,
                child: SvgPicture.asset(AssetPaths.bloodPressureSvg),
              ),
              const SizedBox(height: 16),
              const Text(
                'Бывает ли у Вас\nвысокое давление?',
                style: AppTextStyles.headlineLarge,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 16),
              BtnToggleText(
                textList: state.listHypertension.map((e) => e.value).toList(),
                isSelected: state.listSelected,
                onPressed: notifier.setHypertension,
                errorText:
                    state.enumValid.maybeMapOrNullValue(error: state.error),
              ),
              const SizedBox(height: 16),
              Expanded(
                child: SingleChildScrollView(
                  physics: const BouncingScrollPhysics(),
                  child: Text(
                    '''
   Высокое кровяное давление (артериальная гипертензия) является общей проблемой для больных ХБП (хронической болезнью почек). 
                
   При ХБП почки не могут полностью выполнять свою функцию очищения крови от избытка жидкости и солей, что может привести к увеличению объема жидкости в организме и ухудшению кровотока.''',
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
          ),
        ),
      ),
    );
  }
}
