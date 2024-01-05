// turnGen

enum EnumTheme implements Comparable<EnumTheme> {
  light(0),

  dark(1);

  const EnumTheme(this.id);

  final int id;

// end

//          --TURN_GEN--
//             (enum)
//  *************************************
//         GENERATED CODE
//  *************************************

  static EnumTheme fromId(
    int? id, {
    EnumTheme? fallback,
  }) {
    switch (id) {
      case 0:
        return light;
      case 1:
        return dark;
      default:
        return fallback ??
            (throw ArgumentError.value(
              id,
              'id',
              'Value not found in EnumTheme',
            ));
    }
  }

  static EnumTheme? fromIdOrNull(
    int? id,
  ) {
    switch (id) {
      case 0:
        return light;
      case 1:
        return dark;
      default:
        return null;
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

  static List<int> getListId() => EnumTheme.values.map((e) => e.id).toList();

  @override
  int compareTo(EnumTheme other) => index.compareTo(other.index);
}

extension $EnumTheme on EnumTheme {
  bool get isLight => this == EnumTheme.light;
  bool get isDark => this == EnumTheme.dark;
}
