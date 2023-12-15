import 'package:kidneysmart/core/service/error_handler/error_handler.dart';
import 'package:kidneysmart/core/service/error_handler/model/app_error.dart';

extension ErrorRecording on Object {
  // Record an error with optional custom message, stack trace, and fatality flag
  Future<void> recordError({
    String? message,
    StackTrace? stackTrace,
    bool isFatal = false,
  }) async {
    final effectiveMessage = message ?? 'Error: $this';
    final effectiveStackTrace = stackTrace ?? StackTrace.current;

    await ErrorHandler.instance.recordError(
      AppError.autoDetect(
        effectiveMessage,
        error: this,
        stackTrace: effectiveStackTrace,
        isFatal: isFatal,
      ),
    );
  }

  // Record an API error
  Future<void> recordApiError({
    String? message,
    StackTrace? stackTrace,
    bool isFatal = false,
  }) async {
    final effectiveMessage = message ?? 'API Error: $this';
    final effectiveStackTrace = stackTrace ?? StackTrace.current;

    await ErrorHandler.instance.recordError(
      AppError.apiError(
        message: effectiveMessage,
        details: {'error': this},
        stackTrace: effectiveStackTrace,
        isFatal: isFatal,
      ),
    );
  }
}
