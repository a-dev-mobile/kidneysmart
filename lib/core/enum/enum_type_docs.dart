enum EnumTypeDocs implements Comparable<EnumTypeDocs> {
  signing('signing'),
  extension('extension');

  const EnumTypeDocs(this.value);

  final String value;

// end

//          --TURN_GEN--
//             (enum)
//  *************************************
//         GENERATED CODE
//  *************************************

  static EnumTypeDocs fromValue(
    String? value, {
    EnumTypeDocs? fallback,
  }) {
    switch (value) {
      case 'signing':
        return signing;
      case 'extension':
        return extension;
      default:
        return fallback ??
            (throw ArgumentError.value(
              value,
              'value',
              'Value not found in EnumTypeDocs',
            ));
    }
  }

  static EnumTypeDocs? fromValueOrNull(
    String? value,
  ) {
    switch (value) {
      case 'signing':
        return signing;
      case 'extension':
        return extension;
      default:
        return null;
    }
  }

  T map<T>({
    required T Function() signing,
    required T Function() extension,
  }) {
    switch (this) {
      case EnumTypeDocs.signing:
        return signing();
      case EnumTypeDocs.extension:
        return extension();
    }
  }

  T mapValue<T>({
    required T signing,
    required T extension,
  }) {
    switch (this) {
      case EnumTypeDocs.signing:
        return signing;
      case EnumTypeDocs.extension:
        return extension;
    }
  }

  T maybeMap<T>({
    required T Function() orElse,
    T Function()? signing,
    T Function()? extension,
  }) =>
      map<T>(
        signing: signing ?? orElse,
        extension: extension ?? orElse,
      );

  T maybeMapValue<T>({
    required T orElse,
    T? signing,
    T? extension,
  }) =>
      mapValue<T>(
        signing: signing ?? orElse,
        extension: extension ?? orElse,
      );

  T? maybeMapOrNull<T>({
    T Function()? signing,
    T Function()? extension,
  }) =>
      maybeMap<T?>(
        orElse: () => null,
        signing: signing,
        extension: extension,
      );

  T? maybeMapOrNullValue<T>({
    T? signing,
    T? extension,
  }) =>
      maybeMapValue<T?>(
        orElse: null,
        signing: signing,
        extension: extension,
      );

  static List<String> getListValue() =>
      EnumTypeDocs.values.map((e) => e.value).toList();

  @override
  int compareTo(EnumTypeDocs other) => index.compareTo(other.index);
}

extension $EnumTypeDocs on EnumTypeDocs {
  bool get isSigning => this == EnumTypeDocs.signing;
  bool get isExtension => this == EnumTypeDocs.extension;
}
