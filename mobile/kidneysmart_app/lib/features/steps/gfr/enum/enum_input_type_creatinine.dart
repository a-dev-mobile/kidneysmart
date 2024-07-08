// ignore_for_file: constant_identifier_names, non_constant_identifier_names, lines_longer_than_80_chars

enum EnumInputTypeCreatinine implements Comparable<EnumInputTypeCreatinine> {
  mgDl('mgDl'),
  mcmolL('mcmolL'),
  mmolL('mmolL');

  const EnumInputTypeCreatinine(this.value);
  final String value;

// end

//          --TURN_GEN--
//             (enum)
//  *************************************
//         GENERATED CODE
//  *************************************

  static EnumInputTypeCreatinine fromValue(
    String? value, {
    EnumInputTypeCreatinine? fallback,
  }) {
    switch (value) {
      case 'mgDl':
        return mgDl;
      case 'mcmolL':
        return mcmolL;
      case 'mmolL':
        return mmolL;
      default:
        return fallback ??
            (throw ArgumentError.value(
              value,
              '',
              'Value not found in EnumInputTypeCreatinine',
            ));
    }
  }

  T map<T>({
    required T Function() mgDl,
    required T Function() mcmolL,
    required T Function() mmolL,
  }) {
    switch (this) {
      case EnumInputTypeCreatinine.mgDl:
        return mgDl();
      case EnumInputTypeCreatinine.mcmolL:
        return mcmolL();
      case EnumInputTypeCreatinine.mmolL:
        return mmolL();
    }
  }

  T mapValue<T>({
    required T mgDl,
    required T mcmolL,
    required T mmolL,
  }) {
    switch (this) {
      case EnumInputTypeCreatinine.mgDl:
        return mgDl;
      case EnumInputTypeCreatinine.mcmolL:
        return mcmolL;
      case EnumInputTypeCreatinine.mmolL:
        return mmolL;
    }
  }

  T maybeMap<T>({
    required T Function() orElse,
    T Function()? mgDl,
    T Function()? mcmolL,
    T Function()? mmolL,
  }) =>
      map<T>(
        mgDl: mgDl ?? orElse,
        mcmolL: mcmolL ?? orElse,
        mmolL: mmolL ?? orElse,
      );

  T maybeMapValue<T>({
    required T orElse,
    T? mgDl,
    T? mcmolL,
    T? mmolL,
  }) =>
      mapValue<T>(
        mgDl: mgDl ?? orElse,
        mcmolL: mcmolL ?? orElse,
        mmolL: mmolL ?? orElse,
      );

  T? maybeMapOrNull<T>({
    T Function()? mgDl,
    T Function()? mcmolL,
    T Function()? mmolL,
  }) =>
      maybeMap<T?>(
        orElse: () => null,
        mgDl: mgDl,
        mcmolL: mcmolL,
        mmolL: mmolL,
      );

  T? maybeMapOrNullValue<T>({
    T? mgDl,
    T? mcmolL,
    T? mmolL,
  }) =>
      maybeMapValue<T?>(
        orElse: null,
        mgDl: mgDl,
        mcmolL: mcmolL,
        mmolL: mmolL,
      );

  static List<String> getValues() =>
      EnumInputTypeCreatinine.values.map((e) => e.value).toList();

  @override
  int compareTo(EnumInputTypeCreatinine other) => index.compareTo(other.index);
}

extension $EnumInputTypeCreatinine on EnumInputTypeCreatinine {
  bool get mgDl => this == EnumInputTypeCreatinine.mgDl;
  bool get mcmolL => this == EnumInputTypeCreatinine.mcmolL;
  bool get mmolL => this == EnumInputTypeCreatinine.mmolL;
}
