import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:nutrition/features/steps/common/widget/widget.dart';
import 'package:nutrition/features/steps/diabetes/diabetes.dart';
import 'package:nutrition/gen/gen.dart';
import 'package:nutrition/shared/theme/theme.dart';
import 'package:nutrition/shared/widget/widget.dart';

class StepDiabetesPage extends ConsumerWidget {
  const StepDiabetesPage({super.key});

  static const path = '/DiabetesPage';
  static const name = 'DiabetesPage';

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(diabetesProvider);
    final notifier = ref.watch(diabetesProvider.notifier);

    return SafeArea(
      child: Scaffold(
        appBar: const AppMyAppBar(),
        body: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              const Text(
                'Продолжаем!',
                style: AppTextStyles.headlineLarge,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 16),
              SizedBox(
                height: 180,
                width: 180,
                child: SvgPicture.asset(AssetPaths.diabetSvg),
              ),
              const SizedBox(height: 16),
              const Text(
                'У Вас есть диабет?',
                style: AppTextStyles.headlineLarge,
              ),
              // const SizedBox(height: 16),
              BtnToggleText(
                textList: state.listDiabetes.map((e) => e.value).toList(),
                isSelected: state.listSelected,
                onPressed: notifier.setDiabetes,
                errorText:
                    state.enumValid.maybeMapOrNullValue(error: state.error),
              ),
              const SizedBox(height: 16),
              Expanded(
                child: Scrollbar(
                  thumbVisibility: true,
                  child: SingleChildScrollView(
                    physics: const BouncingScrollPhysics(),
                    child: Text(
                      '''
   Диабет (или сахарный диабет) является серьезным заболеванием, которое может оказать негативное влияние на состояние и функционирование почек больных ХБП (хронической болезнью почек). 
                
   Диабет вызывает повреждения на капиллярах и нервах, которые находятся в почках, что приводит к уменьшению функциональности почек. 
                
   Кроме того, диабет также может привести к повышенному кровяному давлению и возникновению вероятности появления белка в моче, что может быть признаком ухудшения функционирования почек.
                
   Поэтому контроль уровня сахара в крови и регулярное обследование являются важными мерами профилактики и лечения диабета у больных ХБП.
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
    );
  }
}
