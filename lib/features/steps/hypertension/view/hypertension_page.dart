import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:nutrition/core/widget/widget.dart';
import 'package:nutrition/features/steps/hypertension/hypertension.dart';

class HypertensionPage extends ConsumerWidget {
  const HypertensionPage({super.key});

  static const path = '/HypertensionPage';
  static const name = 'HypertensionPage';

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(hypertensionProvider);
    final notifier = ref.watch(hypertensionProvider.notifier);

    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Spacer(),
              const Text('Есть ли у вас повышенное давление?'),
              BtnToggleText(
                textList: state.listHypertension.map((e) => e.value).toList(),
                isSelected: state.listSelected,
                onPressed: notifier.setHypertension,
                errorText:
                    state.enumValid.maybeMapOrNullValue(error: state.error),
              ),
              const Spacer(),
              BasicButton(
                onPressed: notifier.nextPage,
                disabled: !notifier.isValid,
                text: 'Продолжить',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
