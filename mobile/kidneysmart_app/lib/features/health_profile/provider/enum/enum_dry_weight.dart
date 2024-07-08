// ignore_for_file: constant_identifier_names, non_constant_identifier_names, lines_longer_than_80_chars

enum EnumDryWeight implements Comparable<EnumDryWeight> {
  yes('yes'),
  no('no'),
  none('none');

  const EnumDryWeight(this.value);
  final String value;

// end

//          --TURN_GEN--
//             (enum)
//  *************************************
//         GENERATED CODE
//  *************************************

  static EnumDryWeight fromValue(
    String? value, {
    EnumDryWeight? fallback,
  }) {
    switch (value) {
      case 'yes':
        return yes;
      case 'no':
        return no;
      case 'none':
        return none;
      default:
        return fallback ??
            (throw ArgumentError.value(
              value,
              '',
              'Value not found in EnumDryWeight',
            ));
    }
  }

  T map<T>({
    required T Function() yes,
    required T Function() no,
    required T Function() none,
  }) {
    switch (this) {
      case EnumDryWeight.yes:
        return yes();
      case EnumDryWeight.no:
        return no();
      case EnumDryWeight.none:
        return none();
    }
  }

  T mapValue<T>({
    required T yes,
    required T no,
    required T none,
  }) {
    switch (this) {
      case EnumDryWeight.yes:
        return yes;
      case EnumDryWeight.no:
        return no;
      case EnumDryWeight.none:
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

  static List<String> getValues() =>
      EnumDryWeight.values.map((e) => e.value).toList();

  @override
  int compareTo(EnumDryWeight other) => index.compareTo(other.index);
}

extension $EnumDryWeight on EnumDryWeight {
  bool get yes => this == EnumDryWeight.yes;
  bool get no => this == EnumDryWeight.no;
  bool get none => this == EnumDryWeight.none;
}
