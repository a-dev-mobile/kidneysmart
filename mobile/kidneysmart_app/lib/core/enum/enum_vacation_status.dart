// turnGen

enum EnumVacationStatus implements Comparable<EnumVacationStatus> {
  /// Кредитные каникулы активны
  active(1),

  /// Кредитные каникулы завершены
  inActive(2);

  const EnumVacationStatus(this.id);
  final int id;

// end

//          --TURN_GEN--
//             (enum)
//  *************************************
//         GENERATED CODE
//  *************************************

  static EnumVacationStatus fromId(
    int? id, {
    EnumVacationStatus? fallback,
  }) {
    switch (id) {
      case 1:
        return active;
      case 2:
        return inActive;
      default:
        return fallback ??
            (throw ArgumentError.value(
              id,
              'id',
              'Value not found in EnumVacationStatus',
            ));
    }
  }

  static EnumVacationStatus? fromIdOrNull(
    int? id,
  ) {
    switch (id) {
      case 1:
        return active;
      case 2:
        return inActive;
      default:
        return null;
    }
  }

  T map<T>({
    required T Function() active,
    required T Function() inActive,
  }) {
    switch (this) {
      case EnumVacationStatus.active:
        return active();
      case EnumVacationStatus.inActive:
        return inActive();
    }
  }

  T mapValue<T>({
    required T active,
    required T inActive,
  }) {
    switch (this) {
      case EnumVacationStatus.active:
        return active;
      case EnumVacationStatus.inActive:
        return inActive;
    }
  }

  T maybeMap<T>({
    required T Function() orElse,
    T Function()? active,
    T Function()? inActive,
  }) =>
      map<T>(
        active: active ?? orElse,
        inActive: inActive ?? orElse,
      );

  T maybeMapValue<T>({
    required T orElse,
    T? active,
    T? inActive,
  }) =>
      mapValue<T>(
        active: active ?? orElse,
        inActive: inActive ?? orElse,
      );

  T? maybeMapOrNull<T>({
    T Function()? active,
    T Function()? inActive,
  }) =>
      maybeMap<T?>(
        orElse: () => null,
        active: active,
        inActive: inActive,
      );

  T? maybeMapOrNullValue<T>({
    T? active,
    T? inActive,
  }) =>
      maybeMapValue<T?>(
        orElse: null,
        active: active,
        inActive: inActive,
      );

  static List<int> getListId() =>
      EnumVacationStatus.values.map((e) => e.id).toList();

  @override
  int compareTo(EnumVacationStatus other) => index.compareTo(other.index);
}

extension $EnumVacationStatus on EnumVacationStatus {
  bool get isActive => this == EnumVacationStatus.active;
  bool get isInActive => this == EnumVacationStatus.inActive;
}
