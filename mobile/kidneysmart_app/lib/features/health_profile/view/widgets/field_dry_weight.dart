/* import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:kidneysmart/core/services/navigation/navigation.dart';

import 'package:kidneysmart/core/widget/widget.dart';
import 'package:kidneysmart/features/health_profile/health_profile.dart';
import 'package:kidneysmart/features/info_html/info_html.dart';

class FieldWeightDry extends ConsumerStatefulWidget {
  const FieldWeightDry({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _FieldNameState();
}

class _FieldNameState extends ConsumerState<FieldWeightDry> {
  late final TextEditingController controller;

  @override
  void initState() {
    final initValue = ref.read(healthProfileProvider).dryWeightField.result;

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
    final stateDryWeight = state.dryWeightField;

    return Visibility(
      visible:
          notifier.isDialysis && notifier.isCkdFive && notifier.isKnowDryWeight,
      child: AppInputCard(
        child: Column(
          children: [
            TitleSub(
              text: 'Укажите свой "сухой" вес',
              onPressedInfo: () => _toInfo(ref),
            ),
            TextField(
              controller: controller,
              decoration: InputDecoration(
                labelText: 'Введите значение',
                errorText: stateDryWeight.enumValid
                    .maybeMapOrNullValue(error: stateDryWeight.error),
                errorMaxLines: 2,
                suffixText: 'кг',
              ),
              keyboardType:
                  const TextInputType.numberWithOptions(decimal: true),
              onChanged: notifier.setFieldDryWeight,
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

  Future<Object?> _toInfo(WidgetRef ref) {
    return ref
        .read(appRouterServiceProvider)
        .router
        .pushNamed(InfoHtmlPage.name, extra: EnumInfoType.dryWeight);
  }
}
 */
