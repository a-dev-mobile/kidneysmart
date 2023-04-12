enum EnumDailyDiuresis with Comparable<EnumDailyDiuresis> {
  normal('normal'),
  no('no'),
  enterValue('enterValue'),
  none('none');

  const EnumDailyDiuresis(this.value);
  final String value;

// end

//          --TURN_GEN--
//          v0.8.7 (enum)
//  *************************************
//         GENERATED CODE
//  *************************************

  static EnumDailyDiuresis fromValue(
    String? value, {
    EnumDailyDiuresis? fallback,
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
              'Value not found in EnumDailyDiuresis',
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
      case EnumDailyDiuresis.normal:
        return normal();
      case EnumDailyDiuresis.no:
        return no();
      case EnumDailyDiuresis.enterValue:
        return enterValue();
      case EnumDailyDiuresis.none:
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
      case EnumDailyDiuresis.normal:
        return normal;
      case EnumDailyDiuresis.no:
        return no;
      case EnumDailyDiuresis.enterValue:
        return enterValue;
      case EnumDailyDiuresis.none:
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
      EnumDailyDiuresis.values.map((e) => e.value).toList();

  @override
  int compareTo(EnumDailyDiuresis other) => index.compareTo(other.index);

  @override
  String toString() => 'EnumDailyDiuresis.$name($value)';
}
