import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:nutrition/core/widget/widget.dart';
import 'package:nutrition/features/steps/gender/gender.dart';

class GenderPage extends ConsumerWidget {
  const GenderPage({super.key});

  static const path = '/GenderPage';
  static const name = 'GenderPage';

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(genderProvider);
    final notifier = ref.watch(genderProvider.notifier);

    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Spacer(),
              const Text('Ваш пол?'),
              BtnToggleText(
                textList: state.listGender.map((e) => e.value).toList(),
                isSelected: state.listSelected,
                onPressed: notifier.setGender,
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
