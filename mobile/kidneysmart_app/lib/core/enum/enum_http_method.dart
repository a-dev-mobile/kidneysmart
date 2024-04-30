// turnGen
enum EnumHttpMethod implements Comparable<EnumHttpMethod> {
  post('post'),
  get('get'),
  patch('patch');

  const EnumHttpMethod(this.value);
  final String value;

// end

//          --TURN_GEN--
//             (enum)
//  *************************************
//         GENERATED CODE
//  *************************************

  static EnumHttpMethod fromValue(
    String? value, {
    EnumHttpMethod? fallback,
  }) {
    switch (value) {
      case 'post':
        return post;
      case 'get':
        return get;
      case 'patch':
        return patch;
      default:
        return fallback ??
            (throw ArgumentError.value(
              value,
              'value',
              'Value not found in EnumHttpMethod',
            ));
    }
  }

  static EnumHttpMethod? fromValueOrNull(
    String? value,
  ) {
    switch (value) {
      case 'post':
        return post;
      case 'get':
        return get;
      case 'patch':
        return patch;
      default:
        return null;
    }
  }

  T map<T>({
    required T Function() post,
    required T Function() get,
    required T Function() patch,
  }) {
    switch (this) {
      case EnumHttpMethod.post:
        return post();
      case EnumHttpMethod.get:
        return get();
      case EnumHttpMethod.patch:
        return patch();
    }
  }

  T mapValue<T>({
    required T post,
    required T get,
    required T patch,
  }) {
    switch (this) {
      case EnumHttpMethod.post:
        return post;
      case EnumHttpMethod.get:
        return get;
      case EnumHttpMethod.patch:
        return patch;
    }
  }

  T maybeMap<T>({
    required T Function() orElse,
    T Function()? post,
    T Function()? get,
    T Function()? patch,
  }) =>
      map<T>(
        post: post ?? orElse,
        get: get ?? orElse,
        patch: patch ?? orElse,
      );

  T maybeMapValue<T>({
    required T orElse,
    T? post,
    T? get,
    T? patch,
  }) =>
      mapValue<T>(
        post: post ?? orElse,
        get: get ?? orElse,
        patch: patch ?? orElse,
      );

  T? maybeMapOrNull<T>({
    T Function()? post,
    T Function()? get,
    T Function()? patch,
  }) =>
      maybeMap<T?>(
        orElse: () => null,
        post: post,
        get: get,
        patch: patch,
      );

  T? maybeMapOrNullValue<T>({
    T? post,
    T? get,
    T? patch,
  }) =>
      maybeMapValue<T?>(
        orElse: null,
        post: post,
        get: get,
        patch: patch,
      );

  static List<String> getListValue() =>
      EnumHttpMethod.values.map((e) => e.value).toList();

  @override
  int compareTo(EnumHttpMethod other) => index.compareTo(other.index);
}

extension $EnumHttpMethod on EnumHttpMethod {
  bool get isPost => this == EnumHttpMethod.post;
  bool get isGet => this == EnumHttpMethod.get;
  bool get isPatch => this == EnumHttpMethod.patch;
}
