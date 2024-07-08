// turnGen
enum EnumResultWebView implements Comparable<EnumResultWebView> {
  load('load'),
  successHtml('successHtml'),
  successUrl('successUrl'),
  error('error');

  const EnumResultWebView(this.value);
  final String value;

// end

//          --TURN_GEN--
//             (enum)
//  *************************************
//         GENERATED CODE
//  *************************************

  static EnumResultWebView fromValue(
    String? value, {
    EnumResultWebView? fallback,
  }) {
    switch (value) {
      case 'load':
        return load;
      case 'successHtml':
        return successHtml;
      case 'successUrl':
        return successUrl;
      case 'error':
        return error;
      default:
        return fallback ??
            (throw ArgumentError.value(
              value,
              '',
              'Value not found in EnumResultWebView',
            ));
    }
  }

  T map<T>({
    required T Function() load,
    required T Function() successHtml,
    required T Function() successUrl,
    required T Function() error,
  }) {
    switch (this) {
      case EnumResultWebView.load:
        return load();
      case EnumResultWebView.successHtml:
        return successHtml();
      case EnumResultWebView.successUrl:
        return successUrl();
      case EnumResultWebView.error:
        return error();
    }
  }

  T mapValue<T>({
    required T load,
    required T successHtml,
    required T successUrl,
    required T error,
  }) {
    switch (this) {
      case EnumResultWebView.load:
        return load;
      case EnumResultWebView.successHtml:
        return successHtml;
      case EnumResultWebView.successUrl:
        return successUrl;
      case EnumResultWebView.error:
        return error;
    }
  }

  T maybeMap<T>({
    required T Function() orElse,
    T Function()? load,
    T Function()? successHtml,
    T Function()? successUrl,
    T Function()? error,
  }) =>
      map<T>(
        load: load ?? orElse,
        successHtml: successHtml ?? orElse,
        successUrl: successUrl ?? orElse,
        error: error ?? orElse,
      );

  T maybeMapValue<T>({
    required T orElse,
    T? load,
    T? successHtml,
    T? successUrl,
    T? error,
  }) =>
      mapValue<T>(
        load: load ?? orElse,
        successHtml: successHtml ?? orElse,
        successUrl: successUrl ?? orElse,
        error: error ?? orElse,
      );

  T? maybeMapOrNull<T>({
    T Function()? load,
    T Function()? successHtml,
    T Function()? successUrl,
    T Function()? error,
  }) =>
      maybeMap<T?>(
        orElse: () => null,
        load: load,
        successHtml: successHtml,
        successUrl: successUrl,
        error: error,
      );

  T? maybeMapOrNullValue<T>({
    T? load,
    T? successHtml,
    T? successUrl,
    T? error,
  }) =>
      maybeMapValue<T?>(
        orElse: null,
        load: load,
        successHtml: successHtml,
        successUrl: successUrl,
        error: error,
      );

  static List<String> getValues() =>
      EnumResultWebView.values.map((e) => e.value).toList();

  @override
  int compareTo(EnumResultWebView other) => index.compareTo(other.index);
}

extension $EnumResultWebView on EnumResultWebView {
  bool get load => this == EnumResultWebView.load;
  bool get successHtml => this == EnumResultWebView.successHtml;
  bool get successUrl => this == EnumResultWebView.successUrl;
  bool get error => this == EnumResultWebView.error;
}
