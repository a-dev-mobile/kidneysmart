// turnGen

enum EnumBackendStatusVerificationCode
    implements Comparable<EnumBackendStatusVerificationCode> {
  invalidRequestBody('INVALID_REQUEST_BODY'),
  invalidParameters('INVALID_PARAMETERS'),
  validationFailed('VALIDATION_FAILED'),
  userNotFound('USER_NOT_FOUND'),
  emailVerifiedPasswordNotSet('EMAIL_VERIFIED_PASSWORD_NOT_SET'),
  emailAndPasswordVerified('EMAIL_AND_PASSWORD_VERIFIED'),
  invalidCode('INVALID_CODE'),
  updateVerificationStatusFailed('UPDATE_VERIFICATION_STATUS_FAILED'),
  accessTokenGenerationFailed('ACCESS_TOKEN_GENERATION_FAILED'),
  refreshTokenGenerationFailed('REFRESH_TOKEN_GENERATION_FAILED'),
  refreshTokenSavingFailed('REFRESH_TOKEN_SAVING_FAILED'),
  tooManyAttempts('TOO_MANY_ATTEMPTS'),
  verificationSuccessful('VERIFICATION_SUCCESSFUL');

  const EnumBackendStatusVerificationCode(this.name);
  final String name;

// end

//          --TURN_GEN--
//             (enum)
//  *************************************
//         GENERATED CODE
//  *************************************

  static EnumBackendStatusVerificationCode fromName(
    String? name, {
    EnumBackendStatusVerificationCode? fallback,
  }) {
    switch (name) {
      case 'INVALID_REQUEST_BODY':
        return invalidRequestBody;
      case 'INVALID_PARAMETERS':
        return invalidParameters;
      case 'VALIDATION_FAILED':
        return validationFailed;
      case 'USER_NOT_FOUND':
        return userNotFound;
      case 'EMAIL_VERIFIED_PASSWORD_NOT_SET':
        return emailVerifiedPasswordNotSet;
      case 'EMAIL_AND_PASSWORD_VERIFIED':
        return emailAndPasswordVerified;
      case 'INVALID_CODE':
        return invalidCode;
      case 'UPDATE_VERIFICATION_STATUS_FAILED':
        return updateVerificationStatusFailed;
      case 'ACCESS_TOKEN_GENERATION_FAILED':
        return accessTokenGenerationFailed;
      case 'REFRESH_TOKEN_GENERATION_FAILED':
        return refreshTokenGenerationFailed;
      case 'REFRESH_TOKEN_SAVING_FAILED':
        return refreshTokenSavingFailed;
      case 'TOO_MANY_ATTEMPTS':
        return tooManyAttempts;
      case 'VERIFICATION_SUCCESSFUL':
        return verificationSuccessful;
      default:
        return fallback ??
            (throw ArgumentError.value(
              name,
              'name',
              'Value not found in EnumBackendStatusVerificationCode',
            ));
    }
  }

  static EnumBackendStatusVerificationCode? fromNameOrNull(
    String? name,
  ) {
    switch (name) {
      case 'INVALID_REQUEST_BODY':
        return invalidRequestBody;
      case 'INVALID_PARAMETERS':
        return invalidParameters;
      case 'VALIDATION_FAILED':
        return validationFailed;
      case 'USER_NOT_FOUND':
        return userNotFound;
      case 'EMAIL_VERIFIED_PASSWORD_NOT_SET':
        return emailVerifiedPasswordNotSet;
      case 'EMAIL_AND_PASSWORD_VERIFIED':
        return emailAndPasswordVerified;
      case 'INVALID_CODE':
        return invalidCode;
      case 'UPDATE_VERIFICATION_STATUS_FAILED':
        return updateVerificationStatusFailed;
      case 'ACCESS_TOKEN_GENERATION_FAILED':
        return accessTokenGenerationFailed;
      case 'REFRESH_TOKEN_GENERATION_FAILED':
        return refreshTokenGenerationFailed;
      case 'REFRESH_TOKEN_SAVING_FAILED':
        return refreshTokenSavingFailed;
      case 'TOO_MANY_ATTEMPTS':
        return tooManyAttempts;
      case 'VERIFICATION_SUCCESSFUL':
        return verificationSuccessful;
      default:
        return null;
    }
  }

  T map<T>({
    required T Function() invalidRequestBody,
    required T Function() invalidParameters,
    required T Function() validationFailed,
    required T Function() userNotFound,
    required T Function() emailVerifiedPasswordNotSet,
    required T Function() emailAndPasswordVerified,
    required T Function() invalidCode,
    required T Function() updateVerificationStatusFailed,
    required T Function() accessTokenGenerationFailed,
    required T Function() refreshTokenGenerationFailed,
    required T Function() refreshTokenSavingFailed,
    required T Function() tooManyAttempts,
    required T Function() verificationSuccessful,
  }) {
    switch (this) {
      case EnumBackendStatusVerificationCode.invalidRequestBody:
        return invalidRequestBody();
      case EnumBackendStatusVerificationCode.invalidParameters:
        return invalidParameters();
      case EnumBackendStatusVerificationCode.validationFailed:
        return validationFailed();
      case EnumBackendStatusVerificationCode.userNotFound:
        return userNotFound();
      case EnumBackendStatusVerificationCode.emailVerifiedPasswordNotSet:
        return emailVerifiedPasswordNotSet();
      case EnumBackendStatusVerificationCode.emailAndPasswordVerified:
        return emailAndPasswordVerified();
      case EnumBackendStatusVerificationCode.invalidCode:
        return invalidCode();
      case EnumBackendStatusVerificationCode.updateVerificationStatusFailed:
        return updateVerificationStatusFailed();
      case EnumBackendStatusVerificationCode.accessTokenGenerationFailed:
        return accessTokenGenerationFailed();
      case EnumBackendStatusVerificationCode.refreshTokenGenerationFailed:
        return refreshTokenGenerationFailed();
      case EnumBackendStatusVerificationCode.refreshTokenSavingFailed:
        return refreshTokenSavingFailed();
      case EnumBackendStatusVerificationCode.tooManyAttempts:
        return tooManyAttempts();
      case EnumBackendStatusVerificationCode.verificationSuccessful:
        return verificationSuccessful();
    }
  }

  T mapValue<T>({
    required T invalidRequestBody,
    required T invalidParameters,
    required T validationFailed,
    required T userNotFound,
    required T emailVerifiedPasswordNotSet,
    required T emailAndPasswordVerified,
    required T invalidCode,
    required T updateVerificationStatusFailed,
    required T accessTokenGenerationFailed,
    required T refreshTokenGenerationFailed,
    required T refreshTokenSavingFailed,
    required T tooManyAttempts,
    required T verificationSuccessful,
  }) {
    switch (this) {
      case EnumBackendStatusVerificationCode.invalidRequestBody:
        return invalidRequestBody;
      case EnumBackendStatusVerificationCode.invalidParameters:
        return invalidParameters;
      case EnumBackendStatusVerificationCode.validationFailed:
        return validationFailed;
      case EnumBackendStatusVerificationCode.userNotFound:
        return userNotFound;
      case EnumBackendStatusVerificationCode.emailVerifiedPasswordNotSet:
        return emailVerifiedPasswordNotSet;
      case EnumBackendStatusVerificationCode.emailAndPasswordVerified:
        return emailAndPasswordVerified;
      case EnumBackendStatusVerificationCode.invalidCode:
        return invalidCode;
      case EnumBackendStatusVerificationCode.updateVerificationStatusFailed:
        return updateVerificationStatusFailed;
      case EnumBackendStatusVerificationCode.accessTokenGenerationFailed:
        return accessTokenGenerationFailed;
      case EnumBackendStatusVerificationCode.refreshTokenGenerationFailed:
        return refreshTokenGenerationFailed;
      case EnumBackendStatusVerificationCode.refreshTokenSavingFailed:
        return refreshTokenSavingFailed;
      case EnumBackendStatusVerificationCode.tooManyAttempts:
        return tooManyAttempts;
      case EnumBackendStatusVerificationCode.verificationSuccessful:
        return verificationSuccessful;
    }
  }

  T maybeMap<T>({
    required T Function() orElse,
    T Function()? invalidRequestBody,
    T Function()? invalidParameters,
    T Function()? validationFailed,
    T Function()? userNotFound,
    T Function()? emailVerifiedPasswordNotSet,
    T Function()? emailAndPasswordVerified,
    T Function()? invalidCode,
    T Function()? updateVerificationStatusFailed,
    T Function()? accessTokenGenerationFailed,
    T Function()? refreshTokenGenerationFailed,
    T Function()? refreshTokenSavingFailed,
    T Function()? tooManyAttempts,
    T Function()? verificationSuccessful,
  }) =>
      map<T>(
        invalidRequestBody: invalidRequestBody ?? orElse,
        invalidParameters: invalidParameters ?? orElse,
        validationFailed: validationFailed ?? orElse,
        userNotFound: userNotFound ?? orElse,
        emailVerifiedPasswordNotSet: emailVerifiedPasswordNotSet ?? orElse,
        emailAndPasswordVerified: emailAndPasswordVerified ?? orElse,
        invalidCode: invalidCode ?? orElse,
        updateVerificationStatusFailed:
            updateVerificationStatusFailed ?? orElse,
        accessTokenGenerationFailed: accessTokenGenerationFailed ?? orElse,
        refreshTokenGenerationFailed: refreshTokenGenerationFailed ?? orElse,
        refreshTokenSavingFailed: refreshTokenSavingFailed ?? orElse,
        tooManyAttempts: tooManyAttempts ?? orElse,
        verificationSuccessful: verificationSuccessful ?? orElse,
      );

  T maybeMapValue<T>({
    required T orElse,
    T? invalidRequestBody,
    T? invalidParameters,
    T? validationFailed,
    T? userNotFound,
    T? emailVerifiedPasswordNotSet,
    T? emailAndPasswordVerified,
    T? invalidCode,
    T? updateVerificationStatusFailed,
    T? accessTokenGenerationFailed,
    T? refreshTokenGenerationFailed,
    T? refreshTokenSavingFailed,
    T? tooManyAttempts,
    T? verificationSuccessful,
  }) =>
      mapValue<T>(
        invalidRequestBody: invalidRequestBody ?? orElse,
        invalidParameters: invalidParameters ?? orElse,
        validationFailed: validationFailed ?? orElse,
        userNotFound: userNotFound ?? orElse,
        emailVerifiedPasswordNotSet: emailVerifiedPasswordNotSet ?? orElse,
        emailAndPasswordVerified: emailAndPasswordVerified ?? orElse,
        invalidCode: invalidCode ?? orElse,
        updateVerificationStatusFailed:
            updateVerificationStatusFailed ?? orElse,
        accessTokenGenerationFailed: accessTokenGenerationFailed ?? orElse,
        refreshTokenGenerationFailed: refreshTokenGenerationFailed ?? orElse,
        refreshTokenSavingFailed: refreshTokenSavingFailed ?? orElse,
        tooManyAttempts: tooManyAttempts ?? orElse,
        verificationSuccessful: verificationSuccessful ?? orElse,
      );

  T? maybeMapOrNull<T>({
    T Function()? invalidRequestBody,
    T Function()? invalidParameters,
    T Function()? validationFailed,
    T Function()? userNotFound,
    T Function()? emailVerifiedPasswordNotSet,
    T Function()? emailAndPasswordVerified,
    T Function()? invalidCode,
    T Function()? updateVerificationStatusFailed,
    T Function()? accessTokenGenerationFailed,
    T Function()? refreshTokenGenerationFailed,
    T Function()? refreshTokenSavingFailed,
    T Function()? tooManyAttempts,
    T Function()? verificationSuccessful,
  }) =>
      maybeMap<T?>(
        orElse: () => null,
        invalidRequestBody: invalidRequestBody,
        invalidParameters: invalidParameters,
        validationFailed: validationFailed,
        userNotFound: userNotFound,
        emailVerifiedPasswordNotSet: emailVerifiedPasswordNotSet,
        emailAndPasswordVerified: emailAndPasswordVerified,
        invalidCode: invalidCode,
        updateVerificationStatusFailed: updateVerificationStatusFailed,
        accessTokenGenerationFailed: accessTokenGenerationFailed,
        refreshTokenGenerationFailed: refreshTokenGenerationFailed,
        refreshTokenSavingFailed: refreshTokenSavingFailed,
        tooManyAttempts: tooManyAttempts,
        verificationSuccessful: verificationSuccessful,
      );

  T? maybeMapOrNullValue<T>({
    T? invalidRequestBody,
    T? invalidParameters,
    T? validationFailed,
    T? userNotFound,
    T? emailVerifiedPasswordNotSet,
    T? emailAndPasswordVerified,
    T? invalidCode,
    T? updateVerificationStatusFailed,
    T? accessTokenGenerationFailed,
    T? refreshTokenGenerationFailed,
    T? refreshTokenSavingFailed,
    T? tooManyAttempts,
    T? verificationSuccessful,
  }) =>
      maybeMapValue<T?>(
        orElse: null,
        invalidRequestBody: invalidRequestBody,
        invalidParameters: invalidParameters,
        validationFailed: validationFailed,
        userNotFound: userNotFound,
        emailVerifiedPasswordNotSet: emailVerifiedPasswordNotSet,
        emailAndPasswordVerified: emailAndPasswordVerified,
        invalidCode: invalidCode,
        updateVerificationStatusFailed: updateVerificationStatusFailed,
        accessTokenGenerationFailed: accessTokenGenerationFailed,
        refreshTokenGenerationFailed: refreshTokenGenerationFailed,
        refreshTokenSavingFailed: refreshTokenSavingFailed,
        tooManyAttempts: tooManyAttempts,
        verificationSuccessful: verificationSuccessful,
      );

  static List<String> getListName() =>
      EnumBackendStatusVerificationCode.values.map((e) => e.name).toList();

  @override
  int compareTo(EnumBackendStatusVerificationCode other) =>
      index.compareTo(other.index);
}

extension $EnumBackendStatusVerificationCode
    on EnumBackendStatusVerificationCode {
  bool get isInvalidRequestBody =>
      this == EnumBackendStatusVerificationCode.invalidRequestBody;
  bool get isInvalidParameters =>
      this == EnumBackendStatusVerificationCode.invalidParameters;
  bool get isValidationFailed =>
      this == EnumBackendStatusVerificationCode.validationFailed;
  bool get isUserNotFound =>
      this == EnumBackendStatusVerificationCode.userNotFound;
  bool get isEmailVerifiedPasswordNotSet =>
      this == EnumBackendStatusVerificationCode.emailVerifiedPasswordNotSet;
  bool get isEmailAndPasswordVerified =>
      this == EnumBackendStatusVerificationCode.emailAndPasswordVerified;
  bool get isInvalidCode =>
      this == EnumBackendStatusVerificationCode.invalidCode;
  bool get isUpdateVerificationStatusFailed =>
      this == EnumBackendStatusVerificationCode.updateVerificationStatusFailed;
  bool get isAccessTokenGenerationFailed =>
      this == EnumBackendStatusVerificationCode.accessTokenGenerationFailed;
  bool get isRefreshTokenGenerationFailed =>
      this == EnumBackendStatusVerificationCode.refreshTokenGenerationFailed;
  bool get isRefreshTokenSavingFailed =>
      this == EnumBackendStatusVerificationCode.refreshTokenSavingFailed;
  bool get isTooManyAttempts =>
      this == EnumBackendStatusVerificationCode.tooManyAttempts;
  bool get isVerificationSuccessful =>
      this == EnumBackendStatusVerificationCode.verificationSuccessful;
}
