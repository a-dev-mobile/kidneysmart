import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:nutrition/core/widget/widget.dart';
import 'package:nutrition/features/health_profile/health_profile.dart';

class ResultBmi extends ConsumerWidget {
  const ResultBmi({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(healthProfileProvider);
    // final notifier = ref.watch(healthProfileProvider.notifier);
    final stateBmi = state.bmi;

    return AppResultCard(
      child: stateBmi.enumResult.mapValue(
        init: WidgetMarkdown(markdown: stateBmi.markdownInit),
        success: WidgetMarkdown(markdown: stateBmi.markdownSuccess),
        error: WidgetMarkdown(markdown: stateBmi.markdownError),
        load: const AppLoadPage(),
      ),
    );
  }
}
