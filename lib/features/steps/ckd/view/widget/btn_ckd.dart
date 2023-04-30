import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:nutrition/features/info_html/info_html.dart';
import 'package:nutrition/features/steps/ckd/ckd.dart';
import 'package:nutrition/navigation/navigation.dart';
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
          onPressedInfo: () => ref
              .read(appRouterServiceProvider)
              .router
              .pushNamed(InfoHtmlPage.name, extra: EnumInfoType.activity),
          textList: listTextWithoutLast.toList(),
          isSelected: listBoolWithoutLast.toList(),
          onPressed: notifier.setCkdSelect,
          title:
              'Чтобы наше приложение могло адаптироваться к вашим потребностям, пожалуйста, выберите свою стадию ХБП\n(Хроническая болезнь почек)',
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
