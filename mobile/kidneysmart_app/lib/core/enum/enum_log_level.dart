
// turnGen
enum EnumLogLevel implements Comparable<EnumLogLevel> {
  info('info'),
  debug('debug'),
  error('error'),
  warning('warning');

  const EnumLogLevel(this.value);
  final String value;

// end

//          --TURN_GEN--
//             (enum)
//  *************************************
//         GENERATED CODE
//  *************************************

  static EnumLogLevel fromValue(String? value, {EnumLogLevel? fallback,}) {
    switch (value) {
case 'info':
return info;
case 'debug':
return debug;
case 'error':
return error;
case 'warning':
return warning;
      default:
        return fallback ?? (throw ArgumentError.value(
          value, 'value', 'Value not found in EnumLogLevel',));
    }
  }

  static EnumLogLevel? fromValueOrNull(String? value,) {
    switch (value) {
case 'info':
return info;
case 'debug':
return debug;
case 'error':
return error;
case 'warning':
return warning;
      default:
        return null;
    }
  }


  T map<T>({
    required T Function() info,
    required T Function() debug,
    required T Function() error,
    required T Function() warning,
  }) {
    switch (this) {
      case EnumLogLevel.info:
        return info();
      case EnumLogLevel.debug:
        return debug();
      case EnumLogLevel.error:
        return error();
      case EnumLogLevel.warning:
        return warning();
    }
  }


  T mapValue<T>({
    required T info,
    required T debug,
    required T error,
    required T warning,
  }) {
    switch (this) {
      case EnumLogLevel.info:
        return info;
      case EnumLogLevel.debug:
        return debug;
      case EnumLogLevel.error:
        return error;
      case EnumLogLevel.warning:
        return warning;
    }
  }


  T maybeMap<T>({
    required T Function() orElse,
    T Function()? info,
    T Function()? debug,
    T Function()? error,
    T Function()? warning,
  }) =>
      map<T>(
      info: info ?? orElse,
      debug: debug ?? orElse,
      error: error ?? orElse,
      warning: warning ?? orElse,
      );


  T maybeMapValue<T>({
    required T orElse,
    T? info,
    T? debug,
    T? error,
    T? warning,
  }) =>
      mapValue<T>(
      info: info ?? orElse,
      debug: debug ?? orElse,
      error: error ?? orElse,
      warning: warning ?? orElse,
      );


  T? maybeMapOrNull<T>({
    T Function()? info,
    T Function()? debug,
    T Function()? error,
    T Function()? warning,
  }) =>
      maybeMap<T?>(
        orElse: () => null,
        info: info,
        debug: debug,
        error: error,
        warning: warning,
      );


  T? maybeMapOrNullValue<T>({
    T? info,
    T? debug,
    T? error,
    T? warning,
  }) =>
      maybeMapValue<T?>(
        orElse: null,
        info: info,
        debug: debug,
        error: error,
        warning: warning,
      );


  static List<String> getListValue() => EnumLogLevel.values.map((e) => e.value).toList();


  @override
  int compareTo(EnumLogLevel other) => index.compareTo(other.index);

 


}
extension $EnumLogLevel on EnumLogLevel {
bool get isInfo => this == EnumLogLevel.info;
bool get isDebug => this == EnumLogLevel.debug;
bool get isError => this == EnumLogLevel.error;
bool get isWarning => this == EnumLogLevel.warning;
}

