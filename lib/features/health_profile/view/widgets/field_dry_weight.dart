import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:nutrition/core/widget/widget.dart';
import 'package:nutrition/features/health_profile/health_profile.dart';

class FieldWeightDry extends ConsumerStatefulWidget {
  const FieldWeightDry({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _FieldNameState();
}

class _FieldNameState extends ConsumerState<FieldWeightDry> {
  late final TextEditingController controller;

  @override
  void initState() {
    final initValue = ref.read(healthProfileProvider).weightDry.result;

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
    final state = ref.watch(healthProfileProvider);
    final notifier = ref.watch(healthProfileProvider.notifier);
    final stateWeight = state.weightDry;


    return Visibility(
      visible:notifier.isDialysis && notifier.isCkdFive,
      child: AppInputCard(
        child: Column(
          children: [
            TitleSub(text: 'Укажите свой "сухой" вес', onPressedInfo: () {}),
            TextField(
              controller: controller,
              decoration: InputDecoration(
                labelText: '"Сухой" Вес',
                errorText: stateWeight.enumValid
                    .maybeMapOrNullValue(error: stateWeight.error),
                errorMaxLines: 2,
                suffixText: 'кг',
              ),
              keyboardType:
                  const TextInputType.numberWithOptions(decimal: true),
              onChanged: notifier.setWeightDry,
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
