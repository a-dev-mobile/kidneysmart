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

    final notifier = ref.watch(diabetesProvider.notifier);

    return AppInputCard(
      child: BtnToggleText(
        textList: state.diabetesInfo.map((e) => e.value).toList(),
        isSelected: state.diabetesInfo.map((e) => e.isSelected).toList(),
        onPressed: notifier.setDiabetes,
        errorText: state.error,
        title: 'Наличие диабета',
      ),
    );
  }
}
