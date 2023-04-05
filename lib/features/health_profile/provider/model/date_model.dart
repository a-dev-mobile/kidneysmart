// ignore_for_file: avoid_bool_literals_in_conditional_expressions
// ignore_for_file: sort_constructors_first
import 'dart:convert';

import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import 'package:nutrition/core/enum/enum.dart';

@immutable
class DateBirthdayModel {
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

  /* init:'' */
  final String error;

  final DateTime? dateTime;

  /* init: EnumResult.init */
  final EnumResult enumValid;
  // end
   
//          --TURN_GEN--
//          v0.8.3 (data)
//  *************************************
//         GENERATED CODE
//  *************************************
  const DateBirthdayModel({
    this.days = const [],
    this.months = const [],
    this.years = const [],
    this.day = '',
    this.year = '',
    this.month = '',
    this.error = '',
    this.enumValid = EnumResult.init,
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
      'error': error, 
      'dateTime': dateTime?.toIso8601String(), 
      'enumValid': enumValid.index, 
    };
  }


  factory DateBirthdayModel.fromMap(Map<dynamic, dynamic>? map) {
    if (map == null) return const DateBirthdayModel();

    return DateBirthdayModel(
      days: (map['days'] as List<dynamic>?)?.map((e) => e as String).toList() ?? const [], 
      months: (map['months'] as List<dynamic>?)?.map((e) => e as String).toList() ?? const [], 
      years: (map['years'] as List<dynamic>?)?.map((e) => e as String).toList() ?? const [], 
      day: map['day'] as String? ?? '', 
      year: map['year'] as String? ?? '', 
      month: map['month'] as String? ?? '', 
      error: map['error'] as String? ?? '', 
      dateTime: map['dateTime'] == null ? null : DateTime.parse(map['dateTime'] as String), 
      enumValid: map['enumValid'] != null ? EnumResult.values[map['enumValid'] as int] : EnumResult.init, 
    );
  }

  DateBirthdayModel copyWith({
    List<String>? days,
    List<String>? months,
    List<String>? years,
    String? day,
    String? year,
    String? month,
    String? error,
    DateTime? dateTime,
    EnumResult? enumValid,
  }) {
    return DateBirthdayModel(
      days: days ?? this.days, 
      months: months ?? this.months, 
      years: years ?? this.years, 
      day: day ?? this.day, 
      year: year ?? this.year, 
      month: month ?? this.month, 
      error: error ?? this.error, 
      dateTime: dateTime ?? this.dateTime, 
      enumValid: enumValid ?? this.enumValid, 
    );
  }

  String toJson() => json.encode(toMap());  
  factory DateBirthdayModel.fromJson(String source) => DateBirthdayModel.fromMap(json.decode(source) as Map<String, dynamic>,);  
   
  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is DateBirthdayModel &&
            const DeepCollectionEquality().equals(other.days, days,) && 
            const DeepCollectionEquality().equals(other.months, months,) && 
            const DeepCollectionEquality().equals(other.years, years,) && 
            (identical(other.day, day) || other.day == day) && 
            (identical(other.year, year) || other.year == year) && 
            (identical(other.month, month) || other.month == month) && 
            (identical(other.error, error) || other.error == error) && 
            (identical(other.dateTime, dateTime) || other.dateTime == dateTime) && 
            (identical(other.enumValid, enumValid) || other.enumValid == enumValid));
  }

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(days,),
        const DeepCollectionEquality().hash(months,),
        const DeepCollectionEquality().hash(years,),
        day,
        year,
        month,
        error,
        dateTime,
        enumValid,
]);

  @override
  String toString() {
    return 'DateBirthdayModel(days: $days, months: $months, years: $years, day: $day, year: $year, month: $month, error: $error, dateTime: $dateTime, enumValid: $enumValid, )';
    }

}
