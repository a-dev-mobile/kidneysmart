import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:nutrition/core/enum/enum.dart';

import 'package:nutrition/core/widget/widget.dart';
import 'package:nutrition/features/health_profile/health_profile.dart';

class ResultBmi extends ConsumerWidget {
  const ResultBmi({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final stateHealth = ref.watch(healthProfileProvider);
// if weight and height are valid
    final visible = stateHealth.validHeightModel.enumValid == EnumValid.valid &&
        stateHealth.validWeightModel.enumValid == EnumValid.valid;
    final isValidBirthday =
        stateHealth.validBirthdayModel.enumValid == EnumValid.valid;
    final stateBmi = ref.watch(calculateBmiProvider);

    return Visibility(
      visible: visible,
      child: AppResultCard(
        child: isValidBirthday
            ? _Result(stateBmi: stateBmi)
            : const Text('Для расчета ИМТ укажите дату рождения'),
      ),
    );
  }
}

class _Result extends StatelessWidget {
  const _Result({
    required this.stateBmi,
    
  });

  final CalculateBmiState stateBmi;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const TitleSub(text: 'Расчет индекса массы тела (ИМТ)'),
        RichText(
          text: TextSpan(
            text: 'Ваш ИМТ составляет ',
            style: DefaultTextStyle.of(context).style,
            children: <TextSpan>[
              TextSpan(
                text: stateBmi.value,
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
              const TextSpan(
                text:
                    ', что указывает на то, что ваш вес находится в категории ',
              ),
              TextSpan(
                text: stateBmi.enumWeightStatus.mapValue(
                    severeUnderweight: 'Выраженный дефицит массы тела',
                    underweight: 'Недостаточная (дефицит) масса тела',
                    healthyWeight: 'Норма',
                    overweight: 'Избыточная масса тела (предожирение)',
                    obesity1: 'Ожирение первой степени',
                    obesity2: 'Ожирение второй степени',
                    obesity3: 'Ожирение третьей степени',
                    obesity4: 'Ожирение четвертой степени',
                    none: '',),
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
              TextSpan(
                text: stateBmi.enumBmiYears.mapValue(
                    children:
                        ', для детей или подросков возраста ${stateBmi.yearSelected}л. ${stateBmi.monthSelected}м.',
                    adults: ', для взрослых ${stateBmi.yearSelected}л.',
                    none: '',),
              ),
            ],
          ),
        ),
      ],
    );
  }
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
