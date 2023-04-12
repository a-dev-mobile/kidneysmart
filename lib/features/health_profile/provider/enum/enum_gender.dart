enum EnumGender with Comparable<EnumGender> {
  female('female'),
  male('male'),
  none('none');

  const EnumGender(this.value);
  final String value;

// end

//          --TURN_GEN--
//          v0.8.7 (enum)
//  *************************************
//         GENERATED CODE
//  *************************************

  static EnumGender fromValue(
    String? value, {
    EnumGender? fallback,
  }) {
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

  static List<String> getValues() =>
      EnumGender.values.map((e) => e.value).toList();

  @override
  int compareTo(EnumGender other) => index.compareTo(other.index);

  @override
  String toString() => 'EnumGender.$name($value)';
}
