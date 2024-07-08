enum EnumUnitWeight implements Comparable<EnumUnitWeight> {
  kg('kg'),
  lbs('lbs');

  const EnumUnitWeight(this.value);
  final String value;

// end

//          --TURN_GEN--
//             (enum)
//  *************************************
//         GENERATED CODE
//  *************************************

  static EnumUnitWeight fromValue(
    String? value, {
    EnumUnitWeight? fallback,
  }) {
    switch (value) {
      case 'kg':
        return kg;
      case 'lbs':
        return lbs;
      default:
        return fallback ??
            (throw ArgumentError.value(
              value,
              '',
              'Value not found in EnumUnitWeight',
            ));
    }
  }

  T map<T>({
    required T Function() kg,
    required T Function() lbs,
  }) {
    switch (this) {
      case EnumUnitWeight.kg:
        return kg();
      case EnumUnitWeight.lbs:
        return lbs();
    }
  }

  T mapValue<T>({
    required T kg,
    required T lbs,
  }) {
    switch (this) {
      case EnumUnitWeight.kg:
        return kg;
      case EnumUnitWeight.lbs:
        return lbs;
    }
  }

  T maybeMap<T>({
    required T Function() orElse,
    T Function()? kg,
    T Function()? lbs,
  }) =>
      map<T>(
        kg: kg ?? orElse,
        lbs: lbs ?? orElse,
      );

  T maybeMapValue<T>({
    required T orElse,
    T? kg,
    T? lbs,
  }) =>
      mapValue<T>(
        kg: kg ?? orElse,
        lbs: lbs ?? orElse,
      );

  T? maybeMapOrNull<T>({
    T Function()? kg,
    T Function()? lbs,
  }) =>
      maybeMap<T?>(
        orElse: () => null,
        kg: kg,
        lbs: lbs,
      );

  T? maybeMapOrNullValue<T>({
    T? kg,
    T? lbs,
  }) =>
      maybeMapValue<T?>(
        orElse: null,
        kg: kg,
        lbs: lbs,
      );

  static List<String> getValues() =>
      EnumUnitWeight.values.map((e) => e.value).toList();

  @override
  int compareTo(EnumUnitWeight other) => index.compareTo(other.index);
}

extension $EnumUnitWeight on EnumUnitWeight {
  bool get kg => this == EnumUnitWeight.kg;
  bool get lbs => this == EnumUnitWeight.lbs;
}
