import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:nutrition/core/services/navigation/navigation.dart';

import 'package:nutrition/core/widget/widget.dart';
import 'package:nutrition/features/health_profile/health_profile.dart';
import 'package:nutrition/features/info_html/info_html.dart';

class FieldWeight extends ConsumerStatefulWidget {
  const FieldWeight({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _FieldNameState();
}

class _FieldNameState extends ConsumerState<FieldWeight> {
  late final TextEditingController controller;

  @override
  void initState() {
    final initValue = ref.read(healthProfileProvider).weight.result;

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
    final stateWeight = state.weight;

    return AppInputCard(
      child: Column(
        children: [
          TitleSub(
            text: 'Укажите свой текущий вес',
            onPressedInfo: () => _toInfo(ref),
          ),
          Column(
            children: [
              const DropUnitWeight(),
              const SizedBox(height: 10),
              TextField(
                controller: controller,
                decoration: InputDecoration(
                  labelText: 'Вес',
                  errorText: stateWeight.enumValid
                      .maybeMapOrNullValue(error: stateWeight.error),
                  errorMaxLines: 2,
                  suffixText: 'кг',
                ),
                keyboardType:
                    const TextInputType.numberWithOptions(decimal: true),
                onChanged: notifier.setWeight,
                inputFormatters: [
                  LengthLimitingTextInputFormatter(6),
                  FilteringTextInputFormatter.allow(RegExp(r'(^\d*\.?\d*)')),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }

  Future<Object?> _toInfo(WidgetRef ref) {
    return ref
        .read(appRouterServiceProvider)
        .router
        .pushNamed(InfoHtmlPage.name, extra: EnumInfoType.weight);
  }
}
