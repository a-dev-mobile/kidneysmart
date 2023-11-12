// turnGen
/// An type representing the different states of a page.
///
/// These states can be used to track the loading and display state of data in a UI.
enum EnumStatus implements Comparable<EnumStatus> {
  // Initial state, before any data loading has begun
  initial(desc: 'Запуск...'),
  // When data is currently being loaded
  loading(desc: 'Загрузка данных...'),
  // When data loading has failed
  success(desc: 'Данные успешно загружены!'),
  // When data has been successfully loaded
  failure(desc: 'Упс! Что-то пошло не так.');

  /// A constructor that initializes the enum with a given value.
  const EnumStatus({required this.desc});

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

  static EnumStatus fromValue(
    String? desc, {
    EnumStatus? fallback,
  }) {
    switch (desc) {
      case 'Запуск...':
        return initial;
      case 'Загрузка данных...':
        return loading;
      case 'Данные успешно загружены!':
        return success;
      case 'Упс! Что-то пошло не так.':
        return failure;
      default:
        return fallback ??
            (throw ArgumentError.value(
              desc,
              '',
              'Value not found in EnumStatus',
            ));
    }
  }

  T map<T>({
    required T Function() initial,
    required T Function() loading,
    required T Function() success,
    required T Function() failure,
  }) {
    switch (this) {
      case EnumStatus.initial:
        return initial();
      case EnumStatus.loading:
        return loading();
      case EnumStatus.success:
        return success();
      case EnumStatus.failure:
        return failure();
    }
  }

  T mapValue<T>({
    required T initial,
    required T loading,
    required T success,
    required T failure,
  }) {
    switch (this) {
      case EnumStatus.initial:
        return initial;
      case EnumStatus.loading:
        return loading;
      case EnumStatus.success:
        return success;
      case EnumStatus.failure:
        return failure;
    }
  }

  T maybeMap<T>({
    required T Function() orElse,
    T Function()? initial,
    T Function()? loading,
    T Function()? success,
    T Function()? failure,
  }) =>
      map<T>(
        initial: initial ?? orElse,
        loading: loading ?? orElse,
        success: success ?? orElse,
        failure: failure ?? orElse,
      );

  T maybeMapValue<T>({
    required T orElse,
    T? initial,
    T? loading,
    T? success,
    T? failure,
  }) =>
      mapValue<T>(
        initial: initial ?? orElse,
        loading: loading ?? orElse,
        success: success ?? orElse,
        failure: failure ?? orElse,
      );

  T? maybeMapOrNull<T>({
    T Function()? initial,
    T Function()? loading,
    T Function()? success,
    T Function()? failure,
  }) =>
      maybeMap<T?>(
        orElse: () => null,
        initial: initial,
        loading: loading,
        success: success,
        failure: failure,
      );

  T? maybeMapOrNullValue<T>({
    T? initial,
    T? loading,
    T? success,
    T? failure,
  }) =>
      maybeMapValue<T?>(
        orElse: null,
        initial: initial,
        loading: loading,
        success: success,
        failure: failure,
      );

  static List<String> getValues() =>
      EnumStatus.values.map((e) => e.desc).toList();

  @override
  int compareTo(EnumStatus other) => index.compareTo(other.index);
}

extension $EnumStatus on EnumStatus {
  bool get isInitial => this == EnumStatus.initial;
  bool get isLoading => this == EnumStatus.loading;
  bool get isSuccess => this == EnumStatus.success;
  bool get isFailure => this == EnumStatus.failure;
}
