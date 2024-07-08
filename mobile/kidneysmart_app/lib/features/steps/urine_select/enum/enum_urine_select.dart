enum EnumUrine implements Comparable<EnumUrine> {
  normal('normal'),
  no('no'),
  enterValue('enterValue'),
  none('none');

  const EnumUrine(this.value);
  final String value;

// end

//          --TURN_GEN--
//             (enum)
//  *************************************
//         GENERATED CODE
//  *************************************

  static EnumUrine fromValue(
    String? value, {
    EnumUrine? fallback,
  }) {
    switch (value) {
      case 'normal':
        return normal;
      case 'no':
        return no;
      case 'enterValue':
        return enterValue;
      case 'none':
        return none;
      default:
        return fallback ??
            (throw ArgumentError.value(
              value,
              '',
              'Value not found in EnumUrine',
            ));
    }
  }

  T map<T>({
    required T Function() normal,
    required T Function() no,
    required T Function() enterValue,
    required T Function() none,
  }) {
    switch (this) {
      case EnumUrine.normal:
        return normal();
      case EnumUrine.no:
        return no();
      case EnumUrine.enterValue:
        return enterValue();
      case EnumUrine.none:
        return none();
    }
  }

  T mapValue<T>({
    required T normal,
    required T no,
    required T enterValue,
    required T none,
  }) {
    switch (this) {
      case EnumUrine.normal:
        return normal;
      case EnumUrine.no:
        return no;
      case EnumUrine.enterValue:
        return enterValue;
      case EnumUrine.none:
        return none;
    }
  }

  T maybeMap<T>({
    required T Function() orElse,
    T Function()? normal,
    T Function()? no,
    T Function()? enterValue,
    T Function()? none,
  }) =>
      map<T>(
        normal: normal ?? orElse,
        no: no ?? orElse,
        enterValue: enterValue ?? orElse,
        none: none ?? orElse,
      );

  T maybeMapValue<T>({
    required T orElse,
    T? normal,
    T? no,
    T? enterValue,
    T? none,
  }) =>
      mapValue<T>(
        normal: normal ?? orElse,
        no: no ?? orElse,
        enterValue: enterValue ?? orElse,
        none: none ?? orElse,
      );

  T? maybeMapOrNull<T>({
    T Function()? normal,
    T Function()? no,
    T Function()? enterValue,
    T Function()? none,
  }) =>
      maybeMap<T?>(
        orElse: () => null,
        normal: normal,
        no: no,
        enterValue: enterValue,
        none: none,
      );

  T? maybeMapOrNullValue<T>({
    T? normal,
    T? no,
    T? enterValue,
    T? none,
  }) =>
      maybeMapValue<T?>(
        orElse: null,
        normal: normal,
        no: no,
        enterValue: enterValue,
        none: none,
      );

  static List<String> getValues() =>
      EnumUrine.values.map((e) => e.value).toList();

  @override
  int compareTo(EnumUrine other) => index.compareTo(other.index);
}

extension $EnumUrine on EnumUrine {
  bool get normal => this == EnumUrine.normal;
  bool get no => this == EnumUrine.no;
  bool get enterValue => this == EnumUrine.enterValue;
  bool get none => this == EnumUrine.none;
}
