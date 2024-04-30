// turnGen

enum EnumScreenStatus implements Comparable<EnumScreenStatus> {
  init('init'),

  load('load'),

  success('success'),

  error('error');


  const EnumScreenStatus(this.value);

  final String value;

// end

//          --TURN_GEN--
//             (enum)
//  *************************************
//         GENERATED CODE
//  *************************************

  static EnumScreenStatus fromValue(
    String? value, {
    EnumScreenStatus? fallback,
  }) {
    switch (value) {
      case 'init':
        return init;
      case 'load':
        return load;
      case 'success':
        return success;
      case 'error':
        return error;
      default:
        return fallback ??
            (throw ArgumentError.value(
              value,
              'value',
              'Value not found in EnumScreenStatus',
            ));
    }
  }

  static EnumScreenStatus? fromValueOrNull(
    String? value,
  ) {
    switch (value) {
      case 'init':
        return init;
      case 'load':
        return load;
      case 'success':
        return success;
      case 'error':
        return error;
      default:
        return null;
    }
  }

  T map<T>({
    required T Function() init,
    required T Function() load,
    required T Function() success,
    required T Function() error,
  }) {
    switch (this) {
      case EnumScreenStatus.init:
        return init();
      case EnumScreenStatus.load:
        return load();
      case EnumScreenStatus.success:
        return success();
      case EnumScreenStatus.error:
        return error();
    }
  }

  T mapValue<T>({
    required T init,
    required T load,
    required T success,
    required T error,
  }) {
    switch (this) {
      case EnumScreenStatus.init:
        return init;
      case EnumScreenStatus.load:
        return load;
      case EnumScreenStatus.success:
        return success;
      case EnumScreenStatus.error:
        return error;
    }
  }

  T maybeMap<T>({
    required T Function() orElse,
    T Function()? init,
    T Function()? load,
    T Function()? success,
    T Function()? error,
  }) =>
      map<T>(
        init: init ?? orElse,
        load: load ?? orElse,
        success: success ?? orElse,
        error: error ?? orElse,
      );

  T maybeMapValue<T>({
    required T orElse,
    T? init,
    T? load,
    T? success,
    T? error,
  }) =>
      mapValue<T>(
        init: init ?? orElse,
        load: load ?? orElse,
        success: success ?? orElse,
        error: error ?? orElse,
      );

  T? maybeMapOrNull<T>({
    T Function()? init,
    T Function()? load,
    T Function()? success,
    T Function()? error,
  }) =>
      maybeMap<T?>(
        orElse: () => null,
        init: init,
        load: load,
        success: success,
        error: error,
      );

  T? maybeMapOrNullValue<T>({
    T? init,
    T? load,
    T? success,
    T? error,
  }) =>
      maybeMapValue<T?>(
        orElse: null,
        init: init,
        load: load,
        success: success,
        error: error,
      );

  static List<String> getListValue() =>
      EnumScreenStatus.values.map((e) => e.value).toList();

  @override
  int compareTo(EnumScreenStatus other) => index.compareTo(other.index);
}

extension $EnumScreenStatus on EnumScreenStatus {
  bool get isInit => this == EnumScreenStatus.init;
  bool get isLoad => this == EnumScreenStatus.load;
  bool get isSuccess => this == EnumScreenStatus.success;
  bool get isError => this == EnumScreenStatus.error;
}
