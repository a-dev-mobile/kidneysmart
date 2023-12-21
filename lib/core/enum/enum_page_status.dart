// turnGen
/// An type representing the different states of a page.
///
/// These states can be used to track the loading and display state of data in a UI.
enum EnumPageStatus implements Comparable<EnumPageStatus> {
  // Initial state, before any data loading has begun
  init(desc: 'Запуск...'),
  // When data is currently being loaded
  load(desc: 'Загрузка данных...'),
  // When data loading has failed
  success(desc: 'Данные успешно загружены!'),
  // When data has been successfully loaded
  error(desc: 'Упс! Что-то пошло не так.');

  /// A constructor that initializes the enum with a given value.
  const EnumPageStatus({required this.desc});

  /// The textual representation of the enum value.
  ///
  /// This can be useful for debugging, logging or display purposes.
  final String desc;

// end

//          --TURN_GEN--
//             (enum)
//  *************************************
//         GENERATED CODE
//  *************************************

  static EnumPageStatus fromDesc(
    String? desc, {
    EnumPageStatus? fallback,
  }) {
    switch (desc) {
      case 'Запуск...':
        return init;
      case 'Загрузка данных...':
        return load;
      case 'Данные успешно загружены!':
        return success;
      case 'Упс! Что-то пошло не так.':
        return error;
      default:
        return fallback ??
            (throw ArgumentError.value(
              desc,
              'desc',
              'Value not found in EnumPageStatus',
            ));
    }
  }

  static EnumPageStatus? fromDescOrNull(
    String? desc,
  ) {
    switch (desc) {
      case 'Запуск...':
        return init;
      case 'Загрузка данных...':
        return load;
      case 'Данные успешно загружены!':
        return success;
      case 'Упс! Что-то пошло не так.':
        return error;
      default:
        return null;
    }
  }

  T map<T>({
    required T Function() init,
    required T Function() load,
    required T Function() success,
    required T Function() error,
  }) {
    switch (this) {
      case EnumPageStatus.init:
        return init();
      case EnumPageStatus.load:
        return load();
      case EnumPageStatus.success:
        return success();
      case EnumPageStatus.error:
        return error();
    }
  }

  T mapValue<T>({
    required T init,
    required T load,
    required T success,
    required T error,
  }) {
    switch (this) {
      case EnumPageStatus.init:
        return init;
      case EnumPageStatus.load:
        return load;
      case EnumPageStatus.success:
        return success;
      case EnumPageStatus.error:
        return error;
    }
  }

  T maybeMap<T>({
    required T Function() orElse,
    T Function()? init,
    T Function()? load,
    T Function()? success,
    T Function()? error,
  }) =>
      map<T>(
        init: init ?? orElse,
        load: load ?? orElse,
        success: success ?? orElse,
        error: error ?? orElse,
      );

  T maybeMapValue<T>({
    required T orElse,
    T? init,
    T? load,
    T? success,
    T? error,
  }) =>
      mapValue<T>(
        init: init ?? orElse,
        load: load ?? orElse,
        success: success ?? orElse,
        error: error ?? orElse,
      );

  T? maybeMapOrNull<T>({
    T Function()? init,
    T Function()? load,
    T Function()? success,
    T Function()? error,
  }) =>
      maybeMap<T?>(
        orElse: () => null,
        init: init,
        load: load,
        success: success,
        error: error,
      );

  T? maybeMapOrNullValue<T>({
    T? init,
    T? load,
    T? success,
    T? error,
  }) =>
      maybeMapValue<T?>(
        orElse: null,
        init: init,
        load: load,
        success: success,
        error: error,
      );

  static List<String> getListDesc() =>
      EnumPageStatus.values.map((e) => e.desc).toList();

  @override
  int compareTo(EnumPageStatus other) => index.compareTo(other.index);
}

extension $EnumPageStatus on EnumPageStatus {
  bool get isInit => this == EnumPageStatus.init;
  bool get isLoad => this == EnumPageStatus.load;
  bool get isSuccess => this == EnumPageStatus.success;
  bool get isError => this == EnumPageStatus.error;
}
