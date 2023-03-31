// ignore_for_file: constant_identifier_names

import 'dart:math';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:nutrition/core/utils/utils.dart';

import 'package:nutrition/features/health_profile/health_profile.dart';


final calculateBmiProvider =
    StateNotifierProvider.autoDispose<CalculateBmiNotifier, CalculateBmiState>(
  (ref) {
    final state = ref.watch(healthProfileProvider);

    return CalculateBmiNotifier(
      height: state.validHeightModel.value,
      weight: state.validWeightModel.value,
      day: state.validBirthdayModel.daySelected,
      month: state.validBirthdayModel.monthSelected,
      years: state.validBirthdayModel.yearSelected,
    )..load();
  },
);

class CalculateBmiNotifier extends StateNotifier<CalculateBmiState> {
  CalculateBmiNotifier({
    required this.weight,
    required this.height,
    required this.day,
    required this.month,
    required this.years,
  }) : super(
          const CalculateBmiState(),
        );

  final String weight;
  final String height;
  final String years;
  final String month;
  final String day;

  void load() {
    final w = double.tryParse(weight);
    final h = double.tryParse(height);
    final y = int.tryParse(years);
    final m = int.tryParse(month);
    final d = int.tryParse(day);

    if (w == null || h == null || y == null || d == null || m == null) return;

    final dateBridht = DateTime.parse('$years-$month-$day');

    final calcYear = DateTime.now().year - dateBridht.year;

    final result = _roundDouble(w / pow(h / 100, 2), 1);

    final bmiStatus = result >= 45
        ? EnumWeightStatus.obesity4
        : result >= 40
            ? EnumWeightStatus.obesity3
            : result >= 35
                ? EnumWeightStatus.obesity2
                : result >= 30
                    ? EnumWeightStatus.obesity1
                    : result >= 25
                        ? EnumWeightStatus.overweight
                        : result >= 18.5
                            ? EnumWeightStatus.healthyWeight
                            : result >= 16
                                ? EnumWeightStatus.underweight
                                : EnumWeightStatus.severeUnderweight;

    final bmiYear = calcYear > 20 ? EnumBmiYears.adults : EnumBmiYears.children;

    state = state.copyWith(
      value: AppUtilsNumber.correctFormatDouble(result),
      enumWeightStatus: bmiStatus,
      enumBmiYears: bmiYear,
      yearSelected: calcYear.toString(),
      monthSelected: dateBridht.month.toString(),

    );
  }

  double _roundDouble(double value, int places) {
    final mod = pow(10.0, places);

    return (value * mod).round().toDouble() / mod;
  }
}
