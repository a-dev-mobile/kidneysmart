// turnGen
// https://api.belka.aventus.work/api_documentation.html#user-api-get-authorization-info-get
enum EnumAuthStatus implements Comparable<EnumAuthStatus> {
  /// 	Registration not finished (no loan request)
  registration(1),

  /// Registration finished (has active loan or loan request)
  activeOrRequestLoan(2),

  /// Registration finished (no active loan or loan request, but has closed loan)
  closedLoan(3),

  /// Registration finished (has sold loan)
  soldLoan(4);

  const EnumAuthStatus(this.value);
  final int value;

// end

//          --TURN_GEN--
//             (enum)
//  *************************************
//         GENERATED CODE
//  *************************************

  static EnumAuthStatus fromValue(
    int? value, {
    EnumAuthStatus? fallback,
  }) {
    switch (value) {
      case 1:
        return registration;
      case 2:
        return activeOrRequestLoan;
      case 3:
        return closedLoan;
      case 4:
        return soldLoan;
      default:
        return fallback ??
            (throw ArgumentError.value(
              value,
              'value',
              'Value not found in EnumAuthStatus',
            ));
    }
  }

  static EnumAuthStatus? fromValueOrNull(
    int? value,
  ) {
    switch (value) {
      case 1:
        return registration;
      case 2:
        return activeOrRequestLoan;
      case 3:
        return closedLoan;
      case 4:
        return soldLoan;
      default:
        return null;
    }
  }

  T map<T>({
    required T Function() registration,
    required T Function() activeOrRequestLoan,
    required T Function() closedLoan,
    required T Function() soldLoan,
  }) {
    switch (this) {
      case EnumAuthStatus.registration:
        return registration();
      case EnumAuthStatus.activeOrRequestLoan:
        return activeOrRequestLoan();
      case EnumAuthStatus.closedLoan:
        return closedLoan();
      case EnumAuthStatus.soldLoan:
        return soldLoan();
    }
  }

  T mapValue<T>({
    required T registration,
    required T activeOrRequestLoan,
    required T closedLoan,
    required T soldLoan,
  }) {
    switch (this) {
      case EnumAuthStatus.registration:
        return registration;
      case EnumAuthStatus.activeOrRequestLoan:
        return activeOrRequestLoan;
      case EnumAuthStatus.closedLoan:
        return closedLoan;
      case EnumAuthStatus.soldLoan:
        return soldLoan;
    }
  }

  T maybeMap<T>({
    required T Function() orElse,
    T Function()? registration,
    T Function()? activeOrRequestLoan,
    T Function()? closedLoan,
    T Function()? soldLoan,
  }) =>
      map<T>(
        registration: registration ?? orElse,
        activeOrRequestLoan: activeOrRequestLoan ?? orElse,
        closedLoan: closedLoan ?? orElse,
        soldLoan: soldLoan ?? orElse,
      );

  T maybeMapValue<T>({
    required T orElse,
    T? registration,
    T? activeOrRequestLoan,
    T? closedLoan,
    T? soldLoan,
  }) =>
      mapValue<T>(
        registration: registration ?? orElse,
        activeOrRequestLoan: activeOrRequestLoan ?? orElse,
        closedLoan: closedLoan ?? orElse,
        soldLoan: soldLoan ?? orElse,
      );

  T? maybeMapOrNull<T>({
    T Function()? registration,
    T Function()? activeOrRequestLoan,
    T Function()? closedLoan,
    T Function()? soldLoan,
  }) =>
      maybeMap<T?>(
        orElse: () => null,
        registration: registration,
        activeOrRequestLoan: activeOrRequestLoan,
        closedLoan: closedLoan,
        soldLoan: soldLoan,
      );

  T? maybeMapOrNullValue<T>({
    T? registration,
    T? activeOrRequestLoan,
    T? closedLoan,
    T? soldLoan,
  }) =>
      maybeMapValue<T?>(
        orElse: null,
        registration: registration,
        activeOrRequestLoan: activeOrRequestLoan,
        closedLoan: closedLoan,
        soldLoan: soldLoan,
      );

  static List<int> getListValue() =>
      EnumAuthStatus.values.map((e) => e.value).toList();

  @override
  int compareTo(EnumAuthStatus other) => index.compareTo(other.index);
}

extension $EnumAuthStatus on EnumAuthStatus {
  bool get isRegistration => this == EnumAuthStatus.registration;
  bool get isActiveOrRequestLoan => this == EnumAuthStatus.activeOrRequestLoan;
  bool get isClosedLoan => this == EnumAuthStatus.closedLoan;
  bool get isSoldLoan => this == EnumAuthStatus.soldLoan;
}
