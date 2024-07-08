enum EnumDialysisQuery implements Comparable<EnumDialysisQuery> {
  yes('yes'),
  no('no'),
  none('none');

  const EnumDialysisQuery(this.value);
  final String value;

// end

//          --TURN_GEN--
//             (enum)
//  *************************************
//         GENERATED CODE
//  *************************************

  static EnumDialysisQuery fromValue(
    String? value, {
    EnumDialysisQuery? fallback,
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
              'Value not found in EnumDialysisQuery',
            ));
    }
  }

  T map<T>({
    required T Function() yes,
    required T Function() no,
    required T Function() none,
  }) {
    switch (this) {
      case EnumDialysisQuery.yes:
        return yes();
      case EnumDialysisQuery.no:
        return no();
      case EnumDialysisQuery.none:
        return none();
    }
  }

  T mapValue<T>({
    required T yes,
    required T no,
    required T none,
  }) {
    switch (this) {
      case EnumDialysisQuery.yes:
        return yes;
      case EnumDialysisQuery.no:
        return no;
      case EnumDialysisQuery.none:
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
      EnumDialysisQuery.values.map((e) => e.value).toList();

  @override
  int compareTo(EnumDialysisQuery other) => index.compareTo(other.index);
}

extension $EnumDialysisQuery on EnumDialysisQuery {
  bool get yes => this == EnumDialysisQuery.yes;
  bool get no => this == EnumDialysisQuery.no;
  bool get none => this == EnumDialysisQuery.none;
}
