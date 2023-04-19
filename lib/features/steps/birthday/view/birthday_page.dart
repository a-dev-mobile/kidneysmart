import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:nutrition/core/widget/widget.dart';

import 'package:nutrition/features/steps/birthday/birthday.dart';

import 'package:nutrition/localization/localization.dart';

class BirthdayPage extends ConsumerWidget {
  const BirthdayPage({super.key});

  static const path = '/BirthdayPage';
  static const name = 'BirthdayPage';

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(birthdayProvider);
    final notifier = ref.watch(birthdayProvider.notifier);

    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Spacer(),
              const Text('Когда ваш день рождения?'),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  AppDropDown(
                    hint: 'ДЕНЬ',
                    value: state.day,
                    onChanged: (v) =>
                        notifier.setDate(v: v, enumDate: EnumDate.day),
                    values: state.days,
                  ),
                  _DropDownMonth(
                    hint: 'MЕСЯЦ',
                    onChanged: (v) =>
                        notifier.setDate(v: v, enumDate: EnumDate.month),
                    value: state.month,
                    values: state.months,
                  ),
                  AppDropDown(
                    hint: 'ГОД',
                    onChanged: (v) =>
                        notifier.setDate(v: v, enumDate: EnumDate.year),
                    value: state.year,
                    values: state.years,
                  ),
                ],
              ),
              ErrorMsg(
                error: state.enumValid.maybeMapOrNullValue(error: state.error),
              ),
              const Spacer(),
              BasicButton(
                onPressed: notifier.nextPage,
                disabled: !notifier.isValid,
                text: 'Продолжить',
              ),
            ],
          ),
        ),
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
