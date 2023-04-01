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
    final state = ref.watch(dailyDiuresisProvider);

    final notifier = ref.watch(dailyDiuresisProvider.notifier);

    final listBoolAll = state.dailyDiuresisInfo.map((e) => e.isSelected);
    final listBoolWithoutLast = [...listBoolAll];
    final boolLast = listBoolWithoutLast.removeLast();

    final listTextAll = state.dailyDiuresisInfo.map((e) => e.value);
    final listTextWithoutLast = [...listTextAll];
    final textLast = listTextWithoutLast.removeLast();

    return AppInputCard(
      child: Column(
        children: [
          BtnToggleText(
            textList: listTextWithoutLast.toList(),
            isSelected: listBoolWithoutLast.toList(),
            onPressed: notifier.setDailyDiuresis,
            title: 'Укажите уровень суточного диуреза (обьем выделяемой мочи)',
          ),

          //  all last values
          BtnToggleText(
            textList: [textLast],
            isSelected: [boolLast],
            onPressed: (v) =>
                notifier.setDailyDiuresis(v + listBoolWithoutLast.length),
            errorText: state.error,
          ),
          const FieldUrineOutput(),
        ],
      ),
    );
  }
}
