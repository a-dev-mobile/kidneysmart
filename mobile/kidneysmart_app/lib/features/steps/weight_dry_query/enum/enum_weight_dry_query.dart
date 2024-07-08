enum EnumWeightDryQuery implements Comparable<EnumWeightDryQuery> {
  yes('yes'),
  no('no'),
  none('none');

  const EnumWeightDryQuery(this.value);
  final String value;

// end

//          --TURN_GEN--
//             (enum)
//  *************************************
//         GENERATED CODE
//  *************************************

  static EnumWeightDryQuery fromValue(
    String? value, {
    EnumWeightDryQuery? fallback,
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
              'Value not found in EnumWeightDryQuery',
            ));
    }
  }

  T map<T>({
    required T Function() yes,
    required T Function() no,
    required T Function() none,
  }) {
    switch (this) {
      case EnumWeightDryQuery.yes:
        return yes();
      case EnumWeightDryQuery.no:
        return no();
      case EnumWeightDryQuery.none:
        return none();
    }
  }

  T mapValue<T>({
    required T yes,
    required T no,
    required T none,
  }) {
    switch (this) {
      case EnumWeightDryQuery.yes:
        return yes;
      case EnumWeightDryQuery.no:
        return no;
      case EnumWeightDryQuery.none:
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
      EnumWeightDryQuery.values.map((e) => e.value).toList();

  @override
  int compareTo(EnumWeightDryQuery other) => index.compareTo(other.index);
}

extension $EnumWeightDryQuery on EnumWeightDryQuery {
  bool get yes => this == EnumWeightDryQuery.yes;
  bool get no => this == EnumWeightDryQuery.no;
  bool get none => this == EnumWeightDryQuery.none;
}
