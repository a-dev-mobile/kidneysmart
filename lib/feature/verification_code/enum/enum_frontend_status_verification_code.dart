// turnGen

enum EnumFrontendStatusVerificationCode
    implements Comparable<EnumFrontendStatusVerificationCode> {
  init('init'),
  load('load'),
  emailOrCodeNull('emailOrCodeNull'),
  success('success');

  const EnumFrontendStatusVerificationCode(this.name);
  final String name;

// end

//          --TURN_GEN--
//             (enum)
//  *************************************
//         GENERATED CODE
//  *************************************

  static EnumFrontendStatusVerificationCode fromName(
    String? name, {
    EnumFrontendStatusVerificationCode? fallback,
  }) {
    switch (name) {
      case 'init':
        return init;
      case 'load':
        return load;
      case 'emailOrCodeNull':
        return emailOrCodeNull;
      case 'success':
        return success;
      default:
        return fallback ??
            (throw ArgumentError.value(
              name,
              'name',
              'Value not found in EnumFrontendStatusVerificationCode',
            ));
    }
  }

  static EnumFrontendStatusVerificationCode? fromNameOrNull(
    String? name,
  ) {
    switch (name) {
      case 'init':
        return init;
      case 'load':
        return load;
      case 'emailOrCodeNull':
        return emailOrCodeNull;
      case 'success':
        return success;
      default:
        return null;
    }
  }

  T map<T>({
    required T Function() init,
    required T Function() load,
    required T Function() emailOrCodeNull,
    required T Function() success,
  }) {
    switch (this) {
      case EnumFrontendStatusVerificationCode.init:
        return init();
      case EnumFrontendStatusVerificationCode.load:
        return load();
      case EnumFrontendStatusVerificationCode.emailOrCodeNull:
        return emailOrCodeNull();
      case EnumFrontendStatusVerificationCode.success:
        return success();
    }
  }

  T mapValue<T>({
    required T init,
    required T load,
    required T emailOrCodeNull,
    required T success,
  }) {
    switch (this) {
      case EnumFrontendStatusVerificationCode.init:
        return init;
      case EnumFrontendStatusVerificationCode.load:
        return load;
      case EnumFrontendStatusVerificationCode.emailOrCodeNull:
        return emailOrCodeNull;
      case EnumFrontendStatusVerificationCode.success:
        return success;
    }
  }

  T maybeMap<T>({
    required T Function() orElse,
    T Function()? init,
    T Function()? load,
    T Function()? emailOrCodeNull,
    T Function()? success,
  }) =>
      map<T>(
        init: init ?? orElse,
        load: load ?? orElse,
        emailOrCodeNull: emailOrCodeNull ?? orElse,
        success: success ?? orElse,
      );

  T maybeMapValue<T>({
    required T orElse,
    T? init,
    T? load,
    T? emailOrCodeNull,
    T? success,
  }) =>
      mapValue<T>(
        init: init ?? orElse,
        load: load ?? orElse,
        emailOrCodeNull: emailOrCodeNull ?? orElse,
        success: success ?? orElse,
      );

  T? maybeMapOrNull<T>({
    T Function()? init,
    T Function()? load,
    T Function()? emailOrCodeNull,
    T Function()? success,
  }) =>
      maybeMap<T?>(
        orElse: () => null,
        init: init,
        load: load,
        emailOrCodeNull: emailOrCodeNull,
        success: success,
      );

  T? maybeMapOrNullValue<T>({
    T? init,
    T? load,
    T? emailOrCodeNull,
    T? success,
  }) =>
      maybeMapValue<T?>(
        orElse: null,
        init: init,
        load: load,
        emailOrCodeNull: emailOrCodeNull,
        success: success,
      );

  static List<String> getListName() =>
      EnumFrontendStatusVerificationCode.values.map((e) => e.name).toList();

  @override
  int compareTo(EnumFrontendStatusVerificationCode other) =>
      index.compareTo(other.index);
}

extension $EnumFrontendStatusVerificationCode
    on EnumFrontendStatusVerificationCode {
  bool get isInit => this == EnumFrontendStatusVerificationCode.init;
  bool get isLoad => this == EnumFrontendStatusVerificationCode.load;
  bool get isEmailOrCodeNull =>
      this == EnumFrontendStatusVerificationCode.emailOrCodeNull;
  bool get isSuccess => this == EnumFrontendStatusVerificationCode.success;
}
