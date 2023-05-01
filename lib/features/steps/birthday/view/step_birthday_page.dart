import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:nutrition/features/steps/birthday/birthday.dart';
import 'package:nutrition/features/steps/common/widget/widget.dart';
import 'package:nutrition/gen/gen.dart';
import 'package:nutrition/localization/localization.dart';
import 'package:nutrition/shared/theme/theme.dart';
import 'package:nutrition/shared/widget/widget.dart';

class StepBirthdayPage extends ConsumerWidget {
  const StepBirthdayPage({super.key});

  static const path = '/BirthdayPage';
  static const name = 'BirthdayPage';

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(stepBirthdayProvider);
    final notifier = ref.watch(stepBirthdayProvider.notifier);

    return Scaffold(
      appBar: const AppMyAppBar(),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              const Text(
                'Еще несколько вопросов!',
                style: AppTextStyles.headlineLarge,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 16),
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
              BtnStepNextBack(
                isValid: notifier.isValid,
                backPressed: context.pop<void>,
                nextPressed: notifier.nextPage,
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
