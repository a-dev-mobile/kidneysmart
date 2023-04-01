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

    final notifier = ref.watch(ckdProvider.notifier);

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
            onPressed: notifier.setCkd,
            title: 'Укажите стадию ХБП',
          ),

          //  all last values
          BtnToggleText(
            textList: [textLast],
            isSelected: [boolLast],
            onPressed: (v) => notifier.setCkd(v + listBoolWithoutLast.length),
            errorText: state.error,
          ),
          const FieldCreatinine(),
        ],
      ),
    );
  }
}
