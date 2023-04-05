import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:nutrition/core/widget/widget.dart';
import 'package:nutrition/features/health_profile/health_profile.dart';

class BtnHypertension extends ConsumerWidget {
  const BtnHypertension({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(healthProfileProvider);
    final notifier = ref.watch(healthProfileProvider.notifier);
    final stateHypertension = state.hypertension;

    return AppInputCard(
      child: BtnToggleText(
        textList:
            stateHypertension.listHypertension.map((e) => e.value).toList(),
        isSelected: stateHypertension.listSelected,
        onPressed: notifier.setHypertension,
        errorText: stateHypertension.enumValid
            .maybeMapOrNullValue(error: stateHypertension.error),
        title: 'Наличие гипертензии (высокое кровяное давление)',
      ),
    );
  }
}
