// turnGen
enum EnumResult with Comparable<EnumResult> {
  init('init'),
  valid('valid'),
  error('error');

  const EnumResult(this.value);
  final String value;

// end

//          --TURN_GEN--
//          v0.8.3 (enum)
//  *************************************
//         GENERATED CODE
//  *************************************

  static EnumResult fromValue(String? value, {EnumResult? fallback}) {
    switch (value) {
      case 'init':
        return init;
      case 'valid':
        return valid;
      case 'error':
        return error;
      default:
        return fallback ?? (throw ArgumentError.value(
          value, '', 'Value not found in EnumResult',));
    }
  }


  T map<T>({
    required T Function() init,
    required T Function() valid,
    required T Function() error,
  }) {
    switch (this) {
      case EnumResult.init:
        return init();
      case EnumResult.valid:
        return valid();
      case EnumResult.error:
        return error();
    }
  }


  T mapValue<T>({
    required T init,
    required T valid,
    required T error,
  }) {
    switch (this) {
      case EnumResult.init:
        return init;
      case EnumResult.valid:
        return valid;
      case EnumResult.error:
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


  static List<String> getValues() => EnumResult.values.map((e) => e.value).toList();

  @override
  int compareTo(EnumResult other) => index.compareTo(other.index);

  @override
  String toString() => 'EnumResult.$name($value)';


}
