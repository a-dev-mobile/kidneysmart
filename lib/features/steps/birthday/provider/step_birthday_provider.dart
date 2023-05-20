// ignore_for_file: constant_identifier_names

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:kidneysmart/core/data/local/shared_prefs/app_storage.dart';
import 'package:kidneysmart/core/enum/enum.dart';
import 'package:kidneysmart/core/utils/utils.dart';
import 'package:kidneysmart/features/steps/birthday/birthday.dart';
import 'package:kidneysmart/features/steps/gender/gender.dart';
import 'package:kidneysmart/features/steps/height/height.dart';
import 'package:kidneysmart/localization/localization.dart';
import 'package:kidneysmart/navigation/navigation.dart';

final stepBirthdayProvider =
    StateNotifierProvider.autoDispose<StepBirthdayNotifier, StepBirthdayState>(
  (ref) {
    return StepBirthdayNotifier(
      l: ref.watch(appLocalizationsProvider),
      storage: ref.read(appStorageProvider),
      go: ref.read(appRouterProvider),
    )..load();
  },
);

class StepBirthdayNotifier extends StateNotifier<StepBirthdayState> {
  StepBirthdayNotifier({
    required AppLocalizations l,
    required AppStorage storage,
    required AppRouter go,
  })  : _storage = storage,
        _l = l,
        _go = go,
        super(storage.getBirthdayState());

  // ignore: unused_field
  final AppStorage _storage;
  // ignore: unused_field
  final AppLocalizations _l;

  // ignore: unused_field
  final AppRouter _go;

  /// preload

  bool get isValid => state.enumValid.maybeMapValue(orElse: false, valid: true);

  static const _MIN_AGE = 18;
  static const _MAX_AGE = 150;
  void load() {
    final days = _initDayMonth(start: 1, end: 31);
    final months = _initDayMonth(start: 1, end: 12);
    final years = _initYears();

    state = state.copyWith(days: days, months: months, years: years);
  }

  List<String> _initYears() {
    final listYear = <String>[];
    final yearStart = DateTime.now().year - _MAX_AGE;
    final yearEnd = DateTime.now().year - _MIN_AGE;
    for (var i = yearEnd; i > yearStart; i--) {
      listYear.add(i.toString());
    }

    return listYear;
  }

  List<String> _initDayMonth({required int start, required int end}) {
    final list = <String>[];
    for (var i = start; i <= end; i++) {
      if (i < 10) {
        list.add('0$i');
        continue;
      }

      list.add(i.toString());
    }

    return list;
  }

  void setDate({EnumDate? enumDate, String? v}) {
    if (enumDate != null) {
      final _ = enumDate.map(
        day: () {
          state = state.copyWith(day: v);
        },
        month: () {
          state = state.copyWith(month: v);
        },
        year: () {
          state = state.copyWith(year: v);
        },
      );
    }
    final error = _getErrorValidBirthDay();
    final day = state.day;
    final month = state.month;
    final year = state.year;
    final enumValid = error.isEmpty ? EnumValid.valid : EnumValid.error;

    final dateTime = error.isEmpty ? DateTime.parse('$year-$month-$day') : null;

    final dateTimeNow = DateTime.now();

    var userYearFine =
        error.isEmpty ? dateTimeNow.year - dateTime!.year : state.userYearFine;
    var userMonth =
        error.isEmpty ? dateTimeNow.month - dateTime!.month : state.userMonth;

// более точное преобразование с учетом месяцев
    final userYearCoarse = userYearFine;
    if (userMonth.isNegative) {
      userYearFine = userYearFine - 1;
      userMonth = userMonth + 12;
    }

    state = state.copyWith(
      dateTime: dateTime,
      enumValid: enumValid,
      error: error,
      userYearCoarse: userYearCoarse,
      userYearFine: userYearFine,
      userMonth: userMonth,
    );

    _storage.setBirthdayState(state);
  }

  String _getErrorValidBirthDay() {
    final day = state.day;
    final month = state.month;
    final year = state.year;
    final isValidDay = day.isNotEmpty;
    final isValidMonth = month.isNotEmpty;
    final isValidYear = year.isNotEmpty;

    var errorMsg = '';

    if ((isValidDay && isValidMonth && isValidYear) &&
        !'$year-$month-$day'.isDate()) {
      errorMsg = 'Дата рождения указана некорректно';
    }
    if (isValidDay && isValidMonth && !isValidYear) {
      errorMsg = 'Год не указан';
    }
    if (!isValidDay && isValidMonth && isValidYear) {
      errorMsg = 'День не указан';
    }
    if (isValidDay && !isValidMonth && isValidYear) {
      errorMsg = 'Месяц не указан';
    }
    if (!isValidDay && !isValidMonth && isValidYear) {
      errorMsg = 'День и месяц не указан';
    }
    if (!isValidDay && isValidMonth && !isValidYear) {
      errorMsg = 'День и год не указан';
    }
    if (isValidDay && !isValidMonth && !isValidYear) {
      errorMsg = 'Месяц и год не указан';
    }
    if (!isValidDay && !isValidMonth && !isValidYear) {
      errorMsg = 'Укажите дату рождения';
    }

    return errorMsg;
  }

  void nextPressed() {
    _go.router.goNamed(StepHeightPage.name);
  }

  void backPressed() {
    _go.router.goNamed(StepGenderPage.name);
  }
}
