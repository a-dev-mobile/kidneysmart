import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:nutrition/core/widget/widget.dart';
import 'package:nutrition/features/steps/dialysis/dialysis.dart';

class DialysisPage extends ConsumerWidget {
  const DialysisPage({super.key});

  static const path = '/DialysisPage';
  static const name = 'DialysisPage';

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(dialysisProvider);
    final notifier = ref.watch(dialysisProvider.notifier);

    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8),
          child: Column(
            children: [
              const Spacer(),
              const Text('Ваш пол?'),
              BtnToggleText(
                textList: state.listDialysis.map((e) => e.value).toList(),
                isSelected: state.listSelected,
                onPressed: notifier.setDialysis,
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
