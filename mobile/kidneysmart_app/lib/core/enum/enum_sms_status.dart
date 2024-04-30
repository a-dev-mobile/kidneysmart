// turnGen

enum EnumSmsStatus implements Comparable<EnumSmsStatus> {
  /// Инициализация отправки
  init('init'),

  /// Ожидание ввода подтверждающего кода пользователем
  waitingForCode('waitingForCode'),

  /// СМС отправлено успешно
  success('success'),

  /// Ошибка при отправке
  error('error');

  const EnumSmsStatus(this.value);
  final String value;

// end

//          --TURN_GEN--
//             (enum)
//  *************************************
//         GENERATED CODE
//  *************************************

  static EnumSmsStatus fromValue(
    String? value, {
    EnumSmsStatus? fallback,
  }) {
    switch (value) {
      case 'init':
        return init;
      case 'waitingForCode':
        return waitingForCode;
      case 'success':
        return success;
      case 'error':
        return error;
      default:
        return fallback ??
            (throw ArgumentError.value(
              value,
              'value',
              'Value not found in EnumSmsStatus',
            ));
    }
  }

  static EnumSmsStatus? fromValueOrNull(
    String? value,
  ) {
    switch (value) {
      case 'init':
        return init;
      case 'waitingForCode':
        return waitingForCode;
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
    required T Function() waitingForCode,
    required T Function() success,
    required T Function() error,
  }) {
    switch (this) {
      case EnumSmsStatus.init:
        return init();
      case EnumSmsStatus.waitingForCode:
        return waitingForCode();
      case EnumSmsStatus.success:
        return success();
      case EnumSmsStatus.error:
        return error();
    }
  }

  T mapValue<T>({
    required T init,
    required T waitingForCode,
    required T success,
    required T error,
  }) {
    switch (this) {
      case EnumSmsStatus.init:
        return init;
      case EnumSmsStatus.waitingForCode:
        return waitingForCode;
      case EnumSmsStatus.success:
        return success;
      case EnumSmsStatus.error:
        return error;
    }
  }

  T maybeMap<T>({
    required T Function() orElse,
    T Function()? init,
    T Function()? waitingForCode,
    T Function()? success,
    T Function()? error,
  }) =>
      map<T>(
        init: init ?? orElse,
        waitingForCode: waitingForCode ?? orElse,
        success: success ?? orElse,
        error: error ?? orElse,
      );

  T maybeMapValue<T>({
    required T orElse,
    T? init,
    T? waitingForCode,
    T? success,
    T? error,
  }) =>
      mapValue<T>(
        init: init ?? orElse,
        waitingForCode: waitingForCode ?? orElse,
        success: success ?? orElse,
        error: error ?? orElse,
      );

  T? maybeMapOrNull<T>({
    T Function()? init,
    T Function()? waitingForCode,
    T Function()? success,
    T Function()? error,
  }) =>
      maybeMap<T?>(
        orElse: () => null,
        init: init,
        waitingForCode: waitingForCode,
        success: success,
        error: error,
      );

  T? maybeMapOrNullValue<T>({
    T? init,
    T? waitingForCode,
    T? success,
    T? error,
  }) =>
      maybeMapValue<T?>(
        orElse: null,
        init: init,
        waitingForCode: waitingForCode,
        success: success,
        error: error,
      );

  static List<String> getListValue() =>
      EnumSmsStatus.values.map((e) => e.value).toList();

  @override
  int compareTo(EnumSmsStatus other) => index.compareTo(other.index);
}

extension $EnumSmsStatus on EnumSmsStatus {
  bool get isInit => this == EnumSmsStatus.init;
  bool get isWaitingForCode => this == EnumSmsStatus.waitingForCode;
  bool get isSuccess => this == EnumSmsStatus.success;
  bool get isError => this == EnumSmsStatus.error;
}
