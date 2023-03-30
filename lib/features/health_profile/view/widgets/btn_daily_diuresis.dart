import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:nutrition/core/widget/widget.dart';
import 'package:nutrition/features/health_profile/health_profile.dart';

class BtnDailyDiuresis extends ConsumerWidget {
  const BtnDailyDiuresis({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final stateActivity = ref.watch(dailyDiuresisProvider);
    final stateHealth = ref.watch(healthProfileProvider);
    final notifierHealth = ref.watch(healthProfileProvider.notifier);

    final listBoolAll =
        stateActivity.dailyDiuresisInfo.map((e) => e.isSelected);
    final listBoolWithoutLast = [...listBoolAll];
    final boolLast = listBoolWithoutLast.removeLast();

    final listTextAll = stateActivity.dailyDiuresisInfo.map((e) => e.value);
    final listTextWithoutLast = [...listTextAll];
    final textLast = listTextWithoutLast.removeLast();

    return AppCard(
      child: Column(
        children: [
          BtnToggleText(
            textList: listTextWithoutLast.toList(),
            isSelected: listBoolWithoutLast.toList(),
            onPressed: notifierHealth.setDailyDiuresis,

            title: 'Укажите уровень суточного диуреза (обьем выделяемой мочи)',
          ),

          //  all last values
          BtnToggleText(
            textList: [textLast],
            isSelected: [boolLast],
            onPressed: (v) =>
                notifierHealth.setDailyDiuresis(v + listBoolWithoutLast.length),
            errorText: stateHealth.validDailyDiuresisModel.errorMessage,
          ),
       const FieldUrineOutput(),
        ],
      ),
    );
  }
}
