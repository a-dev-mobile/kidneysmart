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
    final state = ref.watch(hypertensionProvider);
    final stateHealth = ref.watch(healthProfileProvider);
    final notifierHealth = ref.watch(healthProfileProvider.notifier);

    return AppCard(
      child: BtnToggleText(
        textList: state.hypertensionInfo.map((e) => e.value).toList(),
        isSelected: state.hypertensionInfo.map((e) => e.isSelected).toList(),
        onPressed: notifierHealth.setHypertension,
        errorText: stateHealth.validHypertensionModel.errorMessage,
        title: 'Наличие гипертензии (высокое кровяное давление)',
      ),
    );
  }
}
