import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:nutrition/core/services/navigation/navigation.dart';

import 'package:nutrition/core/widget/widget.dart';
import 'package:nutrition/features/health_profile/health_profile.dart';
import 'package:nutrition/features/info_html/info_html.dart';

class BtnGender extends ConsumerWidget {
  const BtnGender({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(healthProfileProvider);
    final notifier = ref.watch(healthProfileProvider.notifier);
    final stateGender = state.gender;

    return AppInputCard(
      child: BtnToggleText(
        textList: stateGender.listGender.map((e) => e.value).toList(),
        isSelected: stateGender.listSelected,
        onPressed: notifier.setGender,
        onPressedInfo: () => ref
            .read(appRouterServiceProvider)
            .router
            .pushNamed(InfoHtmlPage.name, extra: EnumInfoType.activity),
        errorText:
            stateGender.enumValid.maybeMapOrNullValue(error: stateGender.error),
        title: 'Для человека какого пола следует рассчитывать рекомендации?',
      ),
    );
  }
}
