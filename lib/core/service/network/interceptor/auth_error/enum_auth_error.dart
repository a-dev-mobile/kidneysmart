// turnGen
enum EnumAuthError implements Comparable<EnumAuthError> {
  /// Your token has expired.
  tokenExpired('TOKEN_EXPIRED'),

  /// The provided token is invalid
  invalidToken('INVALID_TOKEN'),

  /// Error occurred during token validation
  authenticationFailed('AUTHENTICATION_FAILED'),
  /// UserID not found in token.
  userIdNotFound('USER_ID_NOT_FOUND'),

  /// Invalid token format.
  invalidTokenFormat('INVALID_TOKEN_FORMAT'),

  /// Authorization header is required
  authorizationRequired('AUTHORIZATION_REQUIRED');

  const EnumAuthError(this.value);
  final String value;

// end

//          --TURN_GEN--
//             (enum)
//  *************************************
//         GENERATED CODE
//  *************************************

  static EnumAuthError fromValue(
    String? value, {
    EnumAuthError? fallback,
  }) {
    switch (value) {
      case 'TOKEN_EXPIRED':
        return tokenExpired;
      case 'INVALID_TOKEN':
        return invalidToken;
      case 'AUTHENTICATION_FAILED':
        return authenticationFailed;
      case 'USER_ID_NOT_FOUND':
        return userIdNotFound;
      case 'INVALID_TOKEN_FORMAT':
        return invalidTokenFormat;
      case 'AUTHORIZATION_REQUIRED':
        return authorizationRequired;
      default:
        return fallback ??
            (throw ArgumentError.value(
              value,
              'value',
              'Value not found in EnumAuthError',
            ));
    }
  }

  static EnumAuthError? fromValueOrNull(
    String? value,
  ) {
    switch (value) {
      case 'TOKEN_EXPIRED':
        return tokenExpired;
      case 'INVALID_TOKEN':
        return invalidToken;
      case 'AUTHENTICATION_FAILED':
        return authenticationFailed;
      case 'USER_ID_NOT_FOUND':
        return userIdNotFound;
      case 'INVALID_TOKEN_FORMAT':
        return invalidTokenFormat;
      case 'AUTHORIZATION_REQUIRED':
        return authorizationRequired;
      default:
        return null;
    }
  }

  T map<T>({
    required T Function() tokenExpired,
    required T Function() invalidToken,
    required T Function() authenticationFailed,
    required T Function() userIdNotFound,
    required T Function() invalidTokenFormat,
    required T Function() authorizationRequired,
  }) {
    switch (this) {
      case EnumAuthError.tokenExpired:
        return tokenExpired();
      case EnumAuthError.invalidToken:
        return invalidToken();
      case EnumAuthError.authenticationFailed:
        return authenticationFailed();
      case EnumAuthError.userIdNotFound:
        return userIdNotFound();
      case EnumAuthError.invalidTokenFormat:
        return invalidTokenFormat();
      case EnumAuthError.authorizationRequired:
        return authorizationRequired();
    }
  }

  T mapValue<T>({
    required T tokenExpired,
    required T invalidToken,
    required T authenticationFailed,
    required T userIdNotFound,
    required T invalidTokenFormat,
    required T authorizationRequired,
  }) {
    switch (this) {
      case EnumAuthError.tokenExpired:
        return tokenExpired;
      case EnumAuthError.invalidToken:
        return invalidToken;
      case EnumAuthError.authenticationFailed:
        return authenticationFailed;
      case EnumAuthError.userIdNotFound:
        return userIdNotFound;
      case EnumAuthError.invalidTokenFormat:
        return invalidTokenFormat;
      case EnumAuthError.authorizationRequired:
        return authorizationRequired;
    }
  }

  T maybeMap<T>({
    required T Function() orElse,
    T Function()? tokenExpired,
    T Function()? invalidToken,
    T Function()? authenticationFailed,
    T Function()? userIdNotFound,
    T Function()? invalidTokenFormat,
    T Function()? authorizationRequired,
  }) =>
      map<T>(
        tokenExpired: tokenExpired ?? orElse,
        invalidToken: invalidToken ?? orElse,
        authenticationFailed: authenticationFailed ?? orElse,
        userIdNotFound: userIdNotFound ?? orElse,
        invalidTokenFormat: invalidTokenFormat ?? orElse,
        authorizationRequired: authorizationRequired ?? orElse,
      );

  T maybeMapValue<T>({
    required T orElse,
    T? tokenExpired,
    T? invalidToken,
    T? authenticationFailed,
    T? userIdNotFound,
    T? invalidTokenFormat,
    T? authorizationRequired,
  }) =>
      mapValue<T>(
        tokenExpired: tokenExpired ?? orElse,
        invalidToken: invalidToken ?? orElse,
        authenticationFailed: authenticationFailed ?? orElse,
        userIdNotFound: userIdNotFound ?? orElse,
        invalidTokenFormat: invalidTokenFormat ?? orElse,
        authorizationRequired: authorizationRequired ?? orElse,
      );

  T? maybeMapOrNull<T>({
    T Function()? tokenExpired,
    T Function()? invalidToken,
    T Function()? authenticationFailed,
    T Function()? userIdNotFound,
    T Function()? invalidTokenFormat,
    T Function()? authorizationRequired,
  }) =>
      maybeMap<T?>(
        orElse: () => null,
        tokenExpired: tokenExpired,
        invalidToken: invalidToken,
        authenticationFailed: authenticationFailed,
        userIdNotFound: userIdNotFound,
        invalidTokenFormat: invalidTokenFormat,
        authorizationRequired: authorizationRequired,
      );

  T? maybeMapOrNullValue<T>({
    T? tokenExpired,
    T? invalidToken,
    T? authenticationFailed,
    T? userIdNotFound,
    T? invalidTokenFormat,
    T? authorizationRequired,
  }) =>
      maybeMapValue<T?>(
        orElse: null,
        tokenExpired: tokenExpired,
        invalidToken: invalidToken,
        authenticationFailed: authenticationFailed,
        userIdNotFound: userIdNotFound,
        invalidTokenFormat: invalidTokenFormat,
        authorizationRequired: authorizationRequired,
      );

  static List<String> getListValue() =>
      EnumAuthError.values.map((e) => e.value).toList();

  @override
  int compareTo(EnumAuthError other) => index.compareTo(other.index);
}

extension $EnumAuthError on EnumAuthError {
  bool get isTokenExpired => this == EnumAuthError.tokenExpired;
  bool get isInvalidToken => this == EnumAuthError.invalidToken;
  bool get isAuthenticationFailed => this == EnumAuthError.authenticationFailed;
  bool get isUserIdNotFound => this == EnumAuthError.userIdNotFound;
  bool get isInvalidTokenFormat => this == EnumAuthError.invalidTokenFormat;
  bool get isAuthorizationRequired =>
      this == EnumAuthError.authorizationRequired;
}
