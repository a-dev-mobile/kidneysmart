/* import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:kidneysmart/core/services/navigation/navigation.dart';

import 'package:kidneysmart/core/widget/widget.dart';
import 'package:kidneysmart/features/health_profile/health_profile.dart';
import 'package:kidneysmart/features/info_html/info_html.dart';

class ResultBmi extends ConsumerWidget {
  const ResultBmi({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(healthProfileProvider);
    // final notifier = ref.watch(healthProfileProvider.notifier);
    final stateBmi = state.bmi;

    const title = 'Калькулятор индекса массы тела (ИМТ)';

    return AppResultCard(
      child: stateBmi.enumResult.mapValue(
        init: ResultCommon(
          markdown: stateBmi.markdownInit,
          title: title,
          onPressedInfo: () => _toInfo(ref),
        ),
        success: ResultCommon(
          markdown: stateBmi.markdownSuccess,
          title: title,
          onPressedInfo: () => _toInfo(ref),
        ),
        error: ResultCommon(
          markdown: stateBmi.markdownError,
          title: title,
          onPressedInfo: () => _toInfo(ref),
        ),
        load: const AppLoadPage(),
      ),
    );
  }

  Future<Object?> _toInfo(WidgetRef ref) {
    return ref
        .read(appRouterServiceProvider)
        .router
        .pushNamed(InfoHtmlPage.name, extra: EnumInfoType.bodyMassIndex);
  }
}
 */
