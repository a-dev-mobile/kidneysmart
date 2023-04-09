// turnGen
enum EnumResult with Comparable<EnumResult> {
  init('init'),
  success('valid'),
  error('error');

  const EnumResult(this.value);
  final String value;

// end

//          --TURN_GEN--
//          v0.8.5 (enum)
//  *************************************
//         GENERATED CODE
//  *************************************

  static EnumResult fromValue(String? value, {EnumResult? fallback}) {
    switch (value) {
      case 'init':
        return init;
      case 'valid':
        return success;
      case 'error':
        return error;
      default:
        return fallback ?? (throw ArgumentError.value(
          value, '', 'Value not found in EnumResult',));
    }
  }


  T map<T>({
    required T Function() init,
    required T Function() success,
    required T Function() error,
  }) {
    switch (this) {
      case EnumResult.init:
        return init();
      case EnumResult.success:
        return success();
      case EnumResult.error:
        return error();
    }
  }


  T mapValue<T>({
    required T init,
    required T success,
    required T error,
  }) {
    switch (this) {
      case EnumResult.init:
        return init;
      case EnumResult.success:
        return success;
      case EnumResult.error:
        return error;
    }
  }


  T maybeMap<T>({
    required T Function() orElse,
    T Function()? init,
    T Function()? success,
    T Function()? error,
  }) =>
      map<T>(
      init: init ?? orElse,
      success: success ?? orElse,
      error: error ?? orElse,
      );


  T maybeMapValue<T>({
    required T orElse,
    T? init,
    T? success,
    T? error,
  }) =>
      mapValue<T>(
      init: init ?? orElse,
      success: success ?? orElse,
      error: error ?? orElse,
      );


  T? maybeMapOrNull<T>({
    T Function()? init,
    T Function()? success,
    T Function()? error,
  }) =>
      maybeMap<T?>(
        orElse: () => null,
        init: init,
        success: success,
        error: error,
      );


  T? maybeMapOrNullValue<T>({
    T? init,
    T? success,
    T? error,
  }) =>
      maybeMapValue<T?>(
        orElse: null,
        init: init,
        success: success,
        error: error,
      );


  static List<String> getValues() => EnumResult.values.map((e) => e.value).toList();

  @override
  int compareTo(EnumResult other) => index.compareTo(other.index);

  @override
  String toString() => 'EnumResult.$name($value)';


}
