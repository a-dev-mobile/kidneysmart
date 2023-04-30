import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:nutrition/features/steps/urine/urine.dart';
import 'package:nutrition/shared/widget/widget.dart';

class UrinePage extends ConsumerWidget {
  const UrinePage({super.key});

  static const path = '/UrinePage';
  static const name = 'UrinePage';

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(urineProvider);
    final notifier = ref.watch(urineProvider.notifier);

    final stateSelected = state.select;

    final listBoolAll = stateSelected.listSelected;
    final listBoolWithoutLast = [...listBoolAll];
    final boolLast = listBoolWithoutLast.removeLast();

    final listTextAll = stateSelected.listUrine.map((e) => e.value);
    final listTextWithoutLast = [...listTextAll];
    final textLast = listTextWithoutLast.removeLast();

    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8),
          child: Column(
            children: [
              const Spacer(),
              BtnToggleText(
                textList: listTextWithoutLast,
                isSelected: listBoolWithoutLast,
                onPressed: notifier.setUrineSelect,
                title:
                    'Для правильного расчета количества потребляемой жидкости приложению нужно знать, уровень суточного диуреза\n(обьем выделяемой мочи)',
              ),

              //  all last values
              BtnToggleText(
                textList: [textLast],
                isSelected: [boolLast],
                onPressed: (v) =>
                    notifier.setUrineSelect(v + listBoolWithoutLast.length),
                errorText: stateSelected.error,
              ),
              const FieldUrineOutput(),
              const Spacer(),
              BasicButton(
                onPressed: notifier.nextPage,
                disabled: !notifier.isValidAll,
                text: 'Продолжить',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
