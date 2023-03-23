import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:nutrition/core/widget/widget.dart';
import 'package:nutrition/features/health_profile/health_profile.dart';

class BtnActivity extends ConsumerWidget {
  const BtnActivity({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final stateActivity = ref.watch(activityProvider);
    final stateHealth = ref.watch(healthProfileProvider);
    final notifierHealth = ref.watch(healthProfileProvider.notifier);

    return AppCard(
      child: BtnToggleText(
        textList: stateActivity.activityInfo.map((e) => e.value).toList(),
        isSelected:
            stateActivity.activityInfo.map((e) => e.isSelected).toList(),
        onPressed: notifierHealth.setActivity,
        errorText: stateHealth.activityModel.errorMessage,
        title: 'Укажите свою физическую активность',
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
