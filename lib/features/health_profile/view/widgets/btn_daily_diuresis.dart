import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:nutrition/core/services/navigation/navigation.dart';

import 'package:nutrition/core/widget/widget.dart';
import 'package:nutrition/features/health_profile/health_profile.dart';
import 'package:nutrition/features/info_html/info_html.dart';

class BtnDailyDiuresis extends ConsumerWidget {
  const BtnDailyDiuresis({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(healthProfileProvider);
    final notifier = ref.watch(healthProfileProvider.notifier);
    final stateDailyDiuresis = state.dailyDiuresis;

    final listBoolAll = stateDailyDiuresis.listSelected;
    final listBoolWithoutLast = [...listBoolAll];
    final boolLast = listBoolWithoutLast.removeLast();

    final listTextAll =
        stateDailyDiuresis.listDailyDiuresis.map((e) => e.value);
    final listTextWithoutLast = [...listTextAll];
    final textLast = listTextWithoutLast.removeLast();

    return AppInputCard(
      child: Column(
        children: [
          BtnToggleText(
            textList: listTextWithoutLast.toList(),
            isSelected: listBoolWithoutLast.toList(),
            onPressed: notifier.setDailyDiuresis,
            onPressedInfo: () => ref
                .read(appRouterServiceProvider)
                .router
                .pushNamed(InfoHtmlPage.name, extra: EnumInfoType.urine),
            title: 'Укажите уровень суточного диуреза\n(обьем выделяемой мочи)',
          ),

          //  all last values
          BtnToggleText(
            textList: [textLast],
            isSelected: [boolLast],
            onPressed: (v) =>
                notifier.setDailyDiuresis(v + listBoolWithoutLast.length),
            errorText: stateDailyDiuresis.error,
          ),
          const FieldUrineOutput(),
        ],
      ),
    );
  }
}
