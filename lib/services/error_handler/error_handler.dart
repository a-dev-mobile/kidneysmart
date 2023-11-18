// lib/services/error_handler.dart

import 'package:firebase_crashlytics/firebase_crashlytics.dart';

enum ErrorSeverity { info, warning, error, critical }

class ErrorHandler {
  factory ErrorHandler() => _instance;

  ErrorHandler._internal();
  static final ErrorHandler _instance = ErrorHandler._internal();

  Future<void> reportError(
    dynamic error,
    StackTrace stackTrace, {
    ErrorSeverity severity = ErrorSeverity.error,
    String? customMessage,
    Map<String, dynamic>? additionalInfo,
  }) async {
    // Add custom error handling logic here based on the environment

    if (customMessage != null) {
      await FirebaseCrashlytics.instance.log(customMessage);
    }

    // Add user information if available and relevant
    // FirebaseCrashlytics.instance.setUserIdentifier('User ID');

    // Include additional info in the log if available
    additionalInfo?.forEach((key, value) {
      FirebaseCrashlytics.instance.setCustomKey(key, value.toString());
    });

    final fatal = severity == ErrorSeverity.critical;
    await FirebaseCrashlytics.instance
        .recordError(error, stackTrace, fatal: fatal);
  }
}

/// Reports a serious error that is fatal to the application
void reportFatalError(
  dynamic error,
  StackTrace stackTrace, {
  String? customMessage,
}) {
  _reportError(error, stackTrace, fatal: true, customMessage: customMessage);
}

/// Reports a non-serious error that is not fatal to the application
void reportNonFatalError(
  dynamic error,
  StackTrace stackTrace, {
  String? customMessage,
}) {
  _reportError(error, stackTrace, fatal: false, customMessage: customMessage);
}

void _reportError(
  dynamic error,
  StackTrace stackTrace, {
  required bool fatal,
  String? customMessage,
}) {
  if (customMessage != null) {
    FirebaseCrashlytics.instance.log(customMessage);
  }

  FirebaseCrashlytics.instance.recordError(error, stackTrace, fatal: fatal);
}

// Additional methods for specific error handling scenarios can be added here
