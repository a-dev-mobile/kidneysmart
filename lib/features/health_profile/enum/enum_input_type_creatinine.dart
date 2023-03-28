// ignore_for_file: constant_identifier_names, non_constant_identifier_names, lines_longer_than_80_chars

enum EnumInputTypeCreatinine with Comparable<EnumInputTypeCreatinine> {

  mgDl('mgDl'),
  mcmolL('mcmolL');

  const EnumInputTypeCreatinine(this.value);
  final String value;

// end

//          --TURN_GEN--
//          v0.8.2 (enum)
//  *************************************
//         GENERATED CODE 
//  *************************************
  

  static EnumInputTypeCreatinine fromValue(String? value, {EnumInputTypeCreatinine? fallback}) {
    switch (value) {
      case 'mgDl':
        return mgDl;
      case 'mcmolL':
        return mcmolL;
      default:
        return fallback ?? (throw ArgumentError.value(
          value, '', 'Value not found in EnumInputTypeCreatinine',));
    }
  }


  T map<T>({
    required T Function() mgDl,
    required T Function() mcmolL,
  }) {
    switch (this) {
      case EnumInputTypeCreatinine.mgDl:
        return mgDl();
      case EnumInputTypeCreatinine.mcmolL:
        return mcmolL();
    }
  }


  T mapValue<T>({
    required T mgDl,
    required T mcmolL,
  }) {
    switch (this) {
      case EnumInputTypeCreatinine.mgDl:
        return mgDl;
      case EnumInputTypeCreatinine.mcmolL:
        return mcmolL;
    }
  }


  T maybeMap<T>({
    required T Function() orElse,
    T Function()? mgDl,
    T Function()? mcmolL,
  }) =>
      map<T>(
      mgDl: mgDl ?? orElse,
      mcmolL: mcmolL ?? orElse,
      );


  T maybeMapValue<T>({
    required T orElse,
    T? mgDl,
    T? mcmolL,
  }) =>
      mapValue<T>(
      mgDl: mgDl ?? orElse,
      mcmolL: mcmolL ?? orElse,
      );


  T? maybeMapOrNull<T>({
    T Function()? mgDl,
    T Function()? mcmolL,
  }) =>
      maybeMap<T?>(
        orElse: () => null,
        mgDl: mgDl,
        mcmolL: mcmolL,
      );


  T? maybeMapOrNullValue<T>({
    T? mgDl,
    T? mcmolL,
  }) =>
      maybeMapValue<T?>(
        orElse: null,
        mgDl: mgDl,
        mcmolL: mcmolL,
      );


  static List<String> getValues() => EnumInputTypeCreatinine.values.map((e) => e.value).toList();

  @override
  int compareTo(EnumInputTypeCreatinine other) => index.compareTo(other.index);

  @override
  String toString() => 'EnumInputTypeCreatinine.$name($value)';


}
