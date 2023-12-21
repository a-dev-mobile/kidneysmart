// turnGen
enum EnumValid implements Comparable<EnumValid> {
  init('init'),
  valid('valid'),
  error('error');

  const EnumValid(this.value);
  final String value;

// end

//          --TURN_GEN--
//             (enum)
//  *************************************
//         GENERATED CODE
//  *************************************

  static EnumValid fromValue(
    String? value, {
    EnumValid? fallback,
  }) {
    switch (value) {
      case 'init':
        return init;
      case 'valid':
        return valid;
      case 'error':
        return error;
      default:
        return fallback ??
            (throw ArgumentError.value(
              value,
              'value',
              'Value not found in EnumValid',
            ));
    }
  }

  static EnumValid? fromValueOrNull(
    String? value,
  ) {
    switch (value) {
      case 'init':
        return init;
      case 'valid':
        return valid;
      case 'error':
        return error;
      default:
        return null;
    }
  }

  T map<T>({
    required T Function() init,
    required T Function() valid,
    required T Function() error,
  }) {
    switch (this) {
      case EnumValid.init:
        return init();
      case EnumValid.valid:
        return valid();
      case EnumValid.error:
        return error();
    }
  }

  T mapValue<T>({
    required T init,
    required T valid,
    required T error,
  }) {
    switch (this) {
      case EnumValid.init:
        return init;
      case EnumValid.valid:
        return valid;
      case EnumValid.error:
        return error;
    }
  }

  T maybeMap<T>({
    required T Function() orElse,
    T Function()? init,
    T Function()? valid,
    T Function()? error,
  }) =>
      map<T>(
        init: init ?? orElse,
        valid: valid ?? orElse,
        error: error ?? orElse,
      );

  T maybeMapValue<T>({
    required T orElse,
    T? init,
    T? valid,
    T? error,
  }) =>
      mapValue<T>(
        init: init ?? orElse,
        valid: valid ?? orElse,
        error: error ?? orElse,
      );

  T? maybeMapOrNull<T>({
    T Function()? init,
    T Function()? valid,
    T Function()? error,
  }) =>
      maybeMap<T?>(
        orElse: () => null,
        init: init,
        valid: valid,
        error: error,
      );

  T? maybeMapOrNullValue<T>({
    T? init,
    T? valid,
    T? error,
  }) =>
      maybeMapValue<T?>(
        orElse: null,
        init: init,
        valid: valid,
        error: error,
      );

  static List<String> getListValue() =>
      EnumValid.values.map((e) => e.value).toList();

  @override
  int compareTo(EnumValid other) => index.compareTo(other.index);
}

extension $EnumValid on EnumValid {
  bool get isInit => this == EnumValid.init;
  bool get isValid => this == EnumValid.valid;
  bool get isError => this == EnumValid.error;
}
