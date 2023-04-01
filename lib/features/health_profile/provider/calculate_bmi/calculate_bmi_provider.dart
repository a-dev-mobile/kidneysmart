// ignore_for_file: constant_identifier_names



import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:nutrition/features/health_profile/health_profile.dart';
import 'package:nutrition/localization/localization.dart';

final calculateBmiProvider =
    StateNotifierProvider<CalculateBmiNotifier, CalculateBmiState>(
  (ref) {
    final stateBirthday = ref.watch(dateBirthdayProvider);

    final height = ref.watch(heightProvider).value;
    final weight = ref.watch(weightProvider).value;

    final l = ref.watch(appLocalizationsProvider);

    return CalculateBmiNotifier(
      weight: weight,
      height: height,
      dateTimeBirthday: stateBirthday.dateBirthday,
      l: l,
    )..load();
  },
);

class CalculateBmiNotifier extends StateNotifier<CalculateBmiState> {
  CalculateBmiNotifier({
    required double? height,
    required double? weight,
    required DateTime? dateTimeBirthday,
    required AppLocalizations l,
  })  : _height = height,
        _weight = weight,
        _dateTimeBirthday = dateTimeBirthday,
        _l = l,
        super(const CalculateBmiState());

  final double? _height;
  final double? _weight;
  final DateTime? _dateTimeBirthday;
  final AppLocalizations _l;

  void load() {
    if (!_isValid()) return;

    // final calcYear = DateTime.now().year - _dateTimeBirthday!.year;

    // final result = _roundDouble(_weight! / pow(_height! / 100, 2), 1);

    // final bmiStatus = result >= EnumWeightStatus.obesity_4.minValue
    //     ? EnumWeightStatus.obesity_4
    //     : result >= EnumWeightStatus.obesity_3.minValue
    //         ? EnumWeightStatus.obesity_3
    //         : result >= EnumWeightStatus.obesity_2.minValue
    //             ? EnumWeightStatus.obesity_2
    //             : result >= EnumWeightStatus.obesity_1.minValue
    //                 ? EnumWeightStatus.obesity_1
    //                 : result >= EnumWeightStatus.overweight.minValue
    //                     ? EnumWeightStatus.overweight
    //                     : result >= EnumWeightStatus.normal.minValue
    //                         ? EnumWeightStatus.normal
    //                         : result >= EnumWeightStatus.mild_thinness.minValue
    //                             ? EnumWeightStatus.mild_thinness
    //                             : result >=
    //                                     EnumWeightStatus
    //                                         .moderate_thinness.minValue
    //                                 ? EnumWeightStatus.moderate_thinness
    //                                 : EnumWeightStatus.severe_thinness;

    // final bmiYear = calcYear > 20 ? EnumBmiYears.adults : EnumBmiYears.children;

    // state = state.copyWith(
    //   value: AppUtilsNumber.correctFormatDouble(result),
    //   enumWeightStatus: bmiStatus,
    //   enumBmiYears: bmiYear,
    //   yearSelected: calcYear.toString(),
    //   monthSelected: dateBridht.month.toString(),
    // );
  }

  // double _roundDouble(double value, int places) {
  //   final mod = pow(10.0, places);

  //   return (value * mod).round().toDouble() / mod;
  // }

  bool _isValid() {
    final isValidBirthday = _dateTimeBirthday != null;
    final isValidHeight = _height != null;
    final isValidWeight = _weight != null;

    if (isValidBirthday && isValidHeight && isValidBirthday) return true;

    final baseText = _l.calculate_bmi_enter;

    var changeText = '';

    if (isValidHeight && isValidWeight) {
      changeText = 'дату рождения';
    } else if (isValidBirthday && isValidWeight) {
      changeText = 'рост';
    } else if (isValidBirthday && isValidHeight) {
      changeText = 'вес';
    } else if (isValidBirthday) {
      changeText = 'вес и рост';
    } else if (isValidHeight) {
      changeText = 'дату рождения и вес';
    } else if (isValidWeight) {
      changeText = 'дату рождения и рост';
    } else {
      changeText = 'вес, дату рождения и рост';
    }
    state = state.copyWith(markdownError: '$baseText **$changeText**');

    return false;
  }
}
