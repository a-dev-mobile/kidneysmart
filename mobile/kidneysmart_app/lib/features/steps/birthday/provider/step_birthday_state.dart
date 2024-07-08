// ignore_for_file: avoid_bool_literals_in_conditional_expressions
// ignore_for_file: sort_constructors_first
import 'dart:convert';

import 'package:collection/collection.dart';
import 'package:kidneysmart/core/enum/enum.dart';
import 'package:meta/meta.dart';

@immutable
class StepBirthdayState {
  /* init: const [] */
  final List<String> days;
  /* init: const [] */
  final List<String> months;
  /* init: const [] */
  final List<String> years;

  /* init:'' */
  final String day;
  /* init:'' */
  final String year;
  /* init:'' */
  final String month;

  /* init:-1 */
  final int userMonth;
  /* init:-1 */
  final int userYearFine;
// без учета количества месяцев
  /* init:-1 */
  final int userYearCoarse;
  /* init:'' */
  final String error;

  final DateTime? dateTime;

  /* init: EnumValid.init */
  final EnumValid enumValid;
  // end

//          --TURN_GEN--
//             (data)
//  *************************************
//         GENERATED CODE
//  *************************************
  const StepBirthdayState({
    this.days = const [],
    this.months = const [],
    this.years = const [],
    this.day = '',
    this.year = '',
    this.month = '',
    this.userMonth = -1,
    this.userYearFine = -1,
    this.userYearCoarse = -1,
    this.error = '',
    this.enumValid = EnumValid.init,
    this.dateTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'days': days,
      'months': months,
      'years': years,
      'day': day,
      'year': year,
      'month': month,
      'userMonth': userMonth,
      'userYearFine': userYearFine,
      'userYearCoarse': userYearCoarse,
      'error': error,
      'dateTime': dateTime?.toIso8601String(),
      'enumValid': enumValid.index,
    };
  }

  factory StepBirthdayState.fromMap(Map<dynamic, dynamic>? map) {
    if (map == null) return const StepBirthdayState();

    return StepBirthdayState(
      days: (map['days'] as List<dynamic>?)?.map((e) => e as String).toList() ??
          const [],
      months:
          (map['months'] as List<dynamic>?)?.map((e) => e as String).toList() ??
              const [],
      years:
          (map['years'] as List<dynamic>?)?.map((e) => e as String).toList() ??
              const [],
      day: map['day'] as String? ?? '',
      year: map['year'] as String? ?? '',
      month: map['month'] as String? ?? '',
      userMonth: (map['userMonth'] as num?)?.toInt() ?? -1,
      userYearFine: (map['userYearFine'] as num?)?.toInt() ?? -1,
      userYearCoarse: (map['userYearCoarse'] as num?)?.toInt() ?? -1,
      error: map['error'] as String? ?? '',
      dateTime: map['dateTime'] == null
          ? null
          : DateTime.parse(map['dateTime'] as String),
      enumValid: map['enumValid'] != null
          ? map['enumValid'] is int
              ? EnumValid.values[map['enumValid'] as int]
              : map['enumValid'] is String
                  // ignore: prefer-enums-by-name
                  ? EnumValid.values.firstWhere(
                      (e) =>
                          e.toString().split('EnumValid.')[1] ==
                          map['enumValid'].toString(),
                      orElse: () => EnumValid.init,
                    )
                  : EnumValid.init
          : EnumValid.init,
    );
  }

  StepBirthdayState copyWith({
    List<String>? days,
    List<String>? months,
    List<String>? years,
    String? day,
    String? year,
    String? month,
    int? userMonth,
    int? userYearFine,
    int? userYearCoarse,
    String? error,
    DateTime? dateTime,
    EnumValid? enumValid,
  }) {
    return StepBirthdayState(
      days: days ?? this.days,
      months: months ?? this.months,
      years: years ?? this.years,
      day: day ?? this.day,
      year: year ?? this.year,
      month: month ?? this.month,
      userMonth: userMonth ?? this.userMonth,
      userYearFine: userYearFine ?? this.userYearFine,
      userYearCoarse: userYearCoarse ?? this.userYearCoarse,
      error: error ?? this.error,
      dateTime: dateTime ?? this.dateTime,
      enumValid: enumValid ?? this.enumValid,
    );
  }

  String toJson() => json.encode(toMap());
  factory StepBirthdayState.fromJson(String source) =>
      StepBirthdayState.fromMap(
        json.decode(source) as Map<String, dynamic>,
      );

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is StepBirthdayState &&
            const DeepCollectionEquality().equals(
              other.days,
              days,
            ) &&
            const DeepCollectionEquality().equals(
              other.months,
              months,
            ) &&
            const DeepCollectionEquality().equals(
              other.years,
              years,
            ) &&
            (identical(
                  other.day,
                  day,
                ) ||
                other.day == day) &&
            (identical(
                  other.year,
                  year,
                ) ||
                other.year == year) &&
            (identical(
                  other.month,
                  month,
                ) ||
                other.month == month) &&
            (identical(
                  other.userMonth,
                  userMonth,
                ) ||
                other.userMonth == userMonth) &&
            (identical(
                  other.userYearFine,
                  userYearFine,
                ) ||
                other.userYearFine == userYearFine) &&
            (identical(
                  other.userYearCoarse,
                  userYearCoarse,
                ) ||
                other.userYearCoarse == userYearCoarse) &&
            (identical(
                  other.error,
                  error,
                ) ||
                other.error == error) &&
            (identical(
                  other.dateTime,
                  dateTime,
                ) ||
                other.dateTime == dateTime) &&
            (identical(
                  other.enumValid,
                  enumValid,
                ) ||
                other.enumValid == enumValid));
  }

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(
          days,
        ),
        const DeepCollectionEquality().hash(
          months,
        ),
        const DeepCollectionEquality().hash(
          years,
        ),
        day,
        year,
        month,
        userMonth,
        userYearFine,
        userYearCoarse,
        error,
        dateTime,
        enumValid,
      ]);

  @override
  String toString() {
    return 'StepBirthdayState(days: $days, months: $months, years: $years, day: $day, year: $year, month: $month, userMonth: $userMonth, userYearFine: $userYearFine, userYearCoarse: $userYearCoarse, error: $error, dateTime: $dateTime, enumValid: $enumValid, )';
  }
}
