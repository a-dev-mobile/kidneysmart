import 'package:flutter/material.dart';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:nutrition/core/widget/widget.dart';

import 'package:nutrition/features/health_profile/health_profile.dart';
import 'package:nutrition/localization/localization.dart';

class DropBirthday extends ConsumerWidget {
  const DropBirthday({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(healthProfileProvider);
    final notifier = ref.watch(healthProfileProvider.notifier);
    final stateDateBirthday = state.dateBirthday;

    // if (stateDateInfo.months.isEmpty) return SizedBox.shrink();

    return AppInputCard(
      child: Column(
        children: [
          const TitleSub(text: 'Укажите дату своего рождения'),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              AppDropDown(
                hint: 'ДЕНЬ',
                value: stateDateBirthday.day,
                onChanged: (v) =>
                    notifier.setDate(v: v, enumDate: EnumDate.day),
                values: stateDateBirthday.days,
              ),
              _DropDownMonth(
                hint: 'MЕСЯЦ',
                onChanged: (v) =>
                    notifier.setDate(v: v, enumDate: EnumDate.month),
                value: stateDateBirthday.month,
                values: stateDateBirthday.months,
              ),
              AppDropDown(
                hint: 'ГОД',
                onChanged: (v) =>
                    notifier.setDate(v: v, enumDate: EnumDate.year),
                value: stateDateBirthday.year,
                values: stateDateBirthday.years,
              ),
            ],
          ),
          ErrorMsg(
            error: stateDateBirthday.enumValid
                .maybeMapOrNullValue(error: stateDateBirthday.error),
          ),
        ],
      ),
    );
  }
}

class _DropDownMonth extends StatelessWidget {
  const _DropDownMonth({
    required this.values,
    required this.hint,
    required this.onChanged,
    this.value,
  });
  final List<String> values;
  final String hint;
  final String? value;
  final void Function(String?) onChanged;
  @override
  Widget build(BuildContext context) {
    final l = context.l10n;

    return DropdownButton<String>(
      hint: Text(hint),
      value: value?.isNotEmpty ?? false ? value : null,
      items: [
        for (var v in values)
          DropdownMenuItem(
            value: v,
            child: Text(getMonthName(l: l, monthNumber: v)),
          ),
      ],
      onChanged: onChanged,
    );
  }

  String getMonthName({
    required String monthNumber,
    required AppLocalizations l,
  }) {
    final mapMonth = {
      '01': l.month_january,
      '02': l.month_february,
      '03': l.month_march,
      '04': l.month_april,
      '05': l.month_may,
      '06': l.month_june,
      '07': l.month_july,
      '08': l.month_august,
      '09': l.month_september,
      '10': l.month_october,
      '11': l.month_november,
      '12': l.month_december,
    };

    return mapMonth[monthNumber] ?? '';
  }
}
