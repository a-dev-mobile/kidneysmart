enum EnumDialysisType implements Comparable<EnumDialysisType> {
  perinatal('perinatal'),
  homodialysisType('homodialysis'),

  none('none');

  const EnumDialysisType(this.value);
  final String value;

// end

//          --TURN_GEN--
//             (enum)
//  *************************************
//         GENERATED CODE
//  *************************************

  static EnumDialysisType fromValue(
    String? value, {
    EnumDialysisType? fallback,
  }) {
    switch (value) {
      case 'perinatal':
        return perinatal;
      case 'homodialysis':
        return homodialysisType;
      case 'none':
        return none;
      default:
        return fallback ??
            (throw ArgumentError.value(
              value,
              '',
              'Value not found in EnumDialysisType',
            ));
    }
  }

  T map<T>({
    required T Function() perinatal,
    required T Function() homodialysisType,
    required T Function() none,
  }) {
    switch (this) {
      case EnumDialysisType.perinatal:
        return perinatal();
      case EnumDialysisType.homodialysisType:
        return homodialysisType();
      case EnumDialysisType.none:
        return none();
    }
  }

  T mapValue<T>({
    required T perinatal,
    required T homodialysisType,
    required T none,
  }) {
    switch (this) {
      case EnumDialysisType.perinatal:
        return perinatal;
      case EnumDialysisType.homodialysisType:
        return homodialysisType;
      case EnumDialysisType.none:
        return none;
    }
  }

  T maybeMap<T>({
    required T Function() orElse,
    T Function()? perinatal,
    T Function()? homodialysisType,
    T Function()? none,
  }) =>
      map<T>(
        perinatal: perinatal ?? orElse,
        homodialysisType: homodialysisType ?? orElse,
        none: none ?? orElse,
      );

  T maybeMapValue<T>({
    required T orElse,
    T? perinatal,
    T? homodialysisType,
    T? none,
  }) =>
      mapValue<T>(
        perinatal: perinatal ?? orElse,
        homodialysisType: homodialysisType ?? orElse,
        none: none ?? orElse,
      );

  T? maybeMapOrNull<T>({
    T Function()? perinatal,
    T Function()? homodialysisType,
    T Function()? none,
  }) =>
      maybeMap<T?>(
        orElse: () => null,
        perinatal: perinatal,
        homodialysisType: homodialysisType,
        none: none,
      );

  T? maybeMapOrNullValue<T>({
    T? perinatal,
    T? homodialysisType,
    T? none,
  }) =>
      maybeMapValue<T?>(
        orElse: null,
        perinatal: perinatal,
        homodialysisType: homodialysisType,
        none: none,
      );

  static List<String> getValues() =>
      EnumDialysisType.values.map((e) => e.value).toList();

  @override
  int compareTo(EnumDialysisType other) => index.compareTo(other.index);
}

extension $EnumDialysisType on EnumDialysisType {
  bool get perinatal => this == EnumDialysisType.perinatal;
  bool get homodialysisType => this == EnumDialysisType.homodialysisType;
  bool get none => this == EnumDialysisType.none;
}
