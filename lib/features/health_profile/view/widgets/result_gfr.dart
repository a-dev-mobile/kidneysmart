import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:nutrition/core/widget/widget.dart';
import 'package:nutrition/features/health_profile/health_profile.dart';

class ResultGfr extends ConsumerWidget {
  const ResultGfr({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(healthProfileProvider);
    // final notifier = ref.watch(healthProfileProvider.notifier);
    final stateGfr = state.gfr;
    final isVisible = state.ckd.isShowCalcCreatinine;

    return Visibility(
      visible: isVisible,
      child: AppResultCard(
        child: stateGfr.enumResult.mapValue(
          init: WidgetMarkdown(markdown: stateGfr.markdownInit),
          success: WidgetMarkdown(markdown: stateGfr.markdownSuccess),
          // success: _Result(markdown: stateGfr.markdownSuccess),
          error: WidgetMarkdown(markdown: stateGfr.markdownError),
          load: const AppLoadPage(),
        ),
      ),
    );
  }
}
