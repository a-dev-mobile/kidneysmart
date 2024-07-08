// turnGen
enum EnumResult implements Comparable<EnumResult> {
  init('init'),
  success('success'),
  load('load'),
  error('error');

  const EnumResult(this.value);
  final String value;

// end

//          --TURN_GEN--
//             (enum)
//  *************************************
//         GENERATED CODE
//  *************************************

  static EnumResult fromValue(
    String? value, {
    EnumResult? fallback,
  }) {
    switch (value) {
      case 'init':
        return init;
      case 'success':
        return success;
      case 'load':
        return load;
      case 'error':
        return error;
      default:
        return fallback ??
            (throw ArgumentError.value(
              value,
              '',
              'Value not found in EnumResult',
            ));
    }
  }

  T map<T>({
    required T Function() init,
    required T Function() success,
    required T Function() load,
    required T Function() error,
  }) {
    switch (this) {
      case EnumResult.init:
        return init();
      case EnumResult.success:
        return success();
      case EnumResult.load:
        return load();
      case EnumResult.error:
        return error();
    }
  }

  T mapValue<T>({
    required T init,
    required T success,
    required T load,
    required T error,
  }) {
    switch (this) {
      case EnumResult.init:
        return init;
      case EnumResult.success:
        return success;
      case EnumResult.load:
        return load;
      case EnumResult.error:
        return error;
    }
  }

  T maybeMap<T>({
    required T Function() orElse,
    T Function()? init,
    T Function()? success,
    T Function()? load,
    T Function()? error,
  }) =>
      map<T>(
        init: init ?? orElse,
        success: success ?? orElse,
        load: load ?? orElse,
        error: error ?? orElse,
      );

  T maybeMapValue<T>({
    required T orElse,
    T? init,
    T? success,
    T? load,
    T? error,
  }) =>
      mapValue<T>(
        init: init ?? orElse,
        success: success ?? orElse,
        load: load ?? orElse,
        error: error ?? orElse,
      );

  T? maybeMapOrNull<T>({
    T Function()? init,
    T Function()? success,
    T Function()? load,
    T Function()? error,
  }) =>
      maybeMap<T?>(
        orElse: () => null,
        init: init,
        success: success,
        load: load,
        error: error,
      );

  T? maybeMapOrNullValue<T>({
    T? init,
    T? success,
    T? load,
    T? error,
  }) =>
      maybeMapValue<T?>(
        orElse: null,
        init: init,
        success: success,
        load: load,
        error: error,
      );

  static List<String> getValues() =>
      EnumResult.values.map((e) => e.value).toList();

  @override
  int compareTo(EnumResult other) => index.compareTo(other.index);
}

extension $EnumResult on EnumResult {
  bool get init => this == EnumResult.init;
  bool get success => this == EnumResult.success;
  bool get load => this == EnumResult.load;
  bool get error => this == EnumResult.error;
}
