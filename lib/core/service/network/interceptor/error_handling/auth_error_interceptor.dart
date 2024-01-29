import 'package:dartlog/dartlog.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:kidneysmart/core/service/network/interceptor/auth/token_refresh_interceptor.dart';
import 'package:kidneysmart/core/service/network/interceptor/error_handling/enum_auth_error.dart';
import 'package:kidneysmart/core/storage/app_storage.dart';
import 'package:kidneysmart/core/utils/ui/snackbar_utils.dart';
import 'package:kidneysmart/feature/login/view/login_screen.dart';
import 'package:kidneysmart/feature/welcome/view/welcome_page.dart';
import 'package:kidneysmart/navigation/app_router.dart';

class AuthErrorInterceptor extends Interceptor {
  AuthErrorInterceptor(this._go, this._dio, this._storage);
  final AppRouter _go;
  final Dio _dio;
  final AppStorage _storage;
  TokenRefreshInterceptor? _tokenRefreshInterceptor;

  @override
  void onResponse(
    Response<dynamic> response,
    ResponseInterceptorHandler handler,
  ) {
    if (!_handleAuthError(response)) {
      super.onResponse(response, handler);
    }
  }

  @override
  void onError(DioException err, ErrorInterceptorHandler handler) {
    if (!_handleAuthError(err.response)) {
      super.onError(err, handler);
    } else {
      // If it's an authentication error, try to refresh the token
      _refreshToken(err, handler);
    }
  }

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
        'AuthErrorInterceptor: Error handling authentication error',
        e,
        s,
      );
    }
    return false;
  }

  void _showAuthError(EnumAuthError status) {
    final context = _go.router.configuration.navigatorKey.currentContext;
    if (context != null) {
      showAuthErrorSnackBar(context, status);
    }
  }

  void _handleAuthStatus(
    EnumAuthError status, {
    DioException? err,
    ErrorInterceptorHandler? handler,
  }) {
    switch (status) {
      case EnumAuthError.tokenExpired:
        // If we have the necessary context, refresh the token. Otherwise, take a different action.
        if (err != null && handler != null) {
          _refreshToken(err, handler);
        } else {
          // Handle token expiration without direct refresh, e.g., flag for refresh, notify user, etc.
          _flagForTokenRefresh();
        }

      case EnumAuthError.authorizationRequired:
      case EnumAuthError.invalidToken:
      case EnumAuthError.authenticationFailed:
      case EnumAuthError.invalidTokenFormat:
      case EnumAuthError.userIdNotFound:
      case EnumAuthError.invalidTokenType:
      case EnumAuthError.invalidTokenSignature:
        _redirectToLogin();
    }
  }

  void _refreshToken(DioException err, ErrorInterceptorHandler handler) {
    _tokenRefreshInterceptor ??= TokenRefreshInterceptor(_dio, _storage);
    _tokenRefreshInterceptor!.refreshTokenAndRetry(err.requestOptions, handler);
  }

  void _redirectToLogin() {
    _go.clearAndNavigate(WelcomeScreen.name);
  }

  void _flagForTokenRefresh() {}
}
