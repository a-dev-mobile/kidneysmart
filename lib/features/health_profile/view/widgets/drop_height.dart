import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:nutrition/core/style/app_text_style.dart';
import 'package:nutrition/core/widget/widget.dart';

import 'package:nutrition/features/health_profile/health_profile.dart';

class DropHeight extends ConsumerWidget {
  const DropHeight({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(healthProfileProvider);
    final notifier = ref.watch(healthProfileProvider.notifier);
    final stateHeight = state.height;

    return AppInputCard(
      child: Column(
        children: [
          const TitleSub(text: 'Укажите свой рост'),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              AppDropDown(
                hint: 'Рост',
                value: stateHeight.result,
                onChanged: notifier.setHeight,
                values: stateHeight.heightList,
              ),
              const SizedBox(width: 10),
              Text(
                'см',
                style: AppTextStyles.caption(),
              ),
            ],
          ),
          ErrorMsg(
            error: stateHeight.enumValid
                .maybeMapOrNullValue(error: stateHeight.error),
          ),
        ],
      ),
    );
  }
}
