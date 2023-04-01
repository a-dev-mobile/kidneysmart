// ignore_for_file: avoid_bool_literals_in_conditional_expressions
// ignore_for_file: sort_constructors_first
import 'dart:convert';

import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import 'package:nutrition/core/enum/enum.dart';

@immutable
class DateBirthdayState { 
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
  final String errorMessage;

  final DateTime? dateBirthday;

  /* init: EnumValid.init */
  final EnumValid enumValid;
  // end
   
//          --TURN_GEN--
//          v0.8.2 (data)
//  *************************************
//         GENERATED CODE 
//  *************************************
  
  const DateBirthdayState({
    this.days = const [],
    this.months = const [],
    this.years = const [],
    this.day = '',
    this.year = '',
    this.month = '',
    this.errorMessage = '',
    this.enumValid = EnumValid.init,
    this.dateBirthday,
  });


  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'days': days, 
      'months': months, 
      'years': years, 
      'day': day, 
      'year': year, 
      'month': month, 
      'errorMessage': errorMessage, 
      'dateBirthday': dateBirthday?.toIso8601String(), 
      'enumValid': enumValid.index, 
    };
  }


  factory DateBirthdayState.fromMap(Map<dynamic, dynamic>? map) {
    if (map == null) return const DateBirthdayState();

    return DateBirthdayState(
      days: (map['days'] as List<dynamic>?)?.map((e) => e as String).toList() ?? const [], 
      months: (map['months'] as List<dynamic>?)?.map((e) => e as String).toList() ?? const [], 
      years: (map['years'] as List<dynamic>?)?.map((e) => e as String).toList() ?? const [], 
      day: map['day'] as String? ?? '', 
      year: map['year'] as String? ?? '', 
      month: map['month'] as String? ?? '', 
      errorMessage: map['errorMessage'] as String? ?? '', 
      dateBirthday: map['dateBirthday'] == null ? null : DateTime.parse(map['dateBirthday'] as String), 
      enumValid: map['enumValid'] != null ? EnumValid.values[map['enumValid'] as int] : EnumValid.init, 
    );
  }

  DateBirthdayState copyWith({
    List<String>? days,
    List<String>? months,
    List<String>? years,
    String? day,
    String? year,
    String? month,
    String? errorMessage,
    DateTime? dateBirthday,
    EnumValid? enumValid,
  }) {
    return DateBirthdayState(
      days: days ?? this.days, 
      months: months ?? this.months, 
      years: years ?? this.years, 
      day: day ?? this.day, 
      year: year ?? this.year, 
      month: month ?? this.month, 
      errorMessage: errorMessage ?? this.errorMessage, 
      dateBirthday: dateBirthday ?? this.dateBirthday, 
      enumValid: enumValid ?? this.enumValid, 
    );
  }

  String toJson() => json.encode(toMap());  
  factory DateBirthdayState.fromJson(String source) => DateBirthdayState.fromMap(json.decode(source) as Map<String, dynamic>,);  
   
  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is DateBirthdayState &&
            const DeepCollectionEquality().equals(other.days, days,) && 
            const DeepCollectionEquality().equals(other.months, months,) && 
            const DeepCollectionEquality().equals(other.years, years,) && 
            (identical(other.day, day) || other.day == day) && 
            (identical(other.year, year) || other.year == year) && 
            (identical(other.month, month) || other.month == month) && 
            (identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage) && 
            (identical(other.dateBirthday, dateBirthday) || other.dateBirthday == dateBirthday) && 
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
        errorMessage,
        dateBirthday,
        enumValid,
]);

  @override
  String toString() {
    return 'DateBirthdayState(days: $days, months: $months, years: $years, day: $day, year: $year, month: $month, errorMessage: $errorMessage, dateBirthday: $dateBirthday, enumValid: $enumValid, )';
    }

}
