import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:flutter/foundation.dart';
import 'package:intl/intl.dart';
import 'package:kidneysmart/bootstrap.dart';
import 'package:kidneysmart/core/enum/enum_log_level.dart';
import 'package:kidneysmart/core/log/logger.dart';

import 'package:kidneysmart/core/service/error_handler/model/app_error.dart';
import 'package:kidneysmart/core/storage/local_storage.dart';

class ErrorHandler {
  // Factory constructor for singleton instance
  factory ErrorHandler.initialize(
    LocalStorage storage,
    FirebaseCrashlytics crashlytics,
  ) {
    return _instance ??= ErrorHandler._(storage, crashlytics);
  }

  // Private constructor
  ErrorHandler._(this._localStorage, this._crashlytics);
  final LocalStorage _localStorage;
  final FirebaseCrashlytics _crashlytics;

  static ErrorHandler? _instance;

  // Getter for singleton instance
  static ErrorHandler get instance {
    if (_instance == null) {
      throw UnimplementedError('ErrorHandler must be initialized before use');
    }
    return _instance!;
  }

  // Record and process errors
  Future<void> recordError(AppError appError) async {
    final enrichedError = await _enrichErrorDetails(appError);
    _logError(enrichedError);
    await Future.wait([
      _reportToCrashlytics(enrichedError),
      _reportToServer(enrichedError),
    ]);
  }

  // Log error message based on its severity
  void _logError(AppError error) {
    switch (error.level) {
      case EnumLogLevel.info:
        logger.i('Info: ${error.message}', error: error);

      case EnumLogLevel.debug:
        logger.d('Debug: ${error.message}', error: error);

      case EnumLogLevel.warning:
        logger.w('Warning: ${error.message}', error: error);

      case EnumLogLevel.error:
        logger.e('Error: ${error.message}', error: error);
    }
  }

  // Enrich error details
  Future<AppError> _enrichErrorDetails(AppError error) async {
    final userAgent = await _localStorage.getUserAgent();
    final debugState = globalDebugState.toJson();
    final time = DateFormat('yyyy-MM-dd HH:mm:ss.SSS').format(DateTime.now());

    return error.copyWith(
      message: '${error.message} | 2Type: ${error.type}',
      details: {
        'userAgent': userAgent,
        'debugState': debugState,
        ...?error.details,
      },
      time: time,
    );
  }

  Future<void> _reportToCrashlytics(AppError error) async {
    try {
      error.details?.forEach((key, value) async {
        await _crashlytics.setCustomKey(key, value.toString());
      });
      const typeError = kDebugMode ? 'TEST' : 'PROD';

      await _crashlytics.recordError(
        error.message,
        error.stackTrace ?? StackTrace.current,
        reason: typeError,
        fatal: error.isFatal,
      );
    } on Object catch (e, s) {
      logger.e('Failed to report to Crashlytics', error: e, stackTrace: s);
    }
  }

// Report error to the server
  Future<void> _reportToServer(AppError error) async {
    try {
      // Error reporting logic to your server
    } catch (e, s) {
      logger.e('Failed to report error to server', error: e, stackTrace: s);
    }
  }
}
