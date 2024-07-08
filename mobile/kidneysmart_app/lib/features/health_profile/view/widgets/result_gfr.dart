/* import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:kidneysmart/core/services/navigation/navigation.dart';

import 'package:kidneysmart/core/widget/widget.dart';
import 'package:kidneysmart/features/health_profile/health_profile.dart';
import 'package:kidneysmart/features/info_html/info_html.dart';

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

    const title = 'Калькулятор расчёта скорости клубочковой фильтрации';

    return Visibility(
      visible: isVisible,
      child: AppResultCard(
        child: stateGfr.enumResult.mapValue(
          init: ResultCommon(
            markdown: stateGfr.markdownInit,
            title: title,
            onPressedInfo: () => _toInfo(ref),
          ),
          success: ResultCommon(
            markdown: stateGfr.markdownSuccess,
            title: title,
            onPressedInfo: () => _toInfo(ref),
          ),
          // success: _Result(markdown: stateGfr.markdownSuccess),
          error: ResultCommon(
            markdown: stateGfr.markdownError,
            title: title,
            onPressedInfo: () => _toInfo(ref),
          ),
          load: const AppLoadPage(),
        ),
      ),
    );
  }

  Future<Object?> _toInfo(WidgetRef ref) {
    return ref
        .read(appRouterServiceProvider)
        .router
        .pushNamed(InfoHtmlPage.name, extra: EnumInfoType.activity);
  }
}
 */
