import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:nutrition/features/steps/diabetes/diabetes.dart';
import 'package:nutrition/shared/widget/widget.dart';

class DiabetesPage extends ConsumerWidget {
  const DiabetesPage({super.key});

  static const path = '/DiabetesPage';
  static const name = 'DiabetesPage';

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(diabetesProvider);
    final notifier = ref.watch(diabetesProvider.notifier);

    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Spacer(),
              const Text('Есть ли у вас диабет?'),
              BtnToggleText(
                textList: state.listDiabetes.map((e) => e.value).toList(),
                isSelected: state.listSelected,
                onPressed: notifier.setDiabetes,
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
