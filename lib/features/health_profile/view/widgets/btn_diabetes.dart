import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:nutrition/core/widget/widget.dart';
import 'package:nutrition/features/health_profile/health_profile.dart';

class BtnDiabetes extends ConsumerWidget {
  const BtnDiabetes({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(diabetesProvider);
    final stateHealth = ref.watch(healthProfileProvider);
    final notifierHealth = ref.watch(healthProfileProvider.notifier);

    return AppInputCard(
      child: BtnToggleText(
        textList: state.diabetesInfo.map((e) => e.value).toList(),
        isSelected: state.diabetesInfo.map((e) => e.isSelected).toList(),
        onPressed: notifierHealth.setDiabetes,
        errorText: stateHealth.validDiabetesModel.errorMessage,
        title: 'Наличие диабета',
      ),
    );
  }
}
