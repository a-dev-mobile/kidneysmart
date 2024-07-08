// turnGen

enum EnumLoginStatus implements Comparable<EnumLoginStatus> {
  invalidRequestBody('INVALID_REQUEST_BODY'),
  invalidParameters('INVALID_PARAMETERS'),
  invalidEmailFormat('INVALID_EMAIL_FORMAT'),
  internalError('INTERNAL_ERROR'),
  emailVerificationRequired('EMAIL_VERIFICATION_REQUIRED'),
  passwordSetRequired('PASSWORD_SET_REQUIRED'),
  passwordEntryRequired('PASSWORD_ENTRY_REQUIRED'),
  userCreationFailed('USER_CREATION_FAILED'),
  emailSendFailed('EMAIL_SEND_FAILED'),
  registrationSuccessful('REGISTRATION_SUCCESSFUL');

  const EnumLoginStatus(this.name);
  final String name;

// end

//          --TURN_GEN--
//             (enum)
//  *************************************
//         GENERATED CODE
//  *************************************

  static EnumLoginStatus fromName(
    String? name, {
    EnumLoginStatus? fallback,
  }) {
    switch (name) {
      case 'INVALID_REQUEST_BODY':
        return invalidRequestBody;
      case 'INVALID_PARAMETERS':
        return invalidParameters;
      case 'INVALID_EMAIL_FORMAT':
        return invalidEmailFormat;
      case 'INTERNAL_ERROR':
        return internalError;
      case 'EMAIL_VERIFICATION_REQUIRED':
        return emailVerificationRequired;
      case 'PASSWORD_SET_REQUIRED':
        return passwordSetRequired;
      case 'PASSWORD_ENTRY_REQUIRED':
        return passwordEntryRequired;
      case 'USER_CREATION_FAILED':
        return userCreationFailed;
      case 'EMAIL_SEND_FAILED':
        return emailSendFailed;
      case 'REGISTRATION_SUCCESSFUL':
        return registrationSuccessful;
      default:
        return fallback ??
            (throw ArgumentError.value(
              name,
              'name',
              'Value not found in EnumLoginStatus',
            ));
    }
  }

  static EnumLoginStatus? fromNameOrNull(
    String? name,
  ) {
    switch (name) {
      case 'INVALID_REQUEST_BODY':
        return invalidRequestBody;
      case 'INVALID_PARAMETERS':
        return invalidParameters;
      case 'INVALID_EMAIL_FORMAT':
        return invalidEmailFormat;
      case 'INTERNAL_ERROR':
        return internalError;
      case 'EMAIL_VERIFICATION_REQUIRED':
        return emailVerificationRequired;
      case 'PASSWORD_SET_REQUIRED':
        return passwordSetRequired;
      case 'PASSWORD_ENTRY_REQUIRED':
        return passwordEntryRequired;
      case 'USER_CREATION_FAILED':
        return userCreationFailed;
      case 'EMAIL_SEND_FAILED':
        return emailSendFailed;
      case 'REGISTRATION_SUCCESSFUL':
        return registrationSuccessful;
      default:
        return null;
    }
  }

  T map<T>({
    required T Function() invalidRequestBody,
    required T Function() invalidParameters,
    required T Function() invalidEmailFormat,
    required T Function() internalError,
    required T Function() emailVerificationRequired,
    required T Function() passwordSetRequired,
    required T Function() passwordEntryRequired,
    required T Function() userCreationFailed,
    required T Function() emailSendFailed,
    required T Function() registrationSuccessful,
  }) {
    switch (this) {
      case EnumLoginStatus.invalidRequestBody:
        return invalidRequestBody();
      case EnumLoginStatus.invalidParameters:
        return invalidParameters();
      case EnumLoginStatus.invalidEmailFormat:
        return invalidEmailFormat();
      case EnumLoginStatus.internalError:
        return internalError();
      case EnumLoginStatus.emailVerificationRequired:
        return emailVerificationRequired();
      case EnumLoginStatus.passwordSetRequired:
        return passwordSetRequired();
      case EnumLoginStatus.passwordEntryRequired:
        return passwordEntryRequired();
      case EnumLoginStatus.userCreationFailed:
        return userCreationFailed();
      case EnumLoginStatus.emailSendFailed:
        return emailSendFailed();
      case EnumLoginStatus.registrationSuccessful:
        return registrationSuccessful();
    }
  }

  T mapValue<T>({
    required T invalidRequestBody,
    required T invalidParameters,
    required T invalidEmailFormat,
    required T internalError,
    required T emailVerificationRequired,
    required T passwordSetRequired,
    required T passwordEntryRequired,
    required T userCreationFailed,
    required T emailSendFailed,
    required T registrationSuccessful,
  }) {
    switch (this) {
      case EnumLoginStatus.invalidRequestBody:
        return invalidRequestBody;
      case EnumLoginStatus.invalidParameters:
        return invalidParameters;
      case EnumLoginStatus.invalidEmailFormat:
        return invalidEmailFormat;
      case EnumLoginStatus.internalError:
        return internalError;
      case EnumLoginStatus.emailVerificationRequired:
        return emailVerificationRequired;
      case EnumLoginStatus.passwordSetRequired:
        return passwordSetRequired;
      case EnumLoginStatus.passwordEntryRequired:
        return passwordEntryRequired;
      case EnumLoginStatus.userCreationFailed:
        return userCreationFailed;
      case EnumLoginStatus.emailSendFailed:
        return emailSendFailed;
      case EnumLoginStatus.registrationSuccessful:
        return registrationSuccessful;
    }
  }

  T maybeMap<T>({
    required T Function() orElse,
    T Function()? invalidRequestBody,
    T Function()? invalidParameters,
    T Function()? invalidEmailFormat,
    T Function()? internalError,
    T Function()? emailVerificationRequired,
    T Function()? passwordSetRequired,
    T Function()? passwordEntryRequired,
    T Function()? userCreationFailed,
    T Function()? emailSendFailed,
    T Function()? registrationSuccessful,
  }) =>
      map<T>(
        invalidRequestBody: invalidRequestBody ?? orElse,
        invalidParameters: invalidParameters ?? orElse,
        invalidEmailFormat: invalidEmailFormat ?? orElse,
        internalError: internalError ?? orElse,
        emailVerificationRequired: emailVerificationRequired ?? orElse,
        passwordSetRequired: passwordSetRequired ?? orElse,
        passwordEntryRequired: passwordEntryRequired ?? orElse,
        userCreationFailed: userCreationFailed ?? orElse,
        emailSendFailed: emailSendFailed ?? orElse,
        registrationSuccessful: registrationSuccessful ?? orElse,
      );

  T maybeMapValue<T>({
    required T orElse,
    T? invalidRequestBody,
    T? invalidParameters,
    T? invalidEmailFormat,
    T? internalError,
    T? emailVerificationRequired,
    T? passwordSetRequired,
    T? passwordEntryRequired,
    T? userCreationFailed,
    T? emailSendFailed,
    T? registrationSuccessful,
  }) =>
      mapValue<T>(
        invalidRequestBody: invalidRequestBody ?? orElse,
        invalidParameters: invalidParameters ?? orElse,
        invalidEmailFormat: invalidEmailFormat ?? orElse,
        internalError: internalError ?? orElse,
        emailVerificationRequired: emailVerificationRequired ?? orElse,
        passwordSetRequired: passwordSetRequired ?? orElse,
        passwordEntryRequired: passwordEntryRequired ?? orElse,
        userCreationFailed: userCreationFailed ?? orElse,
        emailSendFailed: emailSendFailed ?? orElse,
        registrationSuccessful: registrationSuccessful ?? orElse,
      );

  T? maybeMapOrNull<T>({
    T Function()? invalidRequestBody,
    T Function()? invalidParameters,
    T Function()? invalidEmailFormat,
    T Function()? internalError,
    T Function()? emailVerificationRequired,
    T Function()? passwordSetRequired,
    T Function()? passwordEntryRequired,
    T Function()? userCreationFailed,
    T Function()? emailSendFailed,
    T Function()? registrationSuccessful,
  }) =>
      maybeMap<T?>(
        orElse: () => null,
        invalidRequestBody: invalidRequestBody,
        invalidParameters: invalidParameters,
        invalidEmailFormat: invalidEmailFormat,
        internalError: internalError,
        emailVerificationRequired: emailVerificationRequired,
        passwordSetRequired: passwordSetRequired,
        passwordEntryRequired: passwordEntryRequired,
        userCreationFailed: userCreationFailed,
        emailSendFailed: emailSendFailed,
        registrationSuccessful: registrationSuccessful,
      );

  T? maybeMapOrNullValue<T>({
    T? invalidRequestBody,
    T? invalidParameters,
    T? invalidEmailFormat,
    T? internalError,
    T? emailVerificationRequired,
    T? passwordSetRequired,
    T? passwordEntryRequired,
    T? userCreationFailed,
    T? emailSendFailed,
    T? registrationSuccessful,
  }) =>
      maybeMapValue<T?>(
        orElse: null,
        invalidRequestBody: invalidRequestBody,
        invalidParameters: invalidParameters,
        invalidEmailFormat: invalidEmailFormat,
        internalError: internalError,
        emailVerificationRequired: emailVerificationRequired,
        passwordSetRequired: passwordSetRequired,
        passwordEntryRequired: passwordEntryRequired,
        userCreationFailed: userCreationFailed,
        emailSendFailed: emailSendFailed,
        registrationSuccessful: registrationSuccessful,
      );

  static List<String> getListName() =>
      EnumLoginStatus.values.map((e) => e.name).toList();

  @override
  int compareTo(EnumLoginStatus other) => index.compareTo(other.index);
}

extension $EnumLoginStatus on EnumLoginStatus {
  bool get isInvalidRequestBody => this == EnumLoginStatus.invalidRequestBody;
  bool get isInvalidParameters => this == EnumLoginStatus.invalidParameters;
  bool get isInvalidEmailFormat => this == EnumLoginStatus.invalidEmailFormat;
  bool get isInternalError => this == EnumLoginStatus.internalError;
  bool get isEmailVerificationRequired =>
      this == EnumLoginStatus.emailVerificationRequired;
  bool get isPasswordSetRequired => this == EnumLoginStatus.passwordSetRequired;
  bool get isPasswordEntryRequired =>
      this == EnumLoginStatus.passwordEntryRequired;
  bool get isUserCreationFailed => this == EnumLoginStatus.userCreationFailed;
  bool get isEmailSendFailed => this == EnumLoginStatus.emailSendFailed;
  bool get isRegistrationSuccessful =>
      this == EnumLoginStatus.registrationSuccessful;
}
