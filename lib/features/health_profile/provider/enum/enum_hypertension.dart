enum EnumHypertension with Comparable<EnumHypertension> {
  yes('yes'),
  no('no'),
  none('none');

  const EnumHypertension(this.value);
  final String value;

// end

//          --TURN_GEN--
//          v0.8.5 (enum)
//  *************************************
//         GENERATED CODE
//  *************************************

  static EnumHypertension fromValue(String? value, {EnumHypertension? fallback}) {
    switch (value) {
      case 'yes':
        return yes;
      case 'no':
        return no;
      case 'none':
        return none;
      default:
        return fallback ?? (throw ArgumentError.value(
          value, '', 'Value not found in EnumHypertension',));
    }
  }


  T map<T>({
    required T Function() yes,
    required T Function() no,
    required T Function() none,
  }) {
    switch (this) {
      case EnumHypertension.yes:
        return yes();
      case EnumHypertension.no:
        return no();
      case EnumHypertension.none:
        return none();
    }
  }


  T mapValue<T>({
    required T yes,
    required T no,
    required T none,
  }) {
    switch (this) {
      case EnumHypertension.yes:
        return yes;
      case EnumHypertension.no:
        return no;
      case EnumHypertension.none:
        return none;
    }
  }


  T maybeMap<T>({
    required T Function() orElse,
    T Function()? yes,
    T Function()? no,
    T Function()? none,
  }) =>
      map<T>(
      yes: yes ?? orElse,
      no: no ?? orElse,
      none: none ?? orElse,
      );


  T maybeMapValue<T>({
    required T orElse,
    T? yes,
    T? no,
    T? none,
  }) =>
      mapValue<T>(
      yes: yes ?? orElse,
      no: no ?? orElse,
      none: none ?? orElse,
      );


  T? maybeMapOrNull<T>({
    T Function()? yes,
    T Function()? no,
    T Function()? none,
  }) =>
      maybeMap<T?>(
        orElse: () => null,
        yes: yes,
        no: no,
        none: none,
      );


  T? maybeMapOrNullValue<T>({
    T? yes,
    T? no,
    T? none,
  }) =>
      maybeMapValue<T?>(
        orElse: null,
        yes: yes,
        no: no,
        none: none,
      );


  static List<String> getValues() => EnumHypertension.values.map((e) => e.value).toList();

  @override
  int compareTo(EnumHypertension other) => index.compareTo(other.index);

  @override
  String toString() => 'EnumHypertension.$name($value)';


}
