enum EnumDate implements Comparable<EnumDate> {
  day('day'),
  month('month'),
  year('year');

  const EnumDate(this.value);
  final String value;

// end

//          --TURN_GEN--
//             (enum)
//  *************************************
//         GENERATED CODE
//  *************************************

  static EnumDate fromValue(
    String? value, {
    EnumDate? fallback,
  }) {
    switch (value) {
      case 'day':
        return day;
      case 'month':
        return month;
      case 'year':
        return year;
      default:
        return fallback ??
            (throw ArgumentError.value(
              value,
              '',
              'Value not found in EnumDate',
            ));
    }
  }

  T map<T>({
    required T Function() day,
    required T Function() month,
    required T Function() year,
  }) {
    switch (this) {
      case EnumDate.day:
        return day();
      case EnumDate.month:
        return month();
      case EnumDate.year:
        return year();
    }
  }

  T mapValue<T>({
    required T day,
    required T month,
    required T year,
  }) {
    switch (this) {
      case EnumDate.day:
        return day;
      case EnumDate.month:
        return month;
      case EnumDate.year:
        return year;
    }
  }

  T maybeMap<T>({
    required T Function() orElse,
    T Function()? day,
    T Function()? month,
    T Function()? year,
  }) =>
      map<T>(
        day: day ?? orElse,
        month: month ?? orElse,
        year: year ?? orElse,
      );

  T maybeMapValue<T>({
    required T orElse,
    T? day,
    T? month,
    T? year,
  }) =>
      mapValue<T>(
        day: day ?? orElse,
        month: month ?? orElse,
        year: year ?? orElse,
      );

  T? maybeMapOrNull<T>({
    T Function()? day,
    T Function()? month,
    T Function()? year,
  }) =>
      maybeMap<T?>(
        orElse: () => null,
        day: day,
        month: month,
        year: year,
      );

  T? maybeMapOrNullValue<T>({
    T? day,
    T? month,
    T? year,
  }) =>
      maybeMapValue<T?>(
        orElse: null,
        day: day,
        month: month,
        year: year,
      );

  static List<String> getValues() =>
      EnumDate.values.map((e) => e.value).toList();

  @override
  int compareTo(EnumDate other) => index.compareTo(other.index);
}

extension $EnumDate on EnumDate {
  bool get day => this == EnumDate.day;
  bool get month => this == EnumDate.month;
  bool get year => this == EnumDate.year;
}
