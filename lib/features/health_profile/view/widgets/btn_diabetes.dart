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
    final state = ref.watch(healthProfileProvider);
    final notifier = ref.watch(healthProfileProvider.notifier);
    final stateDiabet = state.diabet;

    return AppInputCard(
      child: BtnToggleText(
        textList: stateDiabet.listDiabet.map((e) => e.value).toList(),
        isSelected: stateDiabet.listSelected,
        onPressed: notifier.setDiabetes,
        errorText: stateDiabet.error,
        title: 'Наличие диабета',
      ),
    );
  }
}
