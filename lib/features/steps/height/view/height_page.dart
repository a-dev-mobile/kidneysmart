import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:nutrition/core/style/app_text_style.dart';

import 'package:nutrition/core/widget/widget.dart';

import 'package:nutrition/features/steps/height/height.dart';

class HeightPage extends ConsumerWidget {
  const HeightPage({super.key});

  static const path = '/HeightPage';
  static const name = 'HeightPage';

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(heightProvider);
    final notifier = ref.watch(heightProvider.notifier);

    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Spacer(),
              const Text('Пожалуйста, укажите свой рост в сантиметрах:'),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  AppDropDown(
                    hint: 'Рост',
                    value: state.result,
                    onChanged: notifier.setHeight,
                    values: state.heightList,
                  ),
                  const SizedBox(width: 10),
                  Text(
                    'см',
                    style: AppTextStyles.bodyLarge(),
                  ),
                ],
              ),
              ErrorMsg(
                error: state.enumValid.maybeMapOrNullValue(error: state.error),
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
