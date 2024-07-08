// turnGen
enum EnumTypeCalcBmiPeople implements Comparable<EnumTypeCalcBmiPeople> {
  children('children'),

  adults('adults'),
  none('none');

  const EnumTypeCalcBmiPeople(this.value);
  final String value;

// end

//          --TURN_GEN--
//             (enum)
//  *************************************
//         GENERATED CODE
//  *************************************

  static EnumTypeCalcBmiPeople fromValue(
    String? value, {
    EnumTypeCalcBmiPeople? fallback,
  }) {
    switch (value) {
      case 'children':
        return children;
      case 'adults':
        return adults;
      case 'none':
        return none;
      default:
        return fallback ??
            (throw ArgumentError.value(
              value,
              '',
              'Value not found in EnumTypeCalcBmiPeople',
            ));
    }
  }

  T map<T>({
    required T Function() children,
    required T Function() adults,
    required T Function() none,
  }) {
    switch (this) {
      case EnumTypeCalcBmiPeople.children:
        return children();
      case EnumTypeCalcBmiPeople.adults:
        return adults();
      case EnumTypeCalcBmiPeople.none:
        return none();
    }
  }

  T mapValue<T>({
    required T children,
    required T adults,
    required T none,
  }) {
    switch (this) {
      case EnumTypeCalcBmiPeople.children:
        return children;
      case EnumTypeCalcBmiPeople.adults:
        return adults;
      case EnumTypeCalcBmiPeople.none:
        return none;
    }
  }

  T maybeMap<T>({
    required T Function() orElse,
    T Function()? children,
    T Function()? adults,
    T Function()? none,
  }) =>
      map<T>(
        children: children ?? orElse,
        adults: adults ?? orElse,
        none: none ?? orElse,
      );

  T maybeMapValue<T>({
    required T orElse,
    T? children,
    T? adults,
    T? none,
  }) =>
      mapValue<T>(
        children: children ?? orElse,
        adults: adults ?? orElse,
        none: none ?? orElse,
      );

  T? maybeMapOrNull<T>({
    T Function()? children,
    T Function()? adults,
    T Function()? none,
  }) =>
      maybeMap<T?>(
        orElse: () => null,
        children: children,
        adults: adults,
        none: none,
      );

  T? maybeMapOrNullValue<T>({
    T? children,
    T? adults,
    T? none,
  }) =>
      maybeMapValue<T?>(
        orElse: null,
        children: children,
        adults: adults,
        none: none,
      );

  static List<String> getValues() =>
      EnumTypeCalcBmiPeople.values.map((e) => e.value).toList();

  @override
  int compareTo(EnumTypeCalcBmiPeople other) => index.compareTo(other.index);
}

extension $EnumTypeCalcBmiPeople on EnumTypeCalcBmiPeople {
  bool get children => this == EnumTypeCalcBmiPeople.children;
  bool get adults => this == EnumTypeCalcBmiPeople.adults;
  bool get none => this == EnumTypeCalcBmiPeople.none;
}
