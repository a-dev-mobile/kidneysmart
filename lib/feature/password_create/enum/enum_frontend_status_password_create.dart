// turnGen

enum EnumFrontendStatusPasswordCreate
    implements Comparable<EnumFrontendStatusPasswordCreate> {
  init('init'),
  load('load'),
  emailIsNull('emailIsNull'),
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
      case 'emailIsNull':
        return emailIsNull;
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
      case EnumFrontendStatusPasswordCreate.init:
        return init();
      case EnumFrontendStatusPasswordCreate.load:
        return load();
      case EnumFrontendStatusPasswordCreate.emailIsNull:
        return emailIsNull();
      case EnumFrontendStatusPasswordCreate.success:
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
      case EnumFrontendStatusPasswordCreate.init:
        return init;
      case EnumFrontendStatusPasswordCreate.load:
        return load;
      case EnumFrontendStatusPasswordCreate.emailIsNull:
        return emailIsNull;
      case EnumFrontendStatusPasswordCreate.success:
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
      EnumFrontendStatusPasswordCreate.values.map((e) => e.name).toList();

  @override
  int compareTo(EnumFrontendStatusPasswordCreate other) =>
      index.compareTo(other.index);
}

extension $EnumFrontendStatusPasswordCreate
    on EnumFrontendStatusPasswordCreate {
  bool get isInit => this == EnumFrontendStatusPasswordCreate.init;
  bool get isLoad => this == EnumFrontendStatusPasswordCreate.load;
  bool get isEmailIsNull =>
      this == EnumFrontendStatusPasswordCreate.emailIsNull;
  bool get isSuccess => this == EnumFrontendStatusPasswordCreate.success;
}
