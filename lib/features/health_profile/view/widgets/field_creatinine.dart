// ignore_for_file:  avoid-nested-conditional-expressions, lines_longer_than_80_chars

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:nutrition/core/services/navigation/navigation.dart';
import 'package:nutrition/core/widget/widget.dart';
import 'package:nutrition/features/health_profile/health_profile.dart';
import 'package:nutrition/features/info_gfr/info_gfr.dart';
import 'package:nutrition/localization/localization.dart';

class FieldCreatinine extends ConsumerStatefulWidget {
  const FieldCreatinine({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _FieldNameState();
}

class _FieldNameState extends ConsumerState<FieldCreatinine> {
  late final TextEditingController controller;

  @override
  void initState() {
    final initValue = ref.read(healthProfileProvider).creatinine.result;

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

    final state = ref.watch(healthProfileProvider);
    final notifier = ref.watch(healthProfileProvider.notifier);
    final stateCreatinine = state.creatinine;

    final isEnabled = state.ckd.isShowCalcCreatinine;
    final inputTypeCreatinine = stateCreatinine.inputTypeCreatinine;

    final errorMsg = stateCreatinine.error;

    return Visibility(
      visible: isEnabled,
      child: Column(
        children: [
          TitleSub(
            text: 'Укажите свой креатинин',
            onPressedInfo: () => ref
                .read(appRouterServiceProvider)
                .router
                .pushNamed(InfoGfrPage.name, extra: EnumInfoType.creatinine),
          ),
          Column(
            children: [
              const DropInputTypeCreatinine(),
              const SizedBox(height: 10),
              GestureDetector(
                onTap: () => _showSnack(context),
                child: TextField(
                  enabled: isEnabled,
                  controller: controller,
                  decoration: InputDecoration(
                    labelText: _getNorma(type: inputTypeCreatinine, l: l),
                    errorText: errorMsg.isEmpty
                        ? null
                        : isEnabled
                            ? stateCreatinine.enumValid.maybeMapOrNullValue(
                                error: stateCreatinine.error,
                              )
                            : null,
                    errorMaxLines: 2,
                    suffixText: _getSuffix(type: inputTypeCreatinine, l: l),
                  ),
                  keyboardType: TextInputType.number,
                  onChanged: notifier.setCreatinine,
                  inputFormatters: [
                    LengthLimitingTextInputFormatter(6),
                    FilteringTextInputFormatter.allow(RegExp(r'(^\d*\.?\d*)')),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  void _showSnack(BuildContext context) {
    ScaffoldMessenger.of(context).removeCurrentSnackBar();
    final _ = ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(
        content: Text(
          'Выберите "Рассчитать" чтобы использовать',
        ),
      ),
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
