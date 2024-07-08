import 'package:flutter/material.dart';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:kidneysmart/features/steps/weight/weight.dart';

import 'package:kidneysmart/localization/localization.dart';

class DropUnitWeight extends ConsumerWidget {
  const DropUnitWeight({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l = context.l10n;
    final state = ref.watch(weightProvider);
    final notifier = ref.watch(weightProvider.notifier);

    return Row(
      children: [
        const Expanded(child: Text('Выберите единицу измерения')),
        const SizedBox(width: 10),
        DropdownButton<EnumUnitWeight>(
          value: state.enumUnitWeight,
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
