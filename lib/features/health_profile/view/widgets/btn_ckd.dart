import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:nutrition/core/widget/widget.dart';
import 'package:nutrition/features/health_profile/health_profile.dart';

class BtnCkd extends ConsumerWidget {
  const BtnCkd({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(ckdProvider);
    final stateHealth = ref.watch(healthProfileProvider);
    final notifierHealth = ref.watch(healthProfileProvider.notifier);

    final listBoolAll = state.ckdInfo.map((e) => e.isSelected);
    final listBoolWithoutLast = [...listBoolAll];
    final boolLast = listBoolWithoutLast.removeLast();

    final listTextAll = state.ckdInfo.map((e) => e.value);
    final listTextWithoutLast = [...listTextAll];
    final textLast = listTextWithoutLast.removeLast();

    return AppInputCard(
      child: Column(
        children: [
          BtnToggleText(
            textList: listTextWithoutLast.toList(),
            isSelected: listBoolWithoutLast.toList(),
            onPressed: notifierHealth.setCkd,
            title: 'Укажите стадию ХБП',
          ),

          //  all last values
          BtnToggleText(
            textList: [textLast],
            isSelected: [boolLast],
            onPressed: (v) =>
                notifierHealth.setCkd(v + listBoolWithoutLast.length),
            errorText: stateHealth.validCkdModel.errorMessage,
          ),
          const FieldCreatinine(),
        ],
      ),
    );
  }
}
