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

    final notifier = ref.watch(hypertensionProvider.notifier);

    return AppInputCard(
      child: BtnToggleText(
        textList: state.hypertensionInfo.map((e) => e.value).toList(),
        isSelected: state.hypertensionInfo.map((e) => e.isSelected).toList(),
        onPressed: notifier.setHypertension,
        errorText: state.error,
        title: 'Наличие гипертензии (высокое кровяное давление)',
      ),
    );
  }
}
