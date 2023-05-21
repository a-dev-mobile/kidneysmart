// ignore_for_file:  avoid-nested-conditional-expressions, lines_longer_than_80_chars

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:kidneysmart/features/steps/common/listener/listener_keyboard.dart';

import 'package:kidneysmart/features/steps/weight_dry_input/weight_dry_input.dart';

import 'package:kidneysmart/localization/localization.dart';

class FieldWeightDryInput extends ConsumerStatefulWidget {
  const FieldWeightDryInput({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _FieldNameState();
}

class _FieldNameState extends ConsumerState<FieldWeightDryInput> {
  late final TextEditingController controller;
  late final ListenerKeyboard keyboardListener;
  @override
  void initState() {
    super.initState();
    final initValue = ref.read(stepWeightDryInputProvider).result;

    controller = TextEditingController(text: initValue);

    keyboardListener = ListenerKeyboard(
      context: context,
      onKeyboardStateChanged: (isKeyboardOpen, height) => ref
          .read(stepWeightDryInputProvider.notifier)
          .setKeyboard(isKeyboardOpen: isKeyboardOpen),
    );
    keyboardListener.startListening();
  }

  @override
  void dispose() {
    controller.dispose();
    keyboardListener.dispose();
    super.dispose();
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
