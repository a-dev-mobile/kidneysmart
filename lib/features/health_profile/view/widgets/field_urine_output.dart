// ignore_for_file:  avoid-nested-conditional-expressions, lines_longer_than_80_chars

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:nutrition/core/widget/widget.dart';
import 'package:nutrition/features/health_profile/health_profile.dart';
import 'package:nutrition/localization/localization.dart';

class FieldUrineOutput extends ConsumerStatefulWidget {
  const FieldUrineOutput({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _FieldNameState();
}

class _FieldNameState extends ConsumerState<FieldUrineOutput> {
  late final TextEditingController controller;

  @override
  void initState() {
    final initValue =
        ref.read(healthProfileProvider).validUrineOutputModel.value;

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
    final l = context.l10n;
    // final provider = ref.watch(registrationNameProvider);
    final notifier = ref.watch(healthProfileProvider.notifier);

    final isEnabled = ref.watch(dailyDiuresisProvider).isShowInput;
    final gender = EnumGender.values[
        (ref.watch(healthProfileProvider).validGenderModel.selectedIndex) ??
            EnumGender.none.index];

    // final state = ref.watch(healthProfileProvider);
    final errorMsg =
        ref.watch(healthProfileProvider).validUrineOutputModel.errorMessage;

    return Column(
      children: [
        const TitleSub(
          text: 'Укажите количество выделяемой мочи',
          dialogText:
              'Мы используем эти сведения для расчета суточной нормы потребления воды',
        ),
        GestureDetector(
          onTap: () => _showSnack(context),
          child: TextField(
            controller: controller,
            enabled: isEnabled,
            decoration: InputDecoration(
              labelText: _getNorma(type: gender, l: l),
              errorText: errorMsg.isEmpty ? null : errorMsg,
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
        ),
      ],
    );
  }

  void _showSnack(BuildContext context) {
    ScaffoldMessenger.of(context).removeCurrentSnackBar();
    final _ = ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(
        content: Text(
          'Выберите "Ввести значение" чтобы использовать',
        ),
      ),
    );
  }

  String _getNorma({
    required EnumGender type,
    required AppLocalizations l,
  }) {
    return type.mapValue(
      female: 'Норма: у женщин – 1000-1600 мл',
      male: 'Норма: у мужчин – 1000-2000 мл',
      none: 'Для расчета нормы выберите пол',
    );
  }
}
