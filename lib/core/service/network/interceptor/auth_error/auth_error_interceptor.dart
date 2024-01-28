import 'package:dartlog/dartlog.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:kidneysmart/core/service/network/interceptor/auth_error/enum_auth_error.dart';
import 'package:kidneysmart/core/utils/ui/snackbar_utils.dart';
import 'package:kidneysmart/feature/login/view/login_screen.dart';
import 'package:kidneysmart/feature/welcome/view/welcome_page.dart';
import 'package:kidneysmart/navigation/app_router.dart';

class AuthErrorInterceptor extends Interceptor {
  final AppRouter _router; // Used for navigation

  AuthErrorInterceptor(this._router);

  @override
  void onResponse(
    Response<dynamic> response,
    ResponseInterceptorHandler handler,
  ) {
    if (!_handleAuthError(response)) {
      // If _handleAuthError returns false, it means no auth error was identified
      super.onResponse(response, handler);
    }
  }

  @override
  void onError(DioException err, ErrorInterceptorHandler handler) {
    if (!_handleAuthError(err.response)) {
      // If _handleAuthError returns false, it means no auth error was identified or status is null
      super.onError(err, handler);
    }
  }

  // Returns true if an auth error was handled, otherwise false
  bool _handleAuthError(Response<dynamic>? response) {
    try {
      final data = response?.data;
      if (data is Map<String, dynamic>) {
        final statusString = data['status'] as String?;
        final status = EnumAuthError.fromValueOrNull(statusString);

        if (status != null) {
          _showAuthError(status);
          _handleAuthStatus(status);
          return true; 
        }
      }
    } catch (e, s) {
      Logger.error(
          'AuthErrorInterceptor: Error handling authentication error', e, s);
    }
    return false; 
  }

  void _showAuthError(EnumAuthError status) {
    final context = _router.router.configuration.navigatorKey.currentContext;
    if (context != null) {
      showAuthErrorSnackBar(context, status);
    }
  }

  void _handleAuthStatus(EnumAuthError status) {
    switch (status) {
      case EnumAuthError.authorizationRequired:
      case EnumAuthError.tokenExpired:
        _refreshTokenOrRedirect();

      case EnumAuthError.invalidToken:
      case EnumAuthError.authenticationFailed:
      case EnumAuthError.invalidTokenFormat:
      case EnumAuthError.userIdNotFound:
        _redirectToLogin();
        
    }
  }

  void _refreshTokenOrRedirect() {
    // Placeholder for refresh token logic
    _redirectToLogin();
  }

  void _redirectToLogin() {
    _router.clearAndNavigate(WelcomeScreen.name);
  }
}
