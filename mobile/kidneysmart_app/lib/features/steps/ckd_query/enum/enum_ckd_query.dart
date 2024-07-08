// ignore_for_file: constant_identifier_names, non_constant_identifier_names, lines_longer_than_80_chars

enum EnumCkdQuery implements Comparable<EnumCkdQuery> {
  yes('yes'),
  no('no'),
  none('none');

  const EnumCkdQuery(this.value);
  final String value;

// end

//          --TURN_GEN--
//             (enum)
//  *************************************
//         GENERATED CODE
//  *************************************

  static EnumCkdQuery fromValue(
    String? value, {
    EnumCkdQuery? fallback,
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
              'Value not found in EnumCkdQuery',
            ));
    }
  }

  T map<T>({
    required T Function() yes,
    required T Function() no,
    required T Function() none,
  }) {
    switch (this) {
      case EnumCkdQuery.yes:
        return yes();
      case EnumCkdQuery.no:
        return no();
      case EnumCkdQuery.none:
        return none();
    }
  }

  T mapValue<T>({
    required T yes,
    required T no,
    required T none,
  }) {
    switch (this) {
      case EnumCkdQuery.yes:
        return yes;
      case EnumCkdQuery.no:
        return no;
      case EnumCkdQuery.none:
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
      EnumCkdQuery.values.map((e) => e.value).toList();

  @override
  int compareTo(EnumCkdQuery other) => index.compareTo(other.index);
}

extension $EnumCkdQuery on EnumCkdQuery {
  bool get yes => this == EnumCkdQuery.yes;
  bool get no => this == EnumCkdQuery.no;
  bool get none => this == EnumCkdQuery.none;
}
