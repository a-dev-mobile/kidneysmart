// turnGen
enum EnumFio implements Comparable<EnumFio> {
  all('all'),
  name('name'),
  surname('surname'),
  patronymic('patronymic');

  const EnumFio(this.value);
  final String value;

// end

//          --TURN_GEN--
//             (enum)
//  *************************************
//         GENERATED CODE
//  *************************************

  static EnumFio fromValue(
    String? value, {
    EnumFio? fallback,
  }) {
    switch (value) {
      case 'all':
        return all;
      case 'name':
        return name;
      case 'surname':
        return surname;
      case 'patronymic':
        return patronymic;
      default:
        return fallback ??
            (throw ArgumentError.value(
              value,
              'value',
              'Value not found in EnumFio',
            ));
    }
  }

  static EnumFio? fromValueOrNull(
    String? value,
  ) {
    switch (value) {
      case 'all':
        return all;
      case 'name':
        return name;
      case 'surname':
        return surname;
      case 'patronymic':
        return patronymic;
      default:
        return null;
    }
  }

  T map<T>({
    required T Function() all,
    required T Function() name,
    required T Function() surname,
    required T Function() patronymic,
  }) {
    switch (this) {
      case EnumFio.all:
        return all();
      case EnumFio.name:
        return name();
      case EnumFio.surname:
        return surname();
      case EnumFio.patronymic:
        return patronymic();
    }
  }

  T mapValue<T>({
    required T all,
    required T name,
    required T surname,
    required T patronymic,
  }) {
    switch (this) {
      case EnumFio.all:
        return all;
      case EnumFio.name:
        return name;
      case EnumFio.surname:
        return surname;
      case EnumFio.patronymic:
        return patronymic;
    }
  }

  T maybeMap<T>({
    required T Function() orElse,
    T Function()? all,
    T Function()? name,
    T Function()? surname,
    T Function()? patronymic,
  }) =>
      map<T>(
        all: all ?? orElse,
        name: name ?? orElse,
        surname: surname ?? orElse,
        patronymic: patronymic ?? orElse,
      );

  T maybeMapValue<T>({
    required T orElse,
    T? all,
    T? name,
    T? surname,
    T? patronymic,
  }) =>
      mapValue<T>(
        all: all ?? orElse,
        name: name ?? orElse,
        surname: surname ?? orElse,
        patronymic: patronymic ?? orElse,
      );

  T? maybeMapOrNull<T>({
    T Function()? all,
    T Function()? name,
    T Function()? surname,
    T Function()? patronymic,
  }) =>
      maybeMap<T?>(
        orElse: () => null,
        all: all,
        name: name,
        surname: surname,
        patronymic: patronymic,
      );

  T? maybeMapOrNullValue<T>({
    T? all,
    T? name,
    T? surname,
    T? patronymic,
  }) =>
      maybeMapValue<T?>(
        orElse: null,
        all: all,
        name: name,
        surname: surname,
        patronymic: patronymic,
      );

  static List<String> getListValue() =>
      EnumFio.values.map((e) => e.value).toList();

  @override
  int compareTo(EnumFio other) => index.compareTo(other.index);
}

extension $EnumFio on EnumFio {
  bool get isAll => this == EnumFio.all;
  bool get isName => this == EnumFio.name;
  bool get isSurname => this == EnumFio.surname;
  bool get isPatronymic => this == EnumFio.patronymic;
}
