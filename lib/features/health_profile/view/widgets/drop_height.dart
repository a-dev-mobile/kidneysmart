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
    final stateHeight = ref.watch(heightInfoProvider);
    final stateHealth = ref.watch(healthProfileProvider);
    final notifierHealth = ref.watch(healthProfileProvider.notifier);

    return CardCustom(
      child: Column(
        children: [
          const TitleSub(text: 'Укажите свой рост'),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              AppDropDown(
                hint: 'Рост',
                value: stateHealth.heightModel.value,
                onChanged: notifierHealth.setHeight,
                values: stateHeight.heightList,
              ),
              const SizedBox(width: 10),
              Text(
                'см',
                style: AppTextStyles.caption(),
              ),
            ],
          ),
          ErrorMsg(error: stateHealth.heightModel.errorMessage),
        ],
      ),
    );
  }
}
