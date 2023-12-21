// turnGen
enum EnumInternetStatus implements Comparable<EnumInternetStatus> {
  mobile('mobile'),
  wifi('wifi'),
  connected('connected'),
  notConnected('notConnected');

  const EnumInternetStatus(this.value);
  final String value;

// end

//          --TURN_GEN--
//             (enum)
//  *************************************
//         GENERATED CODE
//  *************************************

  static EnumInternetStatus fromValue(
    String? value, {
    EnumInternetStatus? fallback,
  }) {
    switch (value) {
      case 'mobile':
        return mobile;
      case 'wifi':
        return wifi;
      case 'connected':
        return connected;
      case 'notConnected':
        return notConnected;
      default:
        return fallback ??
            (throw ArgumentError.value(
              value,
              'value',
              'Value not found in EnumInternetStatus',
            ));
    }
  }

  static EnumInternetStatus? fromValueOrNull(
    String? value,
  ) {
    switch (value) {
      case 'mobile':
        return mobile;
      case 'wifi':
        return wifi;
      case 'connected':
        return connected;
      case 'notConnected':
        return notConnected;
      default:
        return null;
    }
  }

  T map<T>({
    required T Function() mobile,
    required T Function() wifi,
    required T Function() connected,
    required T Function() notConnected,
  }) {
    switch (this) {
      case EnumInternetStatus.mobile:
        return mobile();
      case EnumInternetStatus.wifi:
        return wifi();
      case EnumInternetStatus.connected:
        return connected();
      case EnumInternetStatus.notConnected:
        return notConnected();
    }
  }

  T mapValue<T>({
    required T mobile,
    required T wifi,
    required T connected,
    required T notConnected,
  }) {
    switch (this) {
      case EnumInternetStatus.mobile:
        return mobile;
      case EnumInternetStatus.wifi:
        return wifi;
      case EnumInternetStatus.connected:
        return connected;
      case EnumInternetStatus.notConnected:
        return notConnected;
    }
  }

  T maybeMap<T>({
    required T Function() orElse,
    T Function()? mobile,
    T Function()? wifi,
    T Function()? connected,
    T Function()? notConnected,
  }) =>
      map<T>(
        mobile: mobile ?? orElse,
        wifi: wifi ?? orElse,
        connected: connected ?? orElse,
        notConnected: notConnected ?? orElse,
      );

  T maybeMapValue<T>({
    required T orElse,
    T? mobile,
    T? wifi,
    T? connected,
    T? notConnected,
  }) =>
      mapValue<T>(
        mobile: mobile ?? orElse,
        wifi: wifi ?? orElse,
        connected: connected ?? orElse,
        notConnected: notConnected ?? orElse,
      );

  T? maybeMapOrNull<T>({
    T Function()? mobile,
    T Function()? wifi,
    T Function()? connected,
    T Function()? notConnected,
  }) =>
      maybeMap<T?>(
        orElse: () => null,
        mobile: mobile,
        wifi: wifi,
        connected: connected,
        notConnected: notConnected,
      );

  T? maybeMapOrNullValue<T>({
    T? mobile,
    T? wifi,
    T? connected,
    T? notConnected,
  }) =>
      maybeMapValue<T?>(
        orElse: null,
        mobile: mobile,
        wifi: wifi,
        connected: connected,
        notConnected: notConnected,
      );

  static List<String> getListValue() =>
      EnumInternetStatus.values.map((e) => e.value).toList();

  @override
  int compareTo(EnumInternetStatus other) => index.compareTo(other.index);
}

extension $EnumInternetStatus on EnumInternetStatus {
  bool get isMobile => this == EnumInternetStatus.mobile;
  bool get isWifi => this == EnumInternetStatus.wifi;
  bool get isConnected => this == EnumInternetStatus.connected;
  bool get isNotConnected => this == EnumInternetStatus.notConnected;
}
