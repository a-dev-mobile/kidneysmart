import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:kidneysmart/core/constants/app_insets.dart';
import 'package:kidneysmart/core/theme/theme.dart';
import 'package:kidneysmart/core/widget/widget.dart';
import 'package:kidneysmart/features/steps/birthday/birthday.dart';

import 'package:kidneysmart/gen/gen.dart';
import 'package:kidneysmart/localization/localization.dart';

class StepBirthdayPage extends ConsumerWidget {
  const StepBirthdayPage({super.key});

  static const path = '/StepBirthdayPage';
  static const name = 'StepBirthdayPage';

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(stepBirthdayProvider);
    final notifier = ref.watch(stepBirthdayProvider.notifier);

    return StepContainer(
      enumValid: state.enumValid,
      backPressed: notifier.backPressed,
      nextPressed: notifier.nextPressed,
      titleAppBar: 'Еще несколько вопросов!',
      widgets: [
        SizedBox(
          height: 185,
          width: 360,
          child: SvgPicture.asset(AssetPaths.dateSvg),
        ),
        const SizedBox(height: 16),
        const Text(
          'Когда Ваш день рождения?',
          style: AppTextStyles.headlineLarge,
          textAlign: TextAlign.center,
        ),
        const SizedBox(height: 16),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AppDropDown(
              hint: 'ДЕНЬ',
              value: state.day,
              onChanged: (v) => notifier.setDate(v: v, enumDate: EnumDate.day),
              values: state.days,
            ),
            const SizedBox(
              width: AppInsets.l,
            ),
            _DropDownMonth(
              hint: 'MЕСЯЦ',
              onChanged: (v) =>
                  notifier.setDate(v: v, enumDate: EnumDate.month),
              value: state.month,
              values: state.months,
            ),
            const SizedBox(
              width: AppInsets.l,
            ),
            AppDropDown(
              hint: 'ГОД',
              onChanged: (v) => notifier.setDate(v: v, enumDate: EnumDate.year),
              value: state.year,
              values: state.years,
            ),
          ],
        ),
        ErrorMsg(
          error: state.enumValid.maybeMapOrNullValue(error: state.error),
        ),
      ],
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
