// turnGen

enum EnumResponseVerificationCodeStatus
    implements Comparable<EnumResponseVerificationCodeStatus> {
  invalidRequestBody('INVALID_REQUEST_BODY'),
  invalidParameters('INVALID_PARAMETERS'),
  validationFailed('VALIDATION_FAILED'),
  userNotFound('USER_NOT_FOUND'),
  emailAlreadyVerified('EMAIL_ALREADY_VERIFIED'),
  invalidCode('INVALID_CODE'),
  updateVerificationStatusFailed('UPDATE_VERIFICATION_STATUS_FAILED'),
  accessTokenGenerationFailed('ACCESS_TOKEN_GENERATION_FAILED'),
  refreshTokenGenerationFailed('REFRESH_TOKEN_GENERATION_FAILED'),
  refreshTokenSavingFailed('REFRESH_TOKEN_SAVING_FAILED'),
  tooManyAttempts('TOO_MANY_ATTEMPTS'),
  verificationSuccessful('VERIFICATION_SUCCESSFUL');

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
      case 'INVALID_PARAMETERS':
        return invalidParameters;
      case 'VALIDATION_FAILED':
        return validationFailed;
      case 'USER_NOT_FOUND':
        return userNotFound;
      case 'EMAIL_ALREADY_VERIFIED':
        return emailAlreadyVerified;
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
      case 'INVALID_PARAMETERS':
        return invalidParameters;
      case 'VALIDATION_FAILED':
        return validationFailed;
      case 'USER_NOT_FOUND':
        return userNotFound;
      case 'EMAIL_ALREADY_VERIFIED':
        return emailAlreadyVerified;
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
    required T Function() emailAlreadyVerified,
    required T Function() invalidCode,
    required T Function() updateVerificationStatusFailed,
    required T Function() accessTokenGenerationFailed,
    required T Function() refreshTokenGenerationFailed,
    required T Function() refreshTokenSavingFailed,
    required T Function() tooManyAttempts,
    required T Function() verificationSuccessful,
  }) {
    switch (this) {
      case EnumResponseVerificationCodeStatus.invalidRequestBody:
        return invalidRequestBody();
      case EnumResponseVerificationCodeStatus.invalidParameters:
        return invalidParameters();
      case EnumResponseVerificationCodeStatus.validationFailed:
        return validationFailed();
      case EnumResponseVerificationCodeStatus.userNotFound:
        return userNotFound();
      case EnumResponseVerificationCodeStatus.emailAlreadyVerified:
        return emailAlreadyVerified();
      case EnumResponseVerificationCodeStatus.invalidCode:
        return invalidCode();
      case EnumResponseVerificationCodeStatus.updateVerificationStatusFailed:
        return updateVerificationStatusFailed();
      case EnumResponseVerificationCodeStatus.accessTokenGenerationFailed:
        return accessTokenGenerationFailed();
      case EnumResponseVerificationCodeStatus.refreshTokenGenerationFailed:
        return refreshTokenGenerationFailed();
      case EnumResponseVerificationCodeStatus.refreshTokenSavingFailed:
        return refreshTokenSavingFailed();
      case EnumResponseVerificationCodeStatus.tooManyAttempts:
        return tooManyAttempts();
      case EnumResponseVerificationCodeStatus.verificationSuccessful:
        return verificationSuccessful();
    }
  }

  T mapValue<T>({
    required T invalidRequestBody,
    required T invalidParameters,
    required T validationFailed,
    required T userNotFound,
    required T emailAlreadyVerified,
    required T invalidCode,
    required T updateVerificationStatusFailed,
    required T accessTokenGenerationFailed,
    required T refreshTokenGenerationFailed,
    required T refreshTokenSavingFailed,
    required T tooManyAttempts,
    required T verificationSuccessful,
  }) {
    switch (this) {
      case EnumResponseVerificationCodeStatus.invalidRequestBody:
        return invalidRequestBody;
      case EnumResponseVerificationCodeStatus.invalidParameters:
        return invalidParameters;
      case EnumResponseVerificationCodeStatus.validationFailed:
        return validationFailed;
      case EnumResponseVerificationCodeStatus.userNotFound:
        return userNotFound;
      case EnumResponseVerificationCodeStatus.emailAlreadyVerified:
        return emailAlreadyVerified;
      case EnumResponseVerificationCodeStatus.invalidCode:
        return invalidCode;
      case EnumResponseVerificationCodeStatus.updateVerificationStatusFailed:
        return updateVerificationStatusFailed;
      case EnumResponseVerificationCodeStatus.accessTokenGenerationFailed:
        return accessTokenGenerationFailed;
      case EnumResponseVerificationCodeStatus.refreshTokenGenerationFailed:
        return refreshTokenGenerationFailed;
      case EnumResponseVerificationCodeStatus.refreshTokenSavingFailed:
        return refreshTokenSavingFailed;
      case EnumResponseVerificationCodeStatus.tooManyAttempts:
        return tooManyAttempts;
      case EnumResponseVerificationCodeStatus.verificationSuccessful:
        return verificationSuccessful;
    }
  }

  T maybeMap<T>({
    required T Function() orElse,
    T Function()? invalidRequestBody,
    T Function()? invalidParameters,
    T Function()? validationFailed,
    T Function()? userNotFound,
    T Function()? emailAlreadyVerified,
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
        emailAlreadyVerified: emailAlreadyVerified ?? orElse,
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
    T? emailAlreadyVerified,
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
        emailAlreadyVerified: emailAlreadyVerified ?? orElse,
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
    T Function()? emailAlreadyVerified,
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
        emailAlreadyVerified: emailAlreadyVerified,
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
    T? emailAlreadyVerified,
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
        emailAlreadyVerified: emailAlreadyVerified,
        invalidCode: invalidCode,
        updateVerificationStatusFailed: updateVerificationStatusFailed,
        accessTokenGenerationFailed: accessTokenGenerationFailed,
        refreshTokenGenerationFailed: refreshTokenGenerationFailed,
        refreshTokenSavingFailed: refreshTokenSavingFailed,
        tooManyAttempts: tooManyAttempts,
        verificationSuccessful: verificationSuccessful,
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
  bool get isInvalidParameters =>
      this == EnumResponseVerificationCodeStatus.invalidParameters;
  bool get isValidationFailed =>
      this == EnumResponseVerificationCodeStatus.validationFailed;
  bool get isUserNotFound =>
      this == EnumResponseVerificationCodeStatus.userNotFound;
  bool get isEmailAlreadyVerified =>
      this == EnumResponseVerificationCodeStatus.emailAlreadyVerified;
  bool get isInvalidCode =>
      this == EnumResponseVerificationCodeStatus.invalidCode;
  bool get isUpdateVerificationStatusFailed =>
      this == EnumResponseVerificationCodeStatus.updateVerificationStatusFailed;
  bool get isAccessTokenGenerationFailed =>
      this == EnumResponseVerificationCodeStatus.accessTokenGenerationFailed;
  bool get isRefreshTokenGenerationFailed =>
      this == EnumResponseVerificationCodeStatus.refreshTokenGenerationFailed;
  bool get isRefreshTokenSavingFailed =>
      this == EnumResponseVerificationCodeStatus.refreshTokenSavingFailed;
  bool get isTooManyAttempts =>
      this == EnumResponseVerificationCodeStatus.tooManyAttempts;
  bool get isVerificationSuccessful =>
      this == EnumResponseVerificationCodeStatus.verificationSuccessful;
}
