import 'package:flutter/material.dart';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:nutrition/features/health_profile/health_profile.dart';

import 'package:nutrition/localization/localization.dart';

class DropUnitWeight extends ConsumerWidget {
  const DropUnitWeight({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l = context.l10n;
    final state = ref.watch(healthProfileProvider);
    final notifier = ref.watch(healthProfileProvider.notifier);
    final stateWeight = state.weight;

    return Row(
      children: [
        const Expanded(child: Text('Выберите единицу измерения')),
        const SizedBox(width: 10),
        DropdownButton<EnumUnitWeight>(
          value: stateWeight.enumUnitWeight,
          items: [
            for (var v in EnumUnitWeight.values)
              DropdownMenuItem(
                value: v,
                child: Text(_getText(type: v, l: l)),
              ),
          ],
          onChanged: notifier.changeTypeUnitWeight,
        ),
      ],
    );
  }
}

String _getText({
  required EnumUnitWeight type,
  required AppLocalizations l,
}) {
  return type.mapValue(
    kg: 'кг',
    lbs: 'фунт',
  );
}
