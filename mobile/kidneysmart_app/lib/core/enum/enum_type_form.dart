enum EnumTypeForm implements Comparable<EnumTypeForm> {
  years('years'),
  days('days'),
  sec('sec'),
  min('min'),
  hour('hour');

  const EnumTypeForm(this.value);

  final String value;

// end

//          --TURN_GEN--
//             (enum)
//  *************************************
//         GENERATED CODE
//  *************************************

  static EnumTypeForm fromValue(
    String? value, {
    EnumTypeForm? fallback,
  }) {
    switch (value) {
      case 'years':
        return years;
      case 'days':
        return days;
      case 'sec':
        return sec;
      case 'min':
        return min;
      case 'hour':
        return hour;
      default:
        return fallback ??
            (throw ArgumentError.value(
              value,
              'value',
              'Value not found in EnumTypeForm',
            ));
    }
  }

  static EnumTypeForm? fromValueOrNull(
    String? value,
  ) {
    switch (value) {
      case 'years':
        return years;
      case 'days':
        return days;
      case 'sec':
        return sec;
      case 'min':
        return min;
      case 'hour':
        return hour;
      default:
        return null;
    }
  }

  T map<T>({
    required T Function() years,
    required T Function() days,
    required T Function() sec,
    required T Function() min,
    required T Function() hour,
  }) {
    switch (this) {
      case EnumTypeForm.years:
        return years();
      case EnumTypeForm.days:
        return days();
      case EnumTypeForm.sec:
        return sec();
      case EnumTypeForm.min:
        return min();
      case EnumTypeForm.hour:
        return hour();
    }
  }

  T mapValue<T>({
    required T years,
    required T days,
    required T sec,
    required T min,
    required T hour,
  }) {
    switch (this) {
      case EnumTypeForm.years:
        return years;
      case EnumTypeForm.days:
        return days;
      case EnumTypeForm.sec:
        return sec;
      case EnumTypeForm.min:
        return min;
      case EnumTypeForm.hour:
        return hour;
    }
  }

  T maybeMap<T>({
    required T Function() orElse,
    T Function()? years,
    T Function()? days,
    T Function()? sec,
    T Function()? min,
    T Function()? hour,
  }) =>
      map<T>(
        years: years ?? orElse,
        days: days ?? orElse,
        sec: sec ?? orElse,
        min: min ?? orElse,
        hour: hour ?? orElse,
      );

  T maybeMapValue<T>({
    required T orElse,
    T? years,
    T? days,
    T? sec,
    T? min,
    T? hour,
  }) =>
      mapValue<T>(
        years: years ?? orElse,
        days: days ?? orElse,
        sec: sec ?? orElse,
        min: min ?? orElse,
        hour: hour ?? orElse,
      );

  T? maybeMapOrNull<T>({
    T Function()? years,
    T Function()? days,
    T Function()? sec,
    T Function()? min,
    T Function()? hour,
  }) =>
      maybeMap<T?>(
        orElse: () => null,
        years: years,
        days: days,
        sec: sec,
        min: min,
        hour: hour,
      );

  T? maybeMapOrNullValue<T>({
    T? years,
    T? days,
    T? sec,
    T? min,
    T? hour,
  }) =>
      maybeMapValue<T?>(
        orElse: null,
        years: years,
        days: days,
        sec: sec,
        min: min,
        hour: hour,
      );

  static List<String> getListValue() =>
      EnumTypeForm.values.map((e) => e.value).toList();

  @override
  int compareTo(EnumTypeForm other) => index.compareTo(other.index);
}

extension $EnumTypeForm on EnumTypeForm {
  bool get isYears => this == EnumTypeForm.years;
  bool get isDays => this == EnumTypeForm.days;
  bool get isSec => this == EnumTypeForm.sec;
  bool get isMin => this == EnumTypeForm.min;
  bool get isHour => this == EnumTypeForm.hour;
}
