enum EnumActivity with Comparable<EnumActivity> {
// light
  normal('normal'),
  light('light'),
  none('none');

  const EnumActivity(this.value);
  final String value;

// end

//          --TURN_GEN--
//          v0.8.7 (enum)
//  *************************************
//         GENERATED CODE
//  *************************************

  static EnumActivity fromValue(
    String? value, {
    EnumActivity? fallback,
  }) {
    switch (value) {
      case 'normal':
        return normal;
      case 'light':
        return light;
      case 'none':
        return none;
      default:
        return fallback ??
            (throw ArgumentError.value(
              value,
              '',
              'Value not found in EnumActivity',
            ));
    }
  }

  T map<T>({
    required T Function() normal,
    required T Function() light,
    required T Function() none,
  }) {
    switch (this) {
      case EnumActivity.normal:
        return normal();
      case EnumActivity.light:
        return light();
      case EnumActivity.none:
        return none();
    }
  }

  T mapValue<T>({
    required T normal,
    required T light,
    required T none,
  }) {
    switch (this) {
      case EnumActivity.normal:
        return normal;
      case EnumActivity.light:
        return light;
      case EnumActivity.none:
        return none;
    }
  }

  T maybeMap<T>({
    required T Function() orElse,
    T Function()? normal,
    T Function()? light,
    T Function()? none,
  }) =>
      map<T>(
        normal: normal ?? orElse,
        light: light ?? orElse,
        none: none ?? orElse,
      );

  T maybeMapValue<T>({
    required T orElse,
    T? normal,
    T? light,
    T? none,
  }) =>
      mapValue<T>(
        normal: normal ?? orElse,
        light: light ?? orElse,
        none: none ?? orElse,
      );

  T? maybeMapOrNull<T>({
    T Function()? normal,
    T Function()? light,
    T Function()? none,
  }) =>
      maybeMap<T?>(
        orElse: () => null,
        normal: normal,
        light: light,
        none: none,
      );

  T? maybeMapOrNullValue<T>({
    T? normal,
    T? light,
    T? none,
  }) =>
      maybeMapValue<T?>(
        orElse: null,
        normal: normal,
        light: light,
        none: none,
      );

  static List<String> getValues() =>
      EnumActivity.values.map((e) => e.value).toList();

  @override
  int compareTo(EnumActivity other) => index.compareTo(other.index);

  @override
  String toString() => 'EnumActivity.$name($value)';
}
