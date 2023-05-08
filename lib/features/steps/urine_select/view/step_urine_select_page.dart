import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:nutrition/features/steps/common/widget/widget.dart';

import 'package:nutrition/features/steps/urine_select/urine_select.dart';
import 'package:nutrition/gen/gen.dart';
import 'package:nutrition/shared/theme/theme.dart';
import 'package:nutrition/shared/widget/widget.dart';

class StepUrineSelectPage extends ConsumerWidget {
  const StepUrineSelectPage({super.key});

  static const path = '/StepUrineSelectPage';
  static const name = 'StepUrineSelectPage';

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(stepUrineSelectProvider);
    final notifier = ref.watch(stepUrineSelectProvider.notifier);

    final listBoolAll = state.listSelected;
    final listBoolWithoutLast = [...listBoolAll];
    final boolLast = listBoolWithoutLast.removeLast();

    final listTextAll = state.listUrine.map((e) => e.value);
    final listTextWithoutLast = [...listTextAll];
    final textLast = listTextWithoutLast.removeLast();

    return SafeArea(
      child: Scaffold(
        appBar: const AppMyAppBar(),
        body: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              const Text(
                'Остались самые важные вопросы!',
                style: AppTextStyles.headlineLarge,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 16),
              SvgPicture.asset(
                AssetPaths.urineSvg,
                height: 180,
              ),
              const SizedBox(height: 16),
              const Text(
                'Укажите уровень\nсуточного диуреза',
                style: AppTextStyles.headlineSmall,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 16),
              BtnToggleText(
                textList: listTextWithoutLast,
                isSelected: listBoolWithoutLast,
                onPressed: notifier.setUrineSelect,
              ),

              //  all last values
              BtnToggleText(
                textList: [textLast],
                isSelected: [boolLast],
                onPressed: (v) =>
                    notifier.setUrineSelect(v + listBoolWithoutLast.length),
              ),
              const SizedBox(height: 16),
              Expanded(
                child: Scrollbar(
                  thumbVisibility: true,
                  child: SingleChildScrollView(
                    physics: const BouncingScrollPhysics(),
                    child: Text(
                      '''
   Нормальный суточный диурез у взрослого человека - от 800 мл до 2000 мл в сутки. 
    
   У больных ХБП суточный диурез может сильно варьироваться в зависимости от степени функциональной недостаточности почек и других факторов. 

   Измерение количества мочи может помочь определить степень функциональной недостаточности почек и необходимость дополнительных медицинских мероприятий.''',
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
