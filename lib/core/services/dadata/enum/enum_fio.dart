// ignore_for_file: avoid-non-null-assertion

enum DaDataEnum with Comparable<DaDataEnum> {
  name('name'),
  surname('surname'),
  patronymic('patronymic'),
  all('all');

  const DaDataEnum(this.value);
  final String value;

// end

//          --TURN_GEN--
//          v0.8.3 (enum)
//  *************************************
//         GENERATED CODE
//  *************************************

  static DaDataEnum fromValue(String? value, {DaDataEnum? fallback}) {
    switch (value) {
      case 'name':
        return name;
      case 'surname':
        return surname;
      case 'patronymic':
        return patronymic;
      case 'all':
        return all;
      default:
        return fallback ?? (throw ArgumentError.value(
          value, '', 'Value not found in DaDataEnum',));
    }
  }


  T map<T>({
    required T Function() name,
    required T Function() surname,
    required T Function() patronymic,
    required T Function() all,
  }) {
    switch (this) {
      case DaDataEnum.name:
        return name();
      case DaDataEnum.surname:
        return surname();
      case DaDataEnum.patronymic:
        return patronymic();
      case DaDataEnum.all:
        return all();
    }
  }


  T mapValue<T>({
    required T name,
    required T surname,
    required T patronymic,
    required T all,
  }) {
    switch (this) {
      case DaDataEnum.name:
        return name;
      case DaDataEnum.surname:
        return surname;
      case DaDataEnum.patronymic:
        return patronymic;
      case DaDataEnum.all:
        return all;
    }
  }


  T maybeMap<T>({
    required T Function() orElse,
    T Function()? name,
    T Function()? surname,
    T Function()? patronymic,
    T Function()? all,
  }) =>
      map<T>(
      name: name ?? orElse,
      surname: surname ?? orElse,
      patronymic: patronymic ?? orElse,
      all: all ?? orElse,
      );


  T maybeMapValue<T>({
    required T orElse,
    T? name,
    T? surname,
    T? patronymic,
    T? all,
  }) =>
      mapValue<T>(
      name: name ?? orElse,
      surname: surname ?? orElse,
      patronymic: patronymic ?? orElse,
      all: all ?? orElse,
      );


  T? maybeMapOrNull<T>({
    T Function()? name,
    T Function()? surname,
    T Function()? patronymic,
    T Function()? all,
  }) =>
      maybeMap<T?>(
        orElse: () => null,
        name: name,
        surname: surname,
        patronymic: patronymic,
        all: all,
      );


  T? maybeMapOrNullValue<T>({
    T? name,
    T? surname,
    T? patronymic,
    T? all,
  }) =>
      maybeMapValue<T?>(
        orElse: null,
        name: name,
        surname: surname,
        patronymic: patronymic,
        all: all,
      );


  static List<String> getValues() => DaDataEnum.values.map((e) => e.value).toList();

  @override
  int compareTo(DaDataEnum other) => index.compareTo(other.index);

  @override
  String toString() => 'DaDataEnum.$name($value)';


}
