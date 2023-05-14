// ignore_for_file:  avoid-nested-conditional-expressions, lines_longer_than_80_chars

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:kidneysmart/features/steps/weight_dry_input/weight_dry_input.dart';

import 'package:kidneysmart/localization/localization.dart';

class FieldWeightDryInput extends ConsumerStatefulWidget {
  const FieldWeightDryInput({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _FieldNameState();
}

class _FieldNameState extends ConsumerState<FieldWeightDryInput>
    with WidgetsBindingObserver {
  late final TextEditingController controller;

  @override
  void initState() {
    super.initState();
    final initValue = ref.read(stepWeightDryInputProvider).result;

    controller = TextEditingController(text: initValue);
    // регистрируем слушателя
    WidgetsBinding.instance.addObserver(this);
  }

  @override
  void dispose() {
    controller.dispose();
    final _ = WidgetsBinding.instance.removeObserver(this);
    super.dispose();
  }

  @override
  void didChangeMetrics() {
    super.didChangeMetrics();
    final isKeyboardOpen = MediaQuery.of(context).viewInsets.bottom != 0;

    ref
        .read(stepWeightDryInputProvider.notifier)
        .setKeyboard(isKeyboardOpen: isKeyboardOpen);
  }

  @override
  Widget build(BuildContext context) {
    // ignore: unused_local_variable
    final l = context.l10n;
    // final provider = ref.watch(registrationNameProvider);
    final state = ref.watch(stepWeightDryInputProvider);

    final notifier = ref.watch(stepWeightDryInputProvider.notifier);

    return TextField(
      controller: controller,
      // autofocus: true,
      decoration: InputDecoration(
        labelText: 'Введите значение',
        errorText: state.enumValid.maybeMapOrNullValue(error: state.error),
        errorMaxLines: 2,
        suffixText: 'мл',
      ),
      keyboardType: TextInputType.number,
      onChanged: notifier.setWeightDryInput,
      inputFormatters: [
        LengthLimitingTextInputFormatter(6),
        FilteringTextInputFormatter.allow(RegExp(r'(^\d*\.?\d*)')),
      ],
    );
  }
}
