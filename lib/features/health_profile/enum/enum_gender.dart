enum EnumGender with Comparable<EnumGender> {
  female('female'),
  male('male'),
  none('none');

  const EnumGender(this.value);
  final String value;

// end

//          --TURN_GEN--
//             v0.4.7
//  *************************************
//           GENERATED CODE
//  *************************************

  /// Creates a new instance of [EnumGender] from a given String value.
  ///
  /// If the given value matches one of the values defined in the [EnumGender] enumeration,
  /// a corresponding instance of [EnumGender] is returned.
  /// If the given value is null or does not match any of the enumeration values and a fallback
  /// value is not provided, an [ArgumentError] is thrown.
  ///
  /// The `fallback` parameter is an optional [EnumGender] value that will be returned if the
  /// given value does not match any of the enumeration values.
  ///
  /// Example usage:
  /// ```dart
  /// LocaleEnum locale = LocaleEnum.fromValue('en', fallback: LocaleEnum.ru);
  /// print(locale); // Output: LocaleEnum.en(en)
  /// ```
  static EnumGender fromValue(String? value, {EnumGender? fallback}) {
    switch (value) {
      case 'female':
        return female;
      case 'male':
        return male;
      case 'none':
        return none;
      default:
        return fallback ??
            (throw ArgumentError.value(
              value,
              '',
              'Value not found in EnumGender',
            ));
    }
  }

  /// Calls the appropriate function based on the value of this [EnumGender] instance.
  ///
  /// This method returns the result of calling the appropriate function for the value of the current [EnumGender] instance.
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
    required T Function() female,
    required T Function() male,
    required T Function() none,
  }) {
    switch (this) {
      case EnumGender.female:
        return female();
      case EnumGender.male:
        return male();
      case EnumGender.none:
        return none();
    }
  }

  /// Calls the appropriate function based on the value of this [EnumGender] instance.
  ///
  /// This method returns the appropriate value for the value of the current [EnumGender] instance.
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
    required T female,
    required T male,
    required T none,
  }) {
    switch (this) {
      case EnumGender.female:
        return female;
      case EnumGender.male:
        return male;
      case EnumGender.none:
        return none;
    }
  }

  /// Calls the appropriate function based on the value of this [EnumGender] instance.
  ///
  /// If the corresponding function for the value of this [EnumGender] instance is not provided,
  /// the `orElse` function will be called instead.
  /// This method returns the value returned by the appropriate function for the value of this [EnumGender] instance.
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
    T Function()? female,
    T Function()? male,
    T Function()? none,
  }) =>
      map<T>(
        female: female ?? orElse,
        male: male ?? orElse,
        none: none ?? orElse,
      );

  /// Maps the value of this [EnumGender] to a new value of type [T], using the given
  /// values to replace each possible value of the enumeration.
  ///
  /// The value that corresponds to the value of this [EnumGender] is returned from this method.
  ///
  /// If no corresponding value is provided for the value of this [EnumGender], the
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
    T? female,
    T? male,
    T? none,
  }) =>
      mapValue<T>(
        female: female ?? orElse,
        male: male ?? orElse,
        none: none ?? orElse,
      );

  /// Maps the value of this [EnumGender] to a new value of type [T], using the given
  /// functions to replace each possible value of the enumeration.
  ///
  /// The function that corresponds to the value of this
  /// [EnumGender] is called and its result is returned from this method.
  ///
  /// If no corresponding function is provided for the value of this [EnumGender], `null`
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
    T Function()? female,
    T Function()? male,
    T Function()? none,
  }) =>
      maybeMap<T?>(
        orElse: () => null,
        female: female,
        male: male,
        none: none,
      );

  /// Maps the value of this [EnumGender] to a new value of type [T], using the given
  /// values to replace each possible value of the enumeration.
  ///
  /// The value that corresponds to the value of this [EnumGender] is returned from this method.
  ///
  /// If no corresponding value is provided for the value of this [EnumGender], `null`
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
    T? female,
    T? male,
    T? none,
  }) =>
      maybeMapValue<T?>(
        orElse: null,
        female: female,
        male: male,
        none: none,
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
      EnumGender.values.map((e) => e.value).toList();

  @override
  int compareTo(EnumGender other) => index.compareTo(other.index);

  @override
  String toString() => 'EnumGender.$name($value)';
}
