import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:kidneysmart/core/theme/theme.dart';
import 'package:kidneysmart/core/widget/app/step_container.dart';
import 'package:kidneysmart/features/steps/activity/activity.dart';

import 'package:kidneysmart/gen/gen.dart';

class StepActivityPage extends ConsumerWidget {
  const StepActivityPage({super.key});

  static const path = '/ActivityPage';
  static const name = 'ActivityPage';

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(stepActivityProvider);
    final notifier = ref.watch(stepActivityProvider.notifier);

    return StepContainer(
      enumValid: state.enumValid,
      backPressed: notifier.backPressed,
      nextPressed: notifier.nextPressed,
      titleAppBar: 'Мы прошли общие вопросы!',
      widgets: [
        SizedBox(
          height: 200,
          child: SvgPicture.asset(AssetPaths.activitySvg),
        ),
        const SizedBox(height: 16),
        const Text(
          'Насколько вы активны?',
          textAlign: TextAlign.center,
          style: AppTextStyles.headlineMedium,
        ),
        const SizedBox(height: 16),
        ListView.builder(
          shrinkWrap: true,
          itemCount: state.listActivity.length,
          itemBuilder: (context, index) {
            final item = state.listActivity[index];
            final isActive = index == state.selectedIndex;

            return Card(
              elevation: isActive ? 10 : 0,
              child: ListTile(
                title: Text(item.title),
                subtitle: Text(item.content),
                onTap: () => notifier.setActivity(index),
              ),
            );
          },
        ),
      ],
    );
  }
}
