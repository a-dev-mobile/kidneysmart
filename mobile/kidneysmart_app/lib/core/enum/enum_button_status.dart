// turnGen
enum EnumButtonStatus implements Comparable<EnumButtonStatus> {
  init('init'),
  standard('standard'),
  loading('loading');

  const EnumButtonStatus(this.value);
  final String value;

// end

//          --TURN_GEN--
//             (enum)
//  *************************************
//         GENERATED CODE
//  *************************************

  static EnumButtonStatus fromValue(
    String? value, {
    EnumButtonStatus? fallback,
  }) {
    switch (value) {
      case 'init':
        return init;
      case 'standard':
        return standard;
      case 'loading':
        return loading;
      default:
        return fallback ??
            (throw ArgumentError.value(
              value,
              'value',
              'Value not found in EnumButtonStatus',
            ));
    }
  }

  static EnumButtonStatus? fromValueOrNull(
    String? value,
  ) {
    switch (value) {
      case 'init':
        return init;
      case 'standard':
        return standard;
      case 'loading':
        return loading;
      default:
        return null;
    }
  }

  T map<T>({
    required T Function() init,
    required T Function() standard,
    required T Function() loading,
  }) {
    switch (this) {
      case EnumButtonStatus.init:
        return init();
      case EnumButtonStatus.standard:
        return standard();
      case EnumButtonStatus.loading:
        return loading();
    }
  }

  T mapValue<T>({
    required T init,
    required T standard,
    required T loading,
  }) {
    switch (this) {
      case EnumButtonStatus.init:
        return init;
      case EnumButtonStatus.standard:
        return standard;
      case EnumButtonStatus.loading:
        return loading;
    }
  }

  T maybeMap<T>({
    required T Function() orElse,
    T Function()? init,
    T Function()? standard,
    T Function()? loading,
  }) =>
      map<T>(
        init: init ?? orElse,
        standard: standard ?? orElse,
        loading: loading ?? orElse,
      );

  T maybeMapValue<T>({
    required T orElse,
    T? init,
    T? standard,
    T? loading,
  }) =>
      mapValue<T>(
        init: init ?? orElse,
        standard: standard ?? orElse,
        loading: loading ?? orElse,
      );

  T? maybeMapOrNull<T>({
    T Function()? init,
    T Function()? standard,
    T Function()? loading,
  }) =>
      maybeMap<T?>(
        orElse: () => null,
        init: init,
        standard: standard,
        loading: loading,
      );

  T? maybeMapOrNullValue<T>({
    T? init,
    T? standard,
    T? loading,
  }) =>
      maybeMapValue<T?>(
        orElse: null,
        init: init,
        standard: standard,
        loading: loading,
      );

  static List<String> getListValue() =>
      EnumButtonStatus.values.map((e) => e.value).toList();

  @override
  int compareTo(EnumButtonStatus other) => index.compareTo(other.index);
}

extension $EnumButtonStatus on EnumButtonStatus {
  bool get isInit => this == EnumButtonStatus.init;
  bool get isStandard => this == EnumButtonStatus.standard;
  bool get isLoading => this == EnumButtonStatus.loading;
}
