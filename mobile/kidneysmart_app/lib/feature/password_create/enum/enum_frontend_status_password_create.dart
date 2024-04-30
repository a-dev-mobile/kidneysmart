// turnGen

enum EnumFrontendStatusPasswordCreate
    implements Comparable<EnumFrontendStatusPasswordCreate> {
  init('init'),
  load('load'),
  passwordMismatch('passwordMismatch'),
  emailOrPasswordIsNull('emailOrPasswordIsNull'),
  success('success');

  const EnumFrontendStatusPasswordCreate(this.name);
  final String name;

// end

//          --TURN_GEN--
//             (enum)
//  *************************************
//         GENERATED CODE
//  *************************************

  static EnumFrontendStatusPasswordCreate fromName(
    String? name, {
    EnumFrontendStatusPasswordCreate? fallback,
  }) {
    switch (name) {
      case 'init':
        return init;
      case 'load':
        return load;
      case 'passwordMismatch':
        return passwordMismatch;
      case 'emailOrPasswordIsNull':
        return emailOrPasswordIsNull;
      case 'success':
        return success;
      default:
        return fallback ??
            (throw ArgumentError.value(
              name,
              'name',
              'Value not found in EnumFrontendStatusPasswordCreate',
            ));
    }
  }

  static EnumFrontendStatusPasswordCreate? fromNameOrNull(
    String? name,
  ) {
    switch (name) {
      case 'init':
        return init;
      case 'load':
        return load;
      case 'passwordMismatch':
        return passwordMismatch;
      case 'emailOrPasswordIsNull':
        return emailOrPasswordIsNull;
      case 'success':
        return success;
      default:
        return null;
    }
  }

  T map<T>({
    required T Function() init,
    required T Function() load,
    required T Function() passwordMismatch,
    required T Function() emailOrPasswordIsNull,
    required T Function() success,
  }) {
    switch (this) {
      case EnumFrontendStatusPasswordCreate.init:
        return init();
      case EnumFrontendStatusPasswordCreate.load:
        return load();
      case EnumFrontendStatusPasswordCreate.passwordMismatch:
        return passwordMismatch();
      case EnumFrontendStatusPasswordCreate.emailOrPasswordIsNull:
        return emailOrPasswordIsNull();
      case EnumFrontendStatusPasswordCreate.success:
        return success();
    }
  }

  T mapValue<T>({
    required T init,
    required T load,
    required T passwordMismatch,
    required T emailOrPasswordIsNull,
    required T success,
  }) {
    switch (this) {
      case EnumFrontendStatusPasswordCreate.init:
        return init;
      case EnumFrontendStatusPasswordCreate.load:
        return load;
      case EnumFrontendStatusPasswordCreate.passwordMismatch:
        return passwordMismatch;
      case EnumFrontendStatusPasswordCreate.emailOrPasswordIsNull:
        return emailOrPasswordIsNull;
      case EnumFrontendStatusPasswordCreate.success:
        return success;
    }
  }

  T maybeMap<T>({
    required T Function() orElse,
    T Function()? init,
    T Function()? load,
    T Function()? passwordMismatch,
    T Function()? emailOrPasswordIsNull,
    T Function()? success,
  }) =>
      map<T>(
        init: init ?? orElse,
        load: load ?? orElse,
        passwordMismatch: passwordMismatch ?? orElse,
        emailOrPasswordIsNull: emailOrPasswordIsNull ?? orElse,
        success: success ?? orElse,
      );

  T maybeMapValue<T>({
    required T orElse,
    T? init,
    T? load,
    T? passwordMismatch,
    T? emailOrPasswordIsNull,
    T? success,
  }) =>
      mapValue<T>(
        init: init ?? orElse,
        load: load ?? orElse,
        passwordMismatch: passwordMismatch ?? orElse,
        emailOrPasswordIsNull: emailOrPasswordIsNull ?? orElse,
        success: success ?? orElse,
      );

  T? maybeMapOrNull<T>({
    T Function()? init,
    T Function()? load,
    T Function()? passwordMismatch,
    T Function()? emailOrPasswordIsNull,
    T Function()? success,
  }) =>
      maybeMap<T?>(
        orElse: () => null,
        init: init,
        load: load,
        passwordMismatch: passwordMismatch,
        emailOrPasswordIsNull: emailOrPasswordIsNull,
        success: success,
      );

  T? maybeMapOrNullValue<T>({
    T? init,
    T? load,
    T? passwordMismatch,
    T? emailOrPasswordIsNull,
    T? success,
  }) =>
      maybeMapValue<T?>(
        orElse: null,
        init: init,
        load: load,
        passwordMismatch: passwordMismatch,
        emailOrPasswordIsNull: emailOrPasswordIsNull,
        success: success,
      );

  static List<String> getListName() =>
      EnumFrontendStatusPasswordCreate.values.map((e) => e.name).toList();

  @override
  int compareTo(EnumFrontendStatusPasswordCreate other) =>
      index.compareTo(other.index);
}

extension $EnumFrontendStatusPasswordCreate
    on EnumFrontendStatusPasswordCreate {
  bool get isInit => this == EnumFrontendStatusPasswordCreate.init;
  bool get isLoad => this == EnumFrontendStatusPasswordCreate.load;
  bool get isPasswordMismatch =>
      this == EnumFrontendStatusPasswordCreate.passwordMismatch;
  bool get isEmailOrPasswordIsNull =>
      this == EnumFrontendStatusPasswordCreate.emailOrPasswordIsNull;
  bool get isSuccess => this == EnumFrontendStatusPasswordCreate.success;
}
