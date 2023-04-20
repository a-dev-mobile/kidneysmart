import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:nutrition/core/widget/widget.dart';
import 'package:nutrition/features/steps/urine/urine.dart';

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
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              BtnToggleText(
                textList: listTextWithoutLast.toList(),
                isSelected: listBoolWithoutLast.toList(),
                onPressed: notifier.setUrineSelect,
                title:
                    'Укажите уровень суточного диуреза\n(обьем выделяемой мочи)',
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
            ],
          ),
        ),
      ),
    );
  }
}
