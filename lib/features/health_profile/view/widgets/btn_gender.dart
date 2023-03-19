import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:nutrition/core/widget/widget.dart';
import 'package:nutrition/features/health_profile/health_profile.dart';

class BtnGender extends ConsumerWidget {
  const BtnGender({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final stateGender = ref.watch(genderProvider);
    final stateHealth = ref.watch(healthProfileProvider);
    final notifierHealth = ref.watch(healthProfileProvider.notifier);

    return CardCustom(
      child: BtnToggleText(
        textList: stateGender.genderInfo.map((e) => e.value).toList(),
        isSelected: stateGender.genderInfo.map((e) => e.isSelected).toList(),
        onPressed: notifierHealth.setGender,
        dialogText:
            'Пол влияет на скорость метаболизма. Вот почему эта информация нужна для расчета суточной нормы.',
        errorText: stateHealth.genderModel.errorMessage,
        title: 'Для человека какого пола следует рассчитывать рекомендации?',
      ),
    );
  }
}
