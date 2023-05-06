import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:nutrition/features/steps/ckd/ckd.dart';
import 'package:nutrition/shared/widget/widget.dart';

class BtnCkd extends ConsumerWidget {
  const BtnCkd({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(ckdProvider);
    final notifier = ref.watch(ckdProvider.notifier);
    final stateSelect = state.select;

    final listBoolAll = stateSelect.listSelected;
    final listBoolWithoutLast = [...listBoolAll];
    final boolLast = listBoolWithoutLast.removeLast();

    final listTextAll = stateSelect.listCkd.map((e) => e.value);
    final listTextWithoutLast = [...listTextAll];
    final textLast = listTextWithoutLast.removeLast();

    return Column(
      children: [
        BtnToggleText(
          textList: listTextWithoutLast.toList(),
          isSelected: listBoolWithoutLast.toList(),
          onPressed: notifier.setCkdSelect,
        ),

        //  all last values
        BtnToggleText(
          textList: [textLast],
          isSelected: [boolLast],
          onPressed: (v) =>
              notifier.setCkdSelect(v + listBoolWithoutLast.length),
          errorText: stateSelect.error,
        ),
      ],
    );
  }
}
