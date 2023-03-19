enum EnumDate with Comparable<EnumDate> {
  day('day'),
  month('month'),
  year('year');

  const EnumDate(this.value);
  final String value;

// end

//          --TURN_GEN--
//             v0.4.7
//  *************************************
//           GENERATED CODE
//  *************************************

  /// Creates a new instance of [EnumDate] from a given String value.
  ///
  /// If the given value matches one of the values defined in the [EnumDate] enumeration,
  /// a corresponding instance of [EnumDate] is returned.
  /// If the given value is null or does not match any of the enumeration values and a fallback
  /// value is not provided, an [ArgumentError] is thrown.
  ///
  /// The `fallback` parameter is an optional [EnumDate] value that will be returned if the
  /// given value does not match any of the enumeration values.
  ///
  /// Example usage:
  /// ```dart
  /// LocaleEnum locale = LocaleEnum.fromValue('en', fallback: LocaleEnum.ru);
  /// print(locale); // Output: LocaleEnum.en(en)
  /// ```
  static EnumDate fromValue(String? value, {EnumDate? fallback}) {
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

  /// Calls the appropriate function based on the value of this [EnumDate] instance.
  ///
  /// This method returns the result of calling the appropriate function for the value of the current [EnumDate] instance.
  ///
  /// Example usage:
  /// ```dart
  /// LocaleEnum ru = LocaleEnum.ru;
  /// String result = ru.map(
  ///   ru: () => 'Привет!',
  ///   en: () => 'Hello!',
  /// );
  /// print(result); // Output: 'Привет!'
  /// ```
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

  /// Calls the appropriate function based on the value of this [EnumDate] instance.
  ///
  /// This method returns the appropriate value for the value of the current [EnumDate] instance.
  ///
  /// Example usage:
  /// ```dart
  /// LocaleEnum en = LocaleEnum.en;
  /// String result = en.mapValue(
  ///   ru: 'Привет!',
  ///   en: 'Hello!',
  /// );
  /// print(result); // Output: 'Hello!'
  /// ```
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

  /// Calls the appropriate function based on the value of this [EnumDate] instance.
  ///
  /// If the corresponding function for the value of this [EnumDate] instance is not provided,
  /// the `orElse` function will be called instead.
  /// This method returns the value returned by the appropriate function for the value of this [EnumDate] instance.
  ///
  /// Example usage:
  /// ```dart
  /// LocaleEnum ru = LocaleEnum.ru;
  /// String result = ru.maybeMap<String>(
  ///   orElse: () => 'Unknown',
  ///   ru: () => 'Привет!',
  /// );
  /// print(result); // Output: 'Привет!'
  /// ```
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

  /// Maps the value of this [EnumDate] to a new value of type [T], using the given
  /// values to replace each possible value of the enumeration.
  ///
  /// The value that corresponds to the value of this [EnumDate] is returned from this method.
  ///
  /// If no corresponding value is provided for the value of this [EnumDate], the
  /// `orElse` parameter is returned from this method.
  ///
  /// Example usage:
  /// ```dart
  /// LocaleEnum locale = LocaleEnum.en;
  /// String message = locale.maybeMapValue<String>(
  ///   orElse: 'Unknown locale',
  ///   ru: 'Привет!',
  ///   en: 'Hello!',
  /// );
  /// print(message); // Output: 'Hello!'
  /// ```
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

  /// Maps the value of this [EnumDate] to a new value of type [T], using the given
  /// functions to replace each possible value of the enumeration.
  ///
  /// The function that corresponds to the value of this
  /// [EnumDate] is called and its result is returned from this method.
  ///
  /// If no corresponding function is provided for the value of this [EnumDate], `null`
  /// is returned from this method.
  ///
  /// Example usage:
  /// ```dart
  /// LocaleEnum locale = LocaleEnum.en;
  /// String? message = locale.maybeMapOrNull<String>(
  ///   en: () => 'Hello!',
  /// );
  /// print(message); // Output: 'Hello!'
  /// ```
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

  /// Maps the value of this [EnumDate] to a new value of type [T], using the given
  /// values to replace each possible value of the enumeration.
  ///
  /// The value that corresponds to the value of this [EnumDate] is returned from this method.
  ///
  /// If no corresponding value is provided for the value of this [EnumDate], `null`
  /// is returned from this method.
  ///
  /// Example usage:
  /// ```dart
  /// LocaleEnum locale = LocaleEnum.en;
  /// String? message = locale.maybeMapOrNullValue<String>(
  ///   en: 'Hello!',
  /// );
  /// print(message); // Output: 'Hello!'
  /// ```
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

  /// Returns a list of all possible values of this enumeration.
  ///
  /// The values are returned as a list of strings, representing the value of each
  /// enumeration value in the same order as they were declared in the enumeration.
  ///
  /// Example usage:
  /// ```dart
  /// List<String> values = LocaleEnum.getValues();
  /// print(values); // Output: ['ru', 'en']
  /// ```
  static List<String> getValues() =>
      EnumDate.values.map((e) => e.value).toList();

  @override
  int compareTo(EnumDate other) => index.compareTo(other.index);

  @override
  String toString() => 'EnumDate.$name($value)';
}
