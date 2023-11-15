// turnGen
enum EnumStateButton implements Comparable<EnumStateButton> {
  init('init'),
  standard('standard'),
  loading('loading');

  const EnumStateButton(this.value);
  final String value;

// end

//          --TURN_GEN--
//             (enum)
//  *************************************
//         GENERATED CODE
//  *************************************

  static EnumStateButton fromValue(
    String? value, {
    EnumStateButton? fallback,
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
              'Value not found in EnumStateButton',
            ));
    }
  }

  static EnumStateButton? fromValueOrNull(
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
      case EnumStateButton.init:
        return init();
      case EnumStateButton.standard:
        return standard();
      case EnumStateButton.loading:
        return loading();
    }
  }

  T mapValue<T>({
    required T init,
    required T standard,
    required T loading,
  }) {
    switch (this) {
      case EnumStateButton.init:
        return init;
      case EnumStateButton.standard:
        return standard;
      case EnumStateButton.loading:
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
      EnumStateButton.values.map((e) => e.value).toList();

  @override
  int compareTo(EnumStateButton other) => index.compareTo(other.index);
}

extension $EnumStateButton on EnumStateButton {
  bool get isInit => this == EnumStateButton.init;
  bool get isStandard => this == EnumStateButton.standard;
  bool get isLoading => this == EnumStateButton.loading;
}
