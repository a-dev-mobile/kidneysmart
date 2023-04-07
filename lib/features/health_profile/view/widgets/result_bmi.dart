import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
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
        init: _Result(markdown: stateBmi.markdownInit),
        success: _Result(markdown: stateBmi.markdownSuccess),
        error: _Result(markdown: stateBmi.markdownError),
      ),
    );
  }
}

class _Result extends StatelessWidget {
  const _Result({
    required this.markdown,
  });

  final String markdown;

  @override
  Widget build(BuildContext context) {
    return Markdown(
      padding: EdgeInsets.zero,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      data: markdown,
    );
  }
}
