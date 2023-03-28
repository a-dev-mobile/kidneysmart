// ignore_for_file:  avoid-nested-conditional-expressions, lines_longer_than_80_chars

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:nutrition/core/widget/widget.dart';
import 'package:nutrition/features/health_profile/health_profile.dart';

class FieldCreatinine extends ConsumerStatefulWidget {
  const FieldCreatinine({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _FieldNameState();
}

class _FieldNameState extends ConsumerState<FieldCreatinine> {
  late final TextEditingController controller;

  @override
  void initState() {
    final initValue =
        ref.read(healthProfileProvider).validCreatinineModel.value;

    controller = TextEditingController(text: initValue);

    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // final l = context.l10n;
    // final provider = ref.watch(registrationNameProvider);
    final notifier = ref.watch(healthProfileProvider.notifier);

    final isVisibly = ref.watch(ckdProvider).isShowInput;
    final inputTypeCreatinine = ref.watch(ckdProvider).inputTypeCreatinine;

    // final state = ref.watch(healthProfileProvider);
    final errorMsg =
        ref.watch(healthProfileProvider).validUrineOutputModel.errorMessage;

    return Visibility(
      visible: isVisibly,
      child: AppCard(
        child: Column(
          children: [
            const TitleSub(
          text: 'Укажите свой креатинин',
                  dialogText:
                  'Мы используем эти сведения для расчета клубочковой фильтрации',
            ),
            TextField(
              controller: controller,
              decoration: InputDecoration(
                   labelText: _getText(
                      type: inputTypeCreatinine,
                    ),
             
                errorText: errorMsg.isEmpty ? null : errorMsg,
                errorMaxLines: 2,
                suffixText: 'мл',
              ),
              keyboardType: TextInputType.number,
              onChanged: notifier.setCreatinine,
              inputFormatters: [
                LengthLimitingTextInputFormatter(6),
                FilteringTextInputFormatter.allow(RegExp(r'(^\d*\.?\d*)')),
              ],
            ),
          ],
        ),
      ),
    );
  }
    String _getText({
    required EnumInputTypeCreatinine type,
  }) {
    return type.map(
      mgDl: () => 'Норма: 0.3 - 1.3',
      mcmolL: () => 'Норма: 62 - 115',
    );
  }
}
