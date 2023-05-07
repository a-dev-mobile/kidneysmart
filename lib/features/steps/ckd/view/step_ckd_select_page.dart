import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:nutrition/features/steps/ckd/ckd.dart';
import 'package:nutrition/features/steps/common/widget/widget.dart';
import 'package:nutrition/gen/gen.dart';
import 'package:nutrition/shared/theme/theme.dart';
import 'package:nutrition/shared/widget/widget.dart';

class StepCkdSelectPage extends ConsumerWidget {
  const StepCkdSelectPage({super.key});

  static const path = '/CkdPage';
  static const name = 'CkdPage';

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // ignore: unused_local_variable
    final state = ref.watch(stepCkdSelectProvider);
    final notifier = ref.watch(stepCkdSelectProvider.notifier);
    final colorSecondary = Theme.of(context).colorScheme.secondary;

    return SafeArea(
      child: Scaffold(
        appBar: const AppMyAppBar(),
        body: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              const Text(
                'И возможно последний\nважный вопрос!',
                style: AppTextStyles.headlineLarge,
                textAlign: TextAlign.center,
              ),

              Text(
                '(взависимости от ответа)',
                style: AppTextStyles.labelLarge.copyWith(
                  color: colorSecondary,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 16),
              SizedBox(
                height: 150,
                child: SvgPicture.asset(AssetPaths.ckdSvg),
              ),
              const SizedBox(height: 16),
              const Text(
                'Укажите стадию ХБП',
                style: AppTextStyles.headlineSmall,
                textAlign: TextAlign.center,
              ),
              Text(
                '(хроническая болезнь почек)',
                style: AppTextStyles.labelLarge.copyWith(
                  color: colorSecondary,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 8),
              const BtnCkd(),
              // const FieldCreatinine(),
              const SizedBox(height: 16),
              Expanded(
                child: Scrollbar(
                  thumbVisibility: true,
                  child: SingleChildScrollView(
                    physics: const BouncingScrollPhysics(),
                    child: Text(
                      '''
     Хроническая болезнь почек (ХБП) - это заболевание, которое прогрессирует постепенно и проходит через несколько стадий. 

     Классификация стадий ХБП (см. рисунок - справа) основывается на скорости клубочковой фильтрации (СКФ) (см. рисунок - слева) , которая показывает, насколько хорошо почки фильтруют кровь.
     
     Знание стадии ХБП имеет важное значение для пациента, поскольку позволяет ему принимать более информированные решения относительно своего лечения, ухода и образа жизни. Также это помогает уменьшить уровень стресса, связанного с болезнью. 
   
     При своевременном выявлении и лечении ХБП можно замедлить прогрессирование заболевания и улучшить качество жизни пациента.''',
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
