enum EnumMethodRequest implements Comparable<EnumMethodRequest> {
  post('post'),
  get('get'),
  patch('patch');

  const EnumMethodRequest(this.value);
  final String value;
// end

//          --TURN_GEN--
//             (enum)
//  *************************************
//         GENERATED CODE
//  *************************************

  static EnumMethodRequest fromValue(
    String? value, {
    EnumMethodRequest? fallback,
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
              '',
              'Value not found in EnumMethodRequest',
            ));
    }
  }

  T map<T>({
    required T Function() post,
    required T Function() get,
    required T Function() patch,
  }) {
    switch (this) {
      case EnumMethodRequest.post:
        return post();
      case EnumMethodRequest.get:
        return get();
      case EnumMethodRequest.patch:
        return patch();
    }
  }

  T mapValue<T>({
    required T post,
    required T get,
    required T patch,
  }) {
    switch (this) {
      case EnumMethodRequest.post:
        return post;
      case EnumMethodRequest.get:
        return get;
      case EnumMethodRequest.patch:
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

  static List<String> getValues() =>
      EnumMethodRequest.values.map((e) => e.value).toList();

  @override
  int compareTo(EnumMethodRequest other) => index.compareTo(other.index);
}

extension $EnumMethodRequest on EnumMethodRequest {
  bool get post => this == EnumMethodRequest.post;
  bool get get => this == EnumMethodRequest.get;
  bool get patch => this == EnumMethodRequest.patch;
}
