enum EnumWeightRange with Comparable<EnumWeightRange> {
// light
  normal('normal'),
  light('light'),
  none('none');

  const EnumWeightRange(this.value);
  final String value;

// end

//          --TURN_GEN--
//          v0.8.2 (enum)
//  *************************************
//         GENERATED CODE 
//  *************************************
  

  static EnumWeightRange fromValue(String? value, {EnumWeightRange? fallback}) {
    switch (value) {
      case 'normal':
        return normal;
      case 'light':
        return light;
      case 'none':
        return none;
      default:
        return fallback ?? (throw ArgumentError.value(
          value, '', 'Value not found in EnumWeightRange',));
    }
  }


  T map<T>({
    required T Function() normal,
    required T Function() light,
    required T Function() none,
  }) {
    switch (this) {
      case EnumWeightRange.normal:
        return normal();
      case EnumWeightRange.light:
        return light();
      case EnumWeightRange.none:
        return none();
    }
  }


  T mapValue<T>({
    required T normal,
    required T light,
    required T none,
  }) {
    switch (this) {
      case EnumWeightRange.normal:
        return normal;
      case EnumWeightRange.light:
        return light;
      case EnumWeightRange.none:
        return none;
    }
  }


  T maybeMap<T>({
    required T Function() orElse,
    T Function()? normal,
    T Function()? light,
    T Function()? none,
  }) =>
      map<T>(
      normal: normal ?? orElse,
      light: light ?? orElse,
      none: none ?? orElse,
      );


  T maybeMapValue<T>({
    required T orElse,
    T? normal,
    T? light,
    T? none,
  }) =>
      mapValue<T>(
      normal: normal ?? orElse,
      light: light ?? orElse,
      none: none ?? orElse,
      );


  T? maybeMapOrNull<T>({
    T Function()? normal,
    T Function()? light,
    T Function()? none,
  }) =>
      maybeMap<T?>(
        orElse: () => null,
        normal: normal,
        light: light,
        none: none,
      );


  T? maybeMapOrNullValue<T>({
    T? normal,
    T? light,
    T? none,
  }) =>
      maybeMapValue<T?>(
        orElse: null,
        normal: normal,
        light: light,
        none: none,
      );


  static List<String> getValues() => EnumWeightRange.values.map((e) => e.value).toList();

  @override
  int compareTo(EnumWeightRange other) => index.compareTo(other.index);

  @override
  String toString() => 'EnumWeightRange.$name($value)';


}
