import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:flutter/foundation.dart';
import 'package:kidneysmart/bootstrap.dart';
import 'package:kidneysmart/core/log/logger.dart';
import 'package:kidneysmart/core/storage/local_storage.dart';

class ErrorHandler {
  // Factory constructor
  factory ErrorHandler(LocalStorage storage, FirebaseCrashlytics crashlytics) {
    _instance ??= ErrorHandler._(storage, crashlytics);
    return _instance!;
  }

  ErrorHandler._(this._localStorage, this._crashlytics);
  static ErrorHandler get instance =>
      _instance ??
      (throw UnimplementedError('ErrorHandler must be initialized first'));

  final LocalStorage _localStorage;
  final FirebaseCrashlytics _crashlytics;

  static ErrorHandler? _instance;

  // Static method to initialize the ErrorHandler
  static void initialize(
      LocalStorage storage, FirebaseCrashlytics crashlytics) {
    _instance ??= ErrorHandler._(storage, crashlytics);
  }

  Future<void> recordError(
    dynamic exception,
    StackTrace stack, {
    bool isFatal = false,
  }) async {
    try {
      //  logger.e('error isFatal = $isFatal', error: exception, stackTrace: stack);
      final userAgent = await _localStorage.getUserAgent();
      await _crashlytics.setCustomKey('userAgent', userAgent);
      await _crashlytics.setCustomKey('debugState', globalDebugState.toString());

      const typeError = kDebugMode ? 'TEST' : 'PROD';
      await _crashlytics.recordError(
        exception,
        stack,
        reason: typeError,
        fatal: isFatal,
      );

      // Optional: Log to console in development mode
      if (kDebugMode) {
        logger.e('Error logged', error: exception, stackTrace: stack);
      }
    } on Object catch (e, s) {
      logger.e('Failed to record error', error: e, stackTrace: s);
    }
  }
}
