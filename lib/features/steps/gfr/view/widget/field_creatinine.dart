// ignore_for_file:  avoid-nested-conditional-expressions, lines_longer_than_80_chars

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:nutrition/features/steps/gfr/gfr.dart';
import 'package:nutrition/localization/localization.dart';
import 'package:nutrition/shared/log/log.dart';

class FieldCreatinine extends ConsumerStatefulWidget {
  const FieldCreatinine({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _FieldNameState();
}

class _FieldNameState extends ConsumerState<FieldCreatinine>
    with WidgetsBindingObserver {
  late final TextEditingController controller;

  @override
  void initState() {
    super.initState();

    final initValue = ref.read(stepGfrInputProvider).result;

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
    final isKeyboardOpen =
        WidgetsBinding.instance.window.viewInsets.bottom != 0;


    ref
        .read(stepGfrInputProvider.notifier)
        .setKeyboard(isKeyboardOpen: isKeyboardOpen);
  }

  @override
  Widget build(BuildContext context) {
    final l = context.l10n;

    final state = ref.watch(stepGfrInputProvider);
    final notifier = ref.watch(stepGfrInputProvider.notifier);

    final inputTypeCreatinine = state.inputTypeCreatinine;

    final errorMsg = state.error;

    return TextField(
      autofocus: true,
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
