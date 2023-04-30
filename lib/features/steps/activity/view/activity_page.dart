import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:nutrition/features/steps/activity/activity.dart';
import 'package:nutrition/shared/widget/widget.dart';

class ActivityPage extends ConsumerWidget {
  const ActivityPage({super.key});

  static const path = '/ActivityPage';
  static const name = 'ActivityPage';

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(activityProvider);
    final notifier = ref.watch(activityProvider.notifier);

    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Spacer(),
              const Text('Насколько вы активны?'),
              BtnToggleText(
                textList: state.listActivity.map((e) => e.value).toList(),
                isSelected: state.listSelected,
                onPressed: notifier.setActivity,
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
