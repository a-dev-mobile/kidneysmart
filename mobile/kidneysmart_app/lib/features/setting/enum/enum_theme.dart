enum EnumTheme implements Comparable<EnumTheme> {
  light('light'),
  dark('dark');

  const EnumTheme(this.value);
  final String value;

// end

//          --TURN_GEN--
//             (enum)
//  *************************************
//         GENERATED CODE
//  *************************************

  static EnumTheme fromValue(
    String? value, {
    EnumTheme? fallback,
  }) {
    switch (value) {
      case 'light':
        return light;
      case 'dark':
        return dark;
      default:
        return fallback ??
            (throw ArgumentError.value(
              value,
              '',
              'Value not found in EnumTheme',
            ));
    }
  }

  T map<T>({
    required T Function() light,
    required T Function() dark,
  }) {
    switch (this) {
      case EnumTheme.light:
        return light();
      case EnumTheme.dark:
        return dark();
    }
  }

  T mapValue<T>({
    required T light,
    required T dark,
  }) {
    switch (this) {
      case EnumTheme.light:
        return light;
      case EnumTheme.dark:
        return dark;
    }
  }

  T maybeMap<T>({
    required T Function() orElse,
    T Function()? light,
    T Function()? dark,
  }) =>
      map<T>(
        light: light ?? orElse,
        dark: dark ?? orElse,
      );

  T maybeMapValue<T>({
    required T orElse,
    T? light,
    T? dark,
  }) =>
      mapValue<T>(
        light: light ?? orElse,
        dark: dark ?? orElse,
      );

  T? maybeMapOrNull<T>({
    T Function()? light,
    T Function()? dark,
  }) =>
      maybeMap<T?>(
        orElse: () => null,
        light: light,
        dark: dark,
      );

  T? maybeMapOrNullValue<T>({
    T? light,
    T? dark,
  }) =>
      maybeMapValue<T?>(
        orElse: null,
        light: light,
        dark: dark,
      );

  static List<String> getValues() =>
      EnumTheme.values.map((e) => e.value).toList();

  @override
  int compareTo(EnumTheme other) => index.compareTo(other.index);
}

extension $EnumTheme on EnumTheme {
  bool get light => this == EnumTheme.light;
  bool get dark => this == EnumTheme.dark;
}
