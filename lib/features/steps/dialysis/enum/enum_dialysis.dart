enum EnumDialysis with Comparable<EnumDialysis> {
  perinatal('perinatal'),
  homodialysis('homodialysis'),
  no('no'),
  none('none');

  const EnumDialysis(this.value);
  final String value;

// end

//          --TURN_GEN--
//             (enum)
//  *************************************
//         GENERATED CODE
//  *************************************

  static EnumDialysis fromValue(
    String? value, {
    EnumDialysis? fallback,
  }) {
    switch (value) {
      case 'perinatal':
        return perinatal;
      case 'homodialysis':
        return homodialysis;
      case 'no':
        return no;
      case 'none':
        return none;
      default:
        return fallback ??
            (throw ArgumentError.value(
              value,
              '',
              'Value not found in EnumDialysis',
            ));
    }
  }

  T map<T>({
    required T Function() perinatal,
    required T Function() homodialysis,
    required T Function() no,
    required T Function() none,
  }) {
    switch (this) {
      case EnumDialysis.perinatal:
        return perinatal();
      case EnumDialysis.homodialysis:
        return homodialysis();
      case EnumDialysis.no:
        return no();
      case EnumDialysis.none:
        return none();
    }
  }

  T mapValue<T>({
    required T perinatal,
    required T homodialysis,
    required T no,
    required T none,
  }) {
    switch (this) {
      case EnumDialysis.perinatal:
        return perinatal;
      case EnumDialysis.homodialysis:
        return homodialysis;
      case EnumDialysis.no:
        return no;
      case EnumDialysis.none:
        return none;
    }
  }

  T maybeMap<T>({
    required T Function() orElse,
    T Function()? perinatal,
    T Function()? homodialysis,
    T Function()? no,
    T Function()? none,
  }) =>
      map<T>(
        perinatal: perinatal ?? orElse,
        homodialysis: homodialysis ?? orElse,
        no: no ?? orElse,
        none: none ?? orElse,
      );

  T maybeMapValue<T>({
    required T orElse,
    T? perinatal,
    T? homodialysis,
    T? no,
    T? none,
  }) =>
      mapValue<T>(
        perinatal: perinatal ?? orElse,
        homodialysis: homodialysis ?? orElse,
        no: no ?? orElse,
        none: none ?? orElse,
      );

  T? maybeMapOrNull<T>({
    T Function()? perinatal,
    T Function()? homodialysis,
    T Function()? no,
    T Function()? none,
  }) =>
      maybeMap<T?>(
        orElse: () => null,
        perinatal: perinatal,
        homodialysis: homodialysis,
        no: no,
        none: none,
      );

  T? maybeMapOrNullValue<T>({
    T? perinatal,
    T? homodialysis,
    T? no,
    T? none,
  }) =>
      maybeMapValue<T?>(
        orElse: null,
        perinatal: perinatal,
        homodialysis: homodialysis,
        no: no,
        none: none,
      );

  static List<String> getValues() =>
      EnumDialysis.values.map((e) => e.value).toList();

  @override
  int compareTo(EnumDialysis other) => index.compareTo(other.index);

  @override
  String toString() => 'EnumDialysis.$name($value)';
}
