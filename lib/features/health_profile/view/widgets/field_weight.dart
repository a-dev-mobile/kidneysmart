import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';


import 'package:nutrition/core/widget/widget.dart';
import 'package:nutrition/features/health_profile/health_profile.dart';



class FieldWeight extends ConsumerStatefulWidget {
  const FieldWeight({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _FieldNameState();
}

class _FieldNameState extends ConsumerState<FieldWeight> {
  late final TextEditingController controller;

  @override
  void initState() {
    final initValue = ref.read(healthProfileProvider).weightModel.value;

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
    // final provider = ref.watch(registrationNameProvider);
    final notifier = ref.watch(healthProfileProvider.notifier);

    // final state = ref.watch(healthProfileProvider);
    final errorMsg = ref.watch(healthProfileProvider).weightModel.errorMessage;

    return AppCard(
      child: Column(
        children: [
          const TitleSub(text: 'Укажите свой текущий вес'),
          const SizedBox(height: 10),
          TextField(
            controller: controller,
            decoration: InputDecoration(
              labelText: 'Вес',
              errorText: errorMsg?.isEmpty ?? true ? null : errorMsg,
              errorMaxLines: 2,
              suffixText: 'кг',
            ),
            keyboardType: const TextInputType.numberWithOptions(decimal: true),
            onChanged: notifier.setWeight,
            inputFormatters: [
              LengthLimitingTextInputFormatter(6),
              FilteringTextInputFormatter.allow(RegExp(r'(^\d*\.?\d*)')),
            ],
          ),
        ],
      ),
    );
  }
}
