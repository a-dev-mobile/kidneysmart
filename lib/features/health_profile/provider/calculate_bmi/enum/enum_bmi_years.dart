// turnGen
enum EnumBmiYears with Comparable<EnumBmiYears> {

  children('children'),

  adults ('adults'),
  none('none');

  const EnumBmiYears(this.value);
  final String value;

// end

//          --TURN_GEN--
//          v0.8.2 (enum)
//  *************************************
//         GENERATED CODE 
//  *************************************
  

  static EnumBmiYears fromValue(String? value, {EnumBmiYears? fallback}) {
    switch (value) {
      case 'children':
        return children;
      case 'adults':
        return adults;
      case 'none':
        return none;
      default:
        return fallback ?? (throw ArgumentError.value(
          value, '', 'Value not found in EnumBmiYears',));
    }
  }


  T map<T>({
    required T Function() children,
    required T Function() adults,
    required T Function() none,
  }) {
    switch (this) {
      case EnumBmiYears.children:
        return children();
      case EnumBmiYears.adults:
        return adults();
      case EnumBmiYears.none:
        return none();
    }
  }


  T mapValue<T>({
    required T children,
    required T adults,
    required T none,
  }) {
    switch (this) {
      case EnumBmiYears.children:
        return children;
      case EnumBmiYears.adults:
        return adults;
      case EnumBmiYears.none:
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


  static List<String> getValues() => EnumBmiYears.values.map((e) => e.value).toList();

  @override
  int compareTo(EnumBmiYears other) => index.compareTo(other.index);

  @override
  String toString() => 'EnumBmiYears.$name($value)';


}
