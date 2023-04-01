import 'package:flutter/material.dart';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:nutrition/features/health_profile/health_profile.dart';

import 'package:nutrition/localization/localization.dart';

class DropInputTypeCreatinine extends ConsumerWidget {
  const DropInputTypeCreatinine({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l = context.l10n;

    final state = ref.watch(creatinineProvider);
    final notifier = ref.watch(creatinineProvider.notifier);

    final inputTypeCreatinine = state.inputTypeCreatinine;

    return Row(
      children: [
        const Expanded(child: Text('Выберите единицу измерения')),
        const SizedBox(width: 10),
        DropdownButton<EnumInputTypeCreatinine>(
          value: inputTypeCreatinine,
          items: [
            for (var v in EnumInputTypeCreatinine.values)
              DropdownMenuItem(
                value: v,
                child: Text(_getText(type: v, l: l)),
              ),
          ],
          onChanged: notifier.changeTypeCreatinine,
        ),
      ],
    );
  }
}

String _getText({
  required EnumInputTypeCreatinine type,
  required AppLocalizations l,
}) {
  return type.mapValue(
    mgDl: l.mgDl,
    mcmolL: l.mcmolL,
    mmolL: l.mmmolL,
  );
}
