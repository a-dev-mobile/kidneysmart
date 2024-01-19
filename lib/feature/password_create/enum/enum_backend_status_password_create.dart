// turnGen

enum EnumBackendStatusPasswordCreate
    implements Comparable<EnumBackendStatusPasswordCreate> {
  invalidRequestBody('INVALID_REQUEST_BODY'),
  invalidParameters('INVALID_PARAMETERS'),
  invalidEmailFormat('INVALID_EMAIL_FORMAT');

  const EnumBackendStatusPasswordCreate(this.name);
  final String name;

// end

//          --TURN_GEN--
//             (enum)
//  *************************************
//         GENERATED CODE
//  *************************************

  static EnumBackendStatusPasswordCreate fromName(
    String? name, {
    EnumBackendStatusPasswordCreate? fallback,
  }) {
    switch (name) {
      case 'INVALID_REQUEST_BODY':
        return invalidRequestBody;
      case 'INVALID_PARAMETERS':
        return invalidParameters;
      case 'INVALID_EMAIL_FORMAT':
        return invalidEmailFormat;
      default:
        return fallback ??
            (throw ArgumentError.value(
              name,
              'name',
              'Value not found in EnumBackendStatusPasswordCreate',
            ));
    }
  }

  static EnumBackendStatusPasswordCreate? fromNameOrNull(
    String? name,
  ) {
    switch (name) {
      case 'INVALID_REQUEST_BODY':
        return invalidRequestBody;
      case 'INVALID_PARAMETERS':
        return invalidParameters;
      case 'INVALID_EMAIL_FORMAT':
        return invalidEmailFormat;
      default:
        return null;
    }
  }

  T map<T>({
    required T Function() invalidRequestBody,
    required T Function() invalidParameters,
    required T Function() invalidEmailFormat,
  }) {
    switch (this) {
      case EnumBackendStatusPasswordCreate.invalidRequestBody:
        return invalidRequestBody();
      case EnumBackendStatusPasswordCreate.invalidParameters:
        return invalidParameters();
      case EnumBackendStatusPasswordCreate.invalidEmailFormat:
        return invalidEmailFormat();
    }
  }

  T mapValue<T>({
    required T invalidRequestBody,
    required T invalidParameters,
    required T invalidEmailFormat,
  }) {
    switch (this) {
      case EnumBackendStatusPasswordCreate.invalidRequestBody:
        return invalidRequestBody;
      case EnumBackendStatusPasswordCreate.invalidParameters:
        return invalidParameters;
      case EnumBackendStatusPasswordCreate.invalidEmailFormat:
        return invalidEmailFormat;
    }
  }

  T maybeMap<T>({
    required T Function() orElse,
    T Function()? invalidRequestBody,
    T Function()? invalidParameters,
    T Function()? invalidEmailFormat,
  }) =>
      map<T>(
        invalidRequestBody: invalidRequestBody ?? orElse,
        invalidParameters: invalidParameters ?? orElse,
        invalidEmailFormat: invalidEmailFormat ?? orElse,
      );

  T maybeMapValue<T>({
    required T orElse,
    T? invalidRequestBody,
    T? invalidParameters,
    T? invalidEmailFormat,
  }) =>
      mapValue<T>(
        invalidRequestBody: invalidRequestBody ?? orElse,
        invalidParameters: invalidParameters ?? orElse,
        invalidEmailFormat: invalidEmailFormat ?? orElse,
      );

  T? maybeMapOrNull<T>({
    T Function()? invalidRequestBody,
    T Function()? invalidParameters,
    T Function()? invalidEmailFormat,
  }) =>
      maybeMap<T?>(
        orElse: () => null,
        invalidRequestBody: invalidRequestBody,
        invalidParameters: invalidParameters,
        invalidEmailFormat: invalidEmailFormat,
      );

  T? maybeMapOrNullValue<T>({
    T? invalidRequestBody,
    T? invalidParameters,
    T? invalidEmailFormat,
  }) =>
      maybeMapValue<T?>(
        orElse: null,
        invalidRequestBody: invalidRequestBody,
        invalidParameters: invalidParameters,
        invalidEmailFormat: invalidEmailFormat,
      );

  static List<String> getListName() =>
      EnumBackendStatusPasswordCreate.values.map((e) => e.name).toList();

  @override
  int compareTo(EnumBackendStatusPasswordCreate other) =>
      index.compareTo(other.index);
}

extension $EnumBackendStatusPasswordCreate on EnumBackendStatusPasswordCreate {
  bool get isInvalidRequestBody =>
      this == EnumBackendStatusPasswordCreate.invalidRequestBody;
  bool get isInvalidParameters =>
      this == EnumBackendStatusPasswordCreate.invalidParameters;
  bool get isInvalidEmailFormat =>
      this == EnumBackendStatusPasswordCreate.invalidEmailFormat;
}
