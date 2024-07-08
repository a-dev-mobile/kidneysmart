// ignore_for_file:  avoid-nested-conditional-expressions, lines_longer_than_80_chars

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:kidneysmart/features/steps/common/listener/listener_keyboard.dart';

import 'package:kidneysmart/features/steps/gfr/gfr.dart';
import 'package:kidneysmart/localization/localization.dart';

class FieldCreatinine extends ConsumerStatefulWidget {
  const FieldCreatinine({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _FieldNameState();
}

class _FieldNameState extends ConsumerState<FieldCreatinine> {
  late final TextEditingController controller;
  late final ListenerKeyboard keyboardListener;
  @override
  void initState() {
    super.initState();
    final initValue = ref.read(stepGfrInputProvider).result;

    controller = TextEditingController(text: initValue);

    keyboardListener = ListenerKeyboard(
      context: context,
      onKeyboardStateChanged: (bool isKeyboardOpen, height) => ref
          .read(stepGfrInputProvider.notifier)
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
    final l = context.l10n;

    final state = ref.watch(stepGfrInputProvider);
    final notifier = ref.watch(stepGfrInputProvider.notifier);

    final inputTypeCreatinine = state.inputTypeCreatinine;

    final errorMsg = state.error;

    return TextField(
      // autofocus: true,
      controller: controller,
      decoration: InputDecoration(
        labelText: _getNorma(type: inputTypeCreatinine, l: l),
        errorText: errorMsg.isEmpty
            ? null
            : state.enumValid.maybeMapOrNullValue(
                error: state.error,
              ),
        errorMaxLines: 2,
        suffixText: _getSuffix(type: inputTypeCreatinine, l: l),
      ),
      keyboardType: TextInputType.number,
      onChanged: notifier.setCreatinine,
      inputFormatters: [
        LengthLimitingTextInputFormatter(6),
        FilteringTextInputFormatter.allow(RegExp(r'(^\d*\.?\d*)')),
      ],
    );
  }

  String _getNorma({
    required EnumInputTypeCreatinine type,
    required AppLocalizations l,
  }) {
    return type.mapValue(
      mgDl: 'Норма: 0.7 - 1.3',
      mcmolL: 'Норма: 62 - 115',
      mmolL: 'Норма: 0.062 - 0.115',
    );
  }

  String _getSuffix({
    required EnumInputTypeCreatinine type,
    required AppLocalizations l,
  }) {
    return type.mapValue(
      mgDl: l.mgDl,
      mcmolL: l.mcmolL,
      mmolL: l.mmmolL,
    );
  }
}
