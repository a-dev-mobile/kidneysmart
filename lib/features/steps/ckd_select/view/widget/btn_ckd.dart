import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:kidneysmart/core/widget/widget.dart';
import 'package:kidneysmart/features/steps/ckd_select/ckd.dart';

class BtnCkd extends ConsumerWidget {
  const BtnCkd({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(stepCkdSelectProvider);
    final notifier = ref.watch(stepCkdSelectProvider.notifier);

    final listBoolAll = state.listSelected;
    final listBoolWithoutLast = [...listBoolAll];
    final boolLast = listBoolWithoutLast.removeLast();

    final listTextAll = state.listCkd.map((e) => e.value);
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
          errorText: state.error,
        ),
      ],
    );
  }
}
