import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:nutrition/features/steps/activity/activity.dart';
import 'package:nutrition/features/steps/common/widget/widget.dart';
import 'package:nutrition/gen/gen.dart';
import 'package:nutrition/shared/theme/theme.dart';

class StepActivityPage extends ConsumerWidget {
  const StepActivityPage({super.key});

  static const path = '/ActivityPage';
  static const name = 'ActivityPage';

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(stepActivityProvider);
    final notifier = ref.watch(stepActivityProvider.notifier);

    return StepContainer(
      widgets: [
        const Text(
          'Вот вот и закончим\nобщие вопросы!',
          textAlign: TextAlign.center,
          style: AppTextStyles.headlineSmall,
        ),
        const SizedBox(height: 16),
        SizedBox(
          width: 180,
          height: 140,
          child: SvgPicture.asset(AssetPaths.activitySvg),
        ),
        const SizedBox(height: 16),
        const Text(
          'Насколько вы активны?',
          textAlign: TextAlign.center,
          style: AppTextStyles.headlineMedium,
        ),
        const SizedBox(height: 16),
        Expanded(
          child: ListView.builder(
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
        ),
        BtnStepNextBack(
          isValid: notifier.isValid,
          backPressed: notifier.previousPage,
          nextPressed: notifier.nextPage,
        ),
      ],
    );
  }
}
