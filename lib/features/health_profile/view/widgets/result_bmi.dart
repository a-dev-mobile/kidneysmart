import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:nutrition/core/widget/widget.dart';
import 'package:nutrition/features/health_profile/health_profile.dart';

class ResultBmi extends ConsumerWidget {
  const ResultBmi({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(healthProfileProvider);
    // final notifier = ref.watch(healthProfileProvider.notifier);
    final stateBmi = state.bmi;

    return AppResultCard(
      child: stateBmi.enumResult.mapValue(
        init: _Result(markdown: stateBmi.markdownInit),
        valid: _Result(markdown: stateBmi.markdownSuccess),
        error: _Result(markdown: stateBmi.markdownError),
      ),
    );
  }
}

class _Result extends StatelessWidget {
  const _Result({
    required this.markdown,
  });

  final String markdown;

  @override
  Widget build(BuildContext context) {
    return Markdown(
      padding: EdgeInsets.zero,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      data: markdown,
//           data: '''
// ####
// Ваш возраст - **${stateBmi.year} ${_getTextYearRu2(int.tryParse(stateBmi.yearSelected) ?? 0)}** **${stateBmi.monthSelected} **

// Ваш ИМТ составляет - **${stateBmi.bmiValue}**

// Ваш вес находится в категории - **${_getWeightStatus()}**

// Калькулятор для - **${_getTypePeopoe()}**

// ''',
      // onTapLink: (text, href, title) {
      // print('1 $text');
      // print('2 $href');
      // print('3 $title');
      // },
    );
  }

  // String? _getTypePeopoe() {
  //   return stateBmi.enumBmiYears.mapValue(
  //     children: 'дети или подроски возраста',
  //     adults: 'взрослых',
  //     none: '',
  //   );
  // }

  // String _getWeightStatus() {
  //   return stateBmi.enumWeightStatus.mapValue(
  //     severe_thinness: 'Выраженный дефицит массы тела',
  //     moderate_thinness: 'Умеренный (дефицит) массы тела',
  //     mild_thinness: 'Легкий (дефицит) массы тела',
  //     normal: 'Норма',
  //     overweight: 'Избыточная масса тела (предожирение)',
  //     obesity_1: 'Ожирение первой степени',
  //     obesity_2: 'Ожирение второй степени',
  //     obesity_3: 'Ожирение третьей степени',
  //     obesity_4: 'Ожирение четвертой степени',
  //     none: '',
  //   );
  // }

  // String _getTextYearRu2(int num) {
  //   // ignore: parameter_assignments
  //   num = num % 100;
  //   if (num > 19) {
  //     // ignore: parameter_assignments
  //     num = num % 10;
  //   }
  //   switch (num) {
  //     case 1:
  //       {
  //         return 'год';
  //       }
  //     case 2:
  //     case 3:
  //     case 4:
  //       {
  //         return 'года';
  //       }

  //     default:
  //       {
  //         return 'лет';
  //       }
  //   }
  // }
}

/*
class BtnActivity extends StatelessWidget {
  const BtnActivity({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final l = context.l10n;
    final cubit = context.watch<ActivityCubit>();
    final state = cubit.state;
    final valid = state.validActivity;

    return AppCard(
      child: BtnToggleText(
            textList: [l.normal, l.light],
            isSelected: state.activitySelected,
            onPressed:(v)=> cubit.checkActivity(v: v),
            title: 'Укажите свою физическую активность',
            errorText: valid.errorText(l: l),
          onPressedAbout: cubit.goAboutActivity,
          ),
    );
  }
}
 */
