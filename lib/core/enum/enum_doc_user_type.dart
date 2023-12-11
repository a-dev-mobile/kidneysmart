// turnGen

enum EnumDocUserType implements Comparable<EnumDocUserType> {
  registration('registration'),
  photo('photo'),
  passport('passport'),
  card('card');

  const EnumDocUserType(this.name);
  final String name;

// end

//          --TURN_GEN--
//             (enum)
//  *************************************
//         GENERATED CODE
//  *************************************

  static EnumDocUserType fromName(
    String? name, {
    EnumDocUserType? fallback,
  }) {
    switch (name) {
      case 'registration':
        return registration;
      case 'photo':
        return photo;
      case 'passport':
        return passport;
      case 'card':
        return card;
      default:
        return fallback ??
            (throw ArgumentError.value(
              name,
              'name',
              'Value not found in EnumDocUserType',
            ));
    }
  }

  static EnumDocUserType? fromNameOrNull(
    String? name,
  ) {
    switch (name) {
      case 'registration':
        return registration;
      case 'photo':
        return photo;
      case 'passport':
        return passport;
      case 'card':
        return card;
      default:
        return null;
    }
  }

  T map<T>({
    required T Function() registration,
    required T Function() photo,
    required T Function() passport,
    required T Function() card,
  }) {
    switch (this) {
      case EnumDocUserType.registration:
        return registration();
      case EnumDocUserType.photo:
        return photo();
      case EnumDocUserType.passport:
        return passport();
      case EnumDocUserType.card:
        return card();
    }
  }

  T mapValue<T>({
    required T registration,
    required T photo,
    required T passport,
    required T card,
  }) {
    switch (this) {
      case EnumDocUserType.registration:
        return registration;
      case EnumDocUserType.photo:
        return photo;
      case EnumDocUserType.passport:
        return passport;
      case EnumDocUserType.card:
        return card;
    }
  }

  T maybeMap<T>({
    required T Function() orElse,
    T Function()? registration,
    T Function()? photo,
    T Function()? passport,
    T Function()? card,
  }) =>
      map<T>(
        registration: registration ?? orElse,
        photo: photo ?? orElse,
        passport: passport ?? orElse,
        card: card ?? orElse,
      );

  T maybeMapValue<T>({
    required T orElse,
    T? registration,
    T? photo,
    T? passport,
    T? card,
  }) =>
      mapValue<T>(
        registration: registration ?? orElse,
        photo: photo ?? orElse,
        passport: passport ?? orElse,
        card: card ?? orElse,
      );

  T? maybeMapOrNull<T>({
    T Function()? registration,
    T Function()? photo,
    T Function()? passport,
    T Function()? card,
  }) =>
      maybeMap<T?>(
        orElse: () => null,
        registration: registration,
        photo: photo,
        passport: passport,
        card: card,
      );

  T? maybeMapOrNullValue<T>({
    T? registration,
    T? photo,
    T? passport,
    T? card,
  }) =>
      maybeMapValue<T?>(
        orElse: null,
        registration: registration,
        photo: photo,
        passport: passport,
        card: card,
      );

  static List<String> getListName() =>
      EnumDocUserType.values.map((e) => e.name).toList();

  @override
  int compareTo(EnumDocUserType other) => index.compareTo(other.index);
}

extension $EnumDocUserType on EnumDocUserType {
  bool get isRegistration => this == EnumDocUserType.registration;
  bool get isPhoto => this == EnumDocUserType.photo;
  bool get isPassport => this == EnumDocUserType.passport;
  bool get isCard => this == EnumDocUserType.card;
}
