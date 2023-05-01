// ignore_for_file:  avoid-nested-conditional-expressions, lines_longer_than_80_chars

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:nutrition/features/steps/gender/gender.dart';
import 'package:nutrition/features/steps/urine/urine.dart';
import 'package:nutrition/localization/localization.dart';
import 'package:nutrition/shared/widget/widget.dart';

class FieldUrineOutput extends ConsumerStatefulWidget {
  const FieldUrineOutput({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _FieldNameState();
}

class _FieldNameState extends ConsumerState<FieldUrineOutput> {
  late final TextEditingController controller;

  @override
  void initState() {
    final initValue = ref.read(urineProvider).input.result;

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
    final state = ref.watch(urineProvider);
    final stateGender = ref.watch(stepGenderProvider);
    final notifier = ref.watch(urineProvider.notifier);

    final isEnabled = notifier.isShowInput;

    return Visibility(
      visible: isEnabled,
      child: Column(
        children: [
          const SizedBox(height: 15),
          const TitleSub(
            text: 'Укажите количество выделяемой мочи',
            // onPressedInfo: () => ref
            //     .read(appRouterServiceProvider)
            //     .router
            //     .pushNamed(InfoHtmlPage.name, extra: EnumInfoType.urine),
          ),
          const SizedBox(height: 10),
          TextField(
            controller: controller,
            enabled: isEnabled,
            decoration: InputDecoration(
              labelText: _getNorma(type: stateGender.enumGender, l: l),
              errorText: isEnabled
                  ? state.input.enumValid
                      .maybeMapOrNullValue(error: state.input.error)
                  : null,
              errorMaxLines: 2,
              suffixText: 'мл',
            ),
            keyboardType: TextInputType.number,
            onChanged: notifier.setUrineInput,
            inputFormatters: [
              LengthLimitingTextInputFormatter(6),
              FilteringTextInputFormatter.allow(RegExp(r'(^\d*\.?\d*)')),
            ],
          ),
        ],
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
      none: 'Для показа нормы выберите пол',
    );
  }
}
