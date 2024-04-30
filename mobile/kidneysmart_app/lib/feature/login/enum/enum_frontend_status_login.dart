// turnGen

enum EnumFrontendStatusLogin implements Comparable<EnumFrontendStatusLogin> {
  init('init'),
  load('load'),
  emailIsNull('emailIsNull'),
  success('success');

  const EnumFrontendStatusLogin(this.name);
  final String name;

// end

//          --TURN_GEN--
//             (enum)
//  *************************************
//         GENERATED CODE
//  *************************************

  static EnumFrontendStatusLogin fromName(
    String? name, {
    EnumFrontendStatusLogin? fallback,
  }) {
    switch (name) {
      case 'init':
        return init;
      case 'load':
        return load;
      case 'emailIsNull':
        return emailIsNull;
      case 'success':
        return success;
      default:
        return fallback ??
            (throw ArgumentError.value(
              name,
              'name',
              'Value not found in EnumFrontendStatusLogin',
            ));
    }
  }

  static EnumFrontendStatusLogin? fromNameOrNull(
    String? name,
  ) {
    switch (name) {
      case 'init':
        return init;
      case 'load':
        return load;
      case 'emailIsNull':
        return emailIsNull;
      case 'success':
        return success;
      default:
        return null;
    }
  }

  T map<T>({
    required T Function() init,
    required T Function() load,
    required T Function() emailIsNull,
    required T Function() success,
  }) {
    switch (this) {
      case EnumFrontendStatusLogin.init:
        return init();
      case EnumFrontendStatusLogin.load:
        return load();
      case EnumFrontendStatusLogin.emailIsNull:
        return emailIsNull();
      case EnumFrontendStatusLogin.success:
        return success();
    }
  }

  T mapValue<T>({
    required T init,
    required T load,
    required T emailIsNull,
    required T success,
  }) {
    switch (this) {
      case EnumFrontendStatusLogin.init:
        return init;
      case EnumFrontendStatusLogin.load:
        return load;
      case EnumFrontendStatusLogin.emailIsNull:
        return emailIsNull;
      case EnumFrontendStatusLogin.success:
        return success;
    }
  }

  T maybeMap<T>({
    required T Function() orElse,
    T Function()? init,
    T Function()? load,
    T Function()? emailIsNull,
    T Function()? success,
  }) =>
      map<T>(
        init: init ?? orElse,
        load: load ?? orElse,
        emailIsNull: emailIsNull ?? orElse,
        success: success ?? orElse,
      );

  T maybeMapValue<T>({
    required T orElse,
    T? init,
    T? load,
    T? emailIsNull,
    T? success,
  }) =>
      mapValue<T>(
        init: init ?? orElse,
        load: load ?? orElse,
        emailIsNull: emailIsNull ?? orElse,
        success: success ?? orElse,
      );

  T? maybeMapOrNull<T>({
    T Function()? init,
    T Function()? load,
    T Function()? emailIsNull,
    T Function()? success,
  }) =>
      maybeMap<T?>(
        orElse: () => null,
        init: init,
        load: load,
        emailIsNull: emailIsNull,
        success: success,
      );

  T? maybeMapOrNullValue<T>({
    T? init,
    T? load,
    T? emailIsNull,
    T? success,
  }) =>
      maybeMapValue<T?>(
        orElse: null,
        init: init,
        load: load,
        emailIsNull: emailIsNull,
        success: success,
      );

  static List<String> getListName() =>
      EnumFrontendStatusLogin.values.map((e) => e.name).toList();

  @override
  int compareTo(EnumFrontendStatusLogin other) => index.compareTo(other.index);
}

extension $EnumFrontendStatusLogin on EnumFrontendStatusLogin {
  bool get isInit => this == EnumFrontendStatusLogin.init;
  bool get isLoad => this == EnumFrontendStatusLogin.load;
  bool get isEmailIsNull => this == EnumFrontendStatusLogin.emailIsNull;
  bool get isSuccess => this == EnumFrontendStatusLogin.success;
}
