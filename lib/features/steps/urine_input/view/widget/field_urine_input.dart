// ignore_for_file:  avoid-nested-conditional-expressions, lines_longer_than_80_chars

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:kidneysmart/features/steps/gender/gender.dart';
import 'package:kidneysmart/features/steps/urine_input/urine_input.dart';

import 'package:kidneysmart/localization/localization.dart';

class FieldUrineOutput extends ConsumerStatefulWidget {
  const FieldUrineOutput({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _FieldNameState();
}

class _FieldNameState extends ConsumerState<FieldUrineOutput>
    with WidgetsBindingObserver {
  late final TextEditingController controller;

  @override
  void initState() {
    super.initState();
    final initValue = ref.read(stepUrineInputProvider).result;

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
        .read(stepUrineInputProvider.notifier)
        .setKeyboard(isKeyboardOpen: isKeyboardOpen);
  }

  @override
  Widget build(BuildContext context) {
    final l = context.l10n;
    // final provider = ref.watch(registrationNameProvider);
    final state = ref.watch(stepUrineInputProvider);
    final stateGender = ref.watch(stepGenderProvider);
    final notifier = ref.watch(stepUrineInputProvider.notifier);

    return TextField(
      controller: controller,
      // autofocus: true,
      decoration: InputDecoration(
        labelText: _getNorma(type: stateGender.enumGender, l: l),
        errorText: state.enumValid.maybeMapOrNullValue(error: state.error),
        errorMaxLines: 2,
        suffixText: 'мл',
      ),
      keyboardType: TextInputType.number,
      onChanged: notifier.setUrineInput,
      inputFormatters: [
        LengthLimitingTextInputFormatter(6),
        FilteringTextInputFormatter.allow(RegExp(r'(^\d*\.?\d*)')),
      ],
    );
  }

  String _getNorma({
    required EnumGender type,
    required AppLocalizations l,
  }) {
    return type.mapValue(
      female: 'Норма: у женщин – 1000-1600 мл',
      male: 'Норма: у мужчин – 1000-2000 мл',
      none: 'Для показа нормы выберите пол',
    );
  }
}
