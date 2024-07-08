// ignore_for_file: constant_identifier_names, non_constant_identifier_names, lines_longer_than_80_chars

enum EnumDiabetes implements Comparable<EnumDiabetes> {
  yes('yes'),
  no('no'),
  none('none');

  const EnumDiabetes(this.value);
  final String value;

// end

//          --TURN_GEN--
//             (enum)
//  *************************************
//         GENERATED CODE
//  *************************************

  static EnumDiabetes fromValue(
    String? value, {
    EnumDiabetes? fallback,
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
              'Value not found in EnumDiabetes',
            ));
    }
  }

  T map<T>({
    required T Function() yes,
    required T Function() no,
    required T Function() none,
  }) {
    switch (this) {
      case EnumDiabetes.yes:
        return yes();
      case EnumDiabetes.no:
        return no();
      case EnumDiabetes.none:
        return none();
    }
  }

  T mapValue<T>({
    required T yes,
    required T no,
    required T none,
  }) {
    switch (this) {
      case EnumDiabetes.yes:
        return yes;
      case EnumDiabetes.no:
        return no;
      case EnumDiabetes.none:
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
      EnumDiabetes.values.map((e) => e.value).toList();

  @override
  int compareTo(EnumDiabetes other) => index.compareTo(other.index);
}

extension $EnumDiabetes on EnumDiabetes {
  bool get yes => this == EnumDiabetes.yes;
  bool get no => this == EnumDiabetes.no;
  bool get none => this == EnumDiabetes.none;
}
