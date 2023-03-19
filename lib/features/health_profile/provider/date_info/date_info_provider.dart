// ignore_for_file: constant_identifier_names

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:nutrition/features/common/common.dart';

final dateInfoProvider =
    StateNotifierProvider.autoDispose<DateInfoNotifier, DateInfoState>(
  (ref) {
    return DateInfoNotifier(
      ref: ref,
    )..load();
  },
);

class DateInfoNotifier extends StateNotifier<DateInfoState> {
  DateInfoNotifier({
    required Ref ref,
  })  : _ref = ref,
        super(
          const DateInfoState(),
        );

  // ignore: unused_field
  final Ref _ref;
  static const _MIN_AGE = 13;
  static const _MAX_AGE = 100;

  void load() {
    final days = _initDayMonth(start: 1, end: 31);
    final months = _initDayMonth(start: 1, end: 12);
    final years = _initYears();

    state = DateInfoState(days: days, months: months, years: years);
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
}
