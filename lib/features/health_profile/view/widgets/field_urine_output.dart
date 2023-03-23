// ignore_for_file:  avoid-nested-conditional-expressions, lines_longer_than_80_chars

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:nutrition/core/widget/widget.dart';
import 'package:nutrition/features/health_profile/health_profile.dart';


class FieldUrineOutput extends ConsumerStatefulWidget {
  const FieldUrineOutput({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _FieldNameState();
}

class _FieldNameState extends ConsumerState<FieldUrineOutput> {
  late final TextEditingController controller;

  @override
  void initState() {
    final initValue = ref.read(healthProfileProvider).urineOutputModel.value;

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
    
    final isVisibly = ref.watch(dailyDiuresisProvider).isShowInput;


    // final state = ref.watch(healthProfileProvider);
    final errorMsg =
        ref.watch(healthProfileProvider).urineOutputModel.errorMessage;

    return Visibility(
      visible: isVisibly,
      child: AppCard(
        child: Column(
          children: [
            const TitleSub(
              text: 'Укажите количество выделяемой мочи',
              dialogText:
                  'Мы используем эти сведения для расчета суточной нормы потребления воды',
            ),
            TextField(
              controller: controller,
              decoration: InputDecoration(
                // labelText: 'Моча',
               errorText: errorMsg.isEmpty  ? null : errorMsg,
                errorMaxLines: 2,
                suffixText: 'мл',
              ),
              keyboardType: TextInputType.number,
              onChanged: notifier.setUrineOutput,
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
}
