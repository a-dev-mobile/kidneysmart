// turnGen

// ignore_for_file: constant_identifier_names, non_constant_identifier_names

enum EnumProject implements Comparable<EnumProject> {
  prod(
    api: 'https://wayofdt.com',
    name: 'Prod',
  ),
  dev(
    api: 'http://192.168.31.22:80',
    name: 'Dev',
  );

  const EnumProject({required this.api, required this.name});
  final String api;
  final String name;

// end

//          --TURN_GEN--
//             (enum)
//  *************************************
//         GENERATED CODE
//  *************************************

  static EnumProject fromApi(
    String? api, {
    EnumProject? fallback,
  }) {
    switch (api) {
      case 'https://wayofdt.com':
        return prod;
      case 'http://192.168.31.22:80':
        return dev;
      default:
        return fallback ??
            (throw ArgumentError.value(
              api,
              'api',
              'Value not found in EnumProject',
            ));
    }
  }

  static EnumProject fromName(
    String? name, {
    EnumProject? fallback,
  }) {
    switch (name) {
      case 'Prod':
        return prod;
      case 'Dev':
        return dev;
      default:
        return fallback ??
            (throw ArgumentError.value(
              name,
              'name',
              'Value not found in EnumProject',
            ));
    }
  }

  static EnumProject? fromApiOrNull(
    String? api,
  ) {
    switch (api) {
      case 'https://wayofdt.com':
        return prod;
      case 'http://192.168.31.22:80':
        return dev;
      default:
        return null;
    }
  }

  static EnumProject? fromNameOrNull(
    String? name,
  ) {
    switch (name) {
      case 'Prod':
        return prod;
      case 'Dev':
        return dev;
      default:
        return null;
    }
  }

  T map<T>({
    required T Function() prod,
    required T Function() dev,
  }) {
    switch (this) {
      case EnumProject.prod:
        return prod();
      case EnumProject.dev:
        return dev();
    }
  }

  T mapValue<T>({
    required T prod,
    required T dev,
  }) {
    switch (this) {
      case EnumProject.prod:
        return prod;
      case EnumProject.dev:
        return dev;
    }
  }

  T maybeMap<T>({
    required T Function() orElse,
    T Function()? prod,
    T Function()? dev,
  }) =>
      map<T>(
        prod: prod ?? orElse,
        dev: dev ?? orElse,
      );

  T maybeMapValue<T>({
    required T orElse,
    T? prod,
    T? dev,
  }) =>
      mapValue<T>(
        prod: prod ?? orElse,
        dev: dev ?? orElse,
      );

  T? maybeMapOrNull<T>({
    T Function()? prod,
    T Function()? dev,
  }) =>
      maybeMap<T?>(
        orElse: () => null,
        prod: prod,
        dev: dev,
      );

  T? maybeMapOrNullValue<T>({
    T? prod,
    T? dev,
  }) =>
      maybeMapValue<T?>(
        orElse: null,
        prod: prod,
        dev: dev,
      );

  static List<String> getListApi() =>
      EnumProject.values.map((e) => e.api).toList();

  static List<String> getListName() =>
      EnumProject.values.map((e) => e.name).toList();

  @override
  int compareTo(EnumProject other) => index.compareTo(other.index);
}

extension $EnumProject on EnumProject {
  bool get isProd => this == EnumProject.prod;
  bool get isDev => this == EnumProject.dev;
}
