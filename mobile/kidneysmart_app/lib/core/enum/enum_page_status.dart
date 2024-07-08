
// turnGen
/// An type representing the different states of a page.
///
/// These states can be used to track the loading and display state of data in a UI.
enum EnumStatus implements Comparable<EnumStatus> {
  // Initial state, before any data loading has begun
  init(desc: 'Запуск...'),
  // When data is currently being loaded
  load(desc: 'Загрузка данных...'),
  // When data loading has failed
  success(desc: 'Данные успешно загружены!'),
  // When data has been successfully loaded
  error(desc: 'Упс! Что-то пошло не так.');

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

  static EnumStatus fromDesc(String? desc, {EnumStatus? fallback,}) {
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
        return fallback ?? (throw ArgumentError.value(
          desc, 'desc', 'Value not found in EnumStatus',));
    }
  }

  static EnumStatus? fromDescOrNull(String? desc,) {
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
      case EnumStatus.init:
        return init();
      case EnumStatus.load:
        return load();
      case EnumStatus.success:
        return success();
      case EnumStatus.error:
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
      case EnumStatus.init:
        return init;
      case EnumStatus.load:
        return load;
      case EnumStatus.success:
        return success;
      case EnumStatus.error:
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


  static List<String> getListDesc() => EnumStatus.values.map((e) => e.desc).toList();


  @override
  int compareTo(EnumStatus other) => index.compareTo(other.index);

 


}
extension $EnumStatus on EnumStatus {
bool get isInit => this == EnumStatus.init;
bool get isLoad => this == EnumStatus.load;
bool get isSuccess => this == EnumStatus.success;
bool get isError => this == EnumStatus.error;
}

