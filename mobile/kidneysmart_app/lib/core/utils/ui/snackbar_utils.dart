import 'package:flutter/material.dart';
import 'package:kidneysmart/core/service/network/interceptor/error_handling/enum_auth_error.dart';

void showAuthErrorSnackBar(BuildContext context, EnumAuthError error) {
  var message =
      ''; // Инициализируем пустым строковым значением для безопасности
  switch (error) {
    case EnumAuthError.authorizationRequired:
      message = 'Authorization is required.';

    case EnumAuthError.tokenExpired:
      message = 'Your session has expired.';
    case EnumAuthError.invalidToken:
      message = 'Invalid token.';
    case EnumAuthError.authenticationFailed:
      message = 'Authentication failed.';
    case EnumAuthError.invalidTokenFormat:
      message = 'Invalid token format.';
    case EnumAuthError.userIdNotFound:
      message = 'UserID not found in token.';
    case EnumAuthError.invalidTokenType:
      message = 'Invalid token type.';
    case EnumAuthError.invalidTokenSignature:
      message = 'Invalid token signature.';
  }

  final snackBar = SnackBar(content: Text(message));
  ScaffoldMessenger.of(context).showSnackBar(snackBar);
}
