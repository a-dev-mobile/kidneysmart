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
    final state = ref.watch(healthProfileProvider);
    final notifier = ref.watch(healthProfileProvider.notifier);
    final stateGender = state.gender;

    return AppInputCard(
      child: BtnToggleText(
        textList: stateGender.listGender.map((e) => e.value).toList(),
        isSelected: stateGender.listSelected,
        onPressed: notifier.setGender,
        dialogText:
            'Пол влияет на скорость метаболизма. Вот почему эта информация нужна для расчета суточной нормы.',
        errorText:
            stateGender.enumValid.maybeMapOrNullValue(error: stateGender.error),
        title: 'Для человека какого пола следует рассчитывать рекомендации?',
      ),
    );
  }
}
