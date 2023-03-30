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

    final stateBmi = ref.watch(calculateBmiProvider);

    return Visibility(
      visible: visible,
      child: AppResultCard(
        child: Column(children: [Text(stateBmi.value.toString())]),
      ),
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
