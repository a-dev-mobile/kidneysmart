// ignore_for_file: constant_identifier_names

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:nutrition/core/enum/enum.dart';
import 'package:nutrition/core/valid/valid.dart';
import 'package:nutrition/features/health_profile/health_profile.dart';

final dateBirthdayProvider =
    StateNotifierProvider<DateBirthdayNotifier, DateBirthdayState>(
  (ref) {
    return DateBirthdayNotifier(
      ref: ref,
    )..load();
  },
);

class DateBirthdayNotifier extends StateNotifier<DateBirthdayState> {
  DateBirthdayNotifier({
    required Ref ref,
  })  : _ref = ref,
        super(
          const DateBirthdayState(),
        );

  // ignore: unused_field
  final Ref _ref;
  static const _MIN_AGE = 2;
  static const _MAX_AGE = 150;

  void load() {
    final days = _initDayMonth(start: 1, end: 31);
    final months = _initDayMonth(start: 1, end: 12);
    final years = _initYears();

    state = state.copyWith(days: days, months: months, years: years);
  }

  static List<String> _initYears() {
    final listYear = <String>[];
    final yearStart = DateTime.now().year - _MAX_AGE;
    final yearEnd = DateTime.now().year - _MIN_AGE;
    for (var i = yearEnd; i > yearStart; i--) {
      listYear.add(i.toString());
    }

    return listYear;
  }

  static List<String> _initDayMonth({required int start, required int end}) {
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

/* from page */
  void setDate({required EnumDate enumDate, String? v}) {
    enumDate.map(
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
    final error = _getErrorValidBirthDay();
    final day = state.day;
    final month = state.month;
    final year = state.year;
    state = state.copyWith(
      dateBirthday: error.isEmpty ? DateTime.parse('$year-$month-$day') : null,
      enumValid: error.isEmpty ? EnumValid.valid : EnumValid.error,
      errorMessage: error,
    );

    // _upgradeCreatinine(error);
  }
}
