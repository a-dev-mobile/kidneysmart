// turnGen

enum EnumResponseVerificationCodeStatus
    implements Comparable<EnumResponseVerificationCodeStatus> {
  invalidRequestBody('INVALID_REQUEST_BODY');

  const EnumResponseVerificationCodeStatus(this.name);
  final String name;

// end

//          --TURN_GEN--
//             (enum)
//  *************************************
//         GENERATED CODE
//  *************************************

  static EnumResponseVerificationCodeStatus fromName(
    String? name, {
    EnumResponseVerificationCodeStatus? fallback,
  }) {
    switch (name) {
      case 'INVALID_REQUEST_BODY':
        return invalidRequestBody;
      default:
        return fallback ??
            (throw ArgumentError.value(
              name,
              'name',
              'Value not found in EnumResponseVerificationCodeStatus',
            ));
    }
  }

  static EnumResponseVerificationCodeStatus? fromNameOrNull(
    String? name,
  ) {
    switch (name) {
      case 'INVALID_REQUEST_BODY':
        return invalidRequestBody;
      default:
        return null;
    }
  }

  T map<T>({
    required T Function() invalidRequestBody,
  }) {
    switch (this) {
      case EnumResponseVerificationCodeStatus.invalidRequestBody:
        return invalidRequestBody();
    }
  }

  T mapValue<T>({
    required T invalidRequestBody,
  }) {
    switch (this) {
      case EnumResponseVerificationCodeStatus.invalidRequestBody:
        return invalidRequestBody;
    }
  }

  T maybeMap<T>({
    required T Function() orElse,
    T Function()? invalidRequestBody,
  }) =>
      map<T>(
        invalidRequestBody: invalidRequestBody ?? orElse,
      );

  T maybeMapValue<T>({
    required T orElse,
    T? invalidRequestBody,
  }) =>
      mapValue<T>(
        invalidRequestBody: invalidRequestBody ?? orElse,
      );

  T? maybeMapOrNull<T>({
    T Function()? invalidRequestBody,
  }) =>
      maybeMap<T?>(
        orElse: () => null,
        invalidRequestBody: invalidRequestBody,
      );

  T? maybeMapOrNullValue<T>({
    T? invalidRequestBody,
  }) =>
      maybeMapValue<T?>(
        orElse: null,
        invalidRequestBody: invalidRequestBody,
      );

  static List<String> getListName() =>
      EnumResponseVerificationCodeStatus.values.map((e) => e.name).toList();

  @override
  int compareTo(EnumResponseVerificationCodeStatus other) =>
      index.compareTo(other.index);
}

extension $EnumResponseVerificationCodeStatus
    on EnumResponseVerificationCodeStatus {
  bool get isInvalidRequestBody =>
      this == EnumResponseVerificationCodeStatus.invalidRequestBody;
}
