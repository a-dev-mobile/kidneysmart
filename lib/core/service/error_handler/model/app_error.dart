// ignore_for_file: invalid_annotation_target, require_trailing_commas

import 'dart:async';
import 'dart:io';

import 'package:flutter/services.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:intl/intl.dart';
import 'package:kidneysmart/core/enum/enum_log_level.dart';

part 'app_error.freezed.dart';
part 'app_error.g.dart';

@freezed
class AppError with _$AppError {
  const AppError._();
  factory AppError.autoDetect(String message,
      {Object? error, StackTrace? stackTrace, bool? isFatal}) {
    final errorInfo = _classifyErrorType(error);
    final errorType = errorInfo.type;
    final logLevel = errorInfo.level;

    // Enhanced detailed error message
    final detailedMessage = _buildDetailedErrorMessage(message, error);

    return AppError.general(
        message: detailedMessage,
        stackTrace: stackTrace,
        type: errorType,
        level: logLevel,
        isFatal: isFatal ?? true);
  }

  const factory AppError.general({
    required String message,
    Map<String, dynamic>? details,
    @JsonKey(
      fromJson: _stackTraceFromJson,
      toJson: _stackTraceToJson,
    )
    StackTrace? stackTrace,
    @Default(EnumLogLevel.error) EnumLogLevel level,
    @Default(true) bool isFatal,
    @Default('GeneralError') String type,
    String? time,
  }) = GeneralError;

//

  const factory AppError.widgetLifecycleError({
    required String message,
    Map<String, dynamic>? details,
    @JsonKey(
      fromJson: _stackTraceFromJson,
      toJson: _stackTraceToJson,
    )
    StackTrace? stackTrace,
    @Default(EnumLogLevel.error) EnumLogLevel level,
    @Default(true) bool isFatal,
    @Default('WidgetLifecycleError') String type,
    String? time,
  }) = WidgetLifecycleError;

  const factory AppError.frameworkError({
    required String message,
    Map<String, dynamic>? details,
    @JsonKey(
      fromJson: _stackTraceFromJson,
      toJson: _stackTraceToJson,
    )
    StackTrace? stackTrace,
    @Default(EnumLogLevel.error) EnumLogLevel level,
    @Default(false) bool isFatal,
    @Default('FlutterFrameworkError') String type,
    String? time,
  }) = FrameworkError;

  const factory AppError.uncaughtError({
    required String message,
    Map<String, dynamic>? details,
    @JsonKey(
      fromJson: _stackTraceFromJson,
      toJson: _stackTraceToJson,
    )
    StackTrace? stackTrace,
    @Default(EnumLogLevel.error) EnumLogLevel level,
    @Default(true) bool isFatal,
    @Default('UncaughtError') String type,
    String? time,
  }) = UncaughtError;

  const factory AppError.platformError({
    required String message,
    Map<String, dynamic>? details,
    @JsonKey(
      fromJson: _stackTraceFromJson,
      toJson: _stackTraceToJson,
    )
    StackTrace? stackTrace,
    @Default(EnumLogLevel.warning) EnumLogLevel level,
    @Default(false) bool isFatal,
    @Default('PlatformError') String type,
    String? time,
  }) = PlatformError;

  const factory AppError.apiError({
    required String message,
    Map<String, dynamic>? details,
    @JsonKey(
      fromJson: _stackTraceFromJson,
      toJson: _stackTraceToJson,
    )
    StackTrace? stackTrace,
    @Default(EnumLogLevel.error) EnumLogLevel level,
    @Default(true) bool isFatal,
    @Default('ApiError') String type,
    String? time,
  }) = ApiError;

  const factory AppError.localStorageError({
    required String message,
    Map<String, dynamic>? details,
    @JsonKey(
      fromJson: _stackTraceFromJson,
      toJson: _stackTraceToJson,
    )
    StackTrace? stackTrace,
    @Default(EnumLogLevel.error) EnumLogLevel level,
    @Default(true) bool isFatal,
    @Default('LocalStorageError') String type,
    String? time,
  }) = LocalStorageError;

  const factory AppError.authenticationError({
    required String message,
    Map<String, dynamic>? details,
    @JsonKey(
      fromJson: _stackTraceFromJson,
      toJson: _stackTraceToJson,
    )
    StackTrace? stackTrace,
    @Default(EnumLogLevel.error) EnumLogLevel level,
    @Default(true) bool isFatal,
    @Default('AuthenticationError') String type,
    String? time,
  }) = AuthenticationError;

  factory AppError.fromJson(Map<String, Map<String, dynamic>?> json) =>
      _$AppErrorFromJson(json);

  static _ErrorInfo _classifyErrorType(Object? error) {
    if (error == null) {
      return _ErrorInfo(type: 'NoError', level: EnumLogLevel.info);
    } else if (error is SocketException) {
      return _ErrorInfo(type: 'NetworkError', level: EnumLogLevel.warning);
    } else if (error is HttpException) {
      return _ErrorInfo(type: 'HttpError', level: EnumLogLevel.error);
    } else if (error is FormatException) {
      return _ErrorInfo(type: 'FormatError', level: EnumLogLevel.error);
    } else if (error is FileSystemException) {
      return _ErrorInfo(type: 'FileSystemError', level: EnumLogLevel.error);
    } else if (error is TimeoutException) {
      return _ErrorInfo(type: 'TimeoutError', level: EnumLogLevel.warning);
    } else if (error is PlatformException) {
      return _ErrorInfo(type: 'PlatformException', level: EnumLogLevel.error);
    } else if (error is MissingPluginException) {
      return _ErrorInfo(
        type: 'MissingPluginException',
        level: EnumLogLevel.error,
      );
    } else if (error is ArgumentError) {
      return _ErrorInfo(type: 'ArgumentError', level: EnumLogLevel.error);
    } else if (error is RangeError) {
      return _ErrorInfo(type: 'RangeError', level: EnumLogLevel.error);
    } else if (error is NoSuchMethodError) {
      return _ErrorInfo(type: 'NoSuchMethodError', level: EnumLogLevel.error);
    } else if (error is UnsupportedError) {
      return _ErrorInfo(type: 'UnsupportedError', level: EnumLogLevel.error);
    } else if (error is UnimplementedError) {
      return _ErrorInfo(type: 'UnimplementedError', level: EnumLogLevel.error);
    } else if (error is ConcurrentModificationError) {
      return _ErrorInfo(
          type: 'ConcurrentModificationError', level: EnumLogLevel.error);
    } else if (error is AssertionError) {
      return _ErrorInfo(type: 'AssertionError', level: EnumLogLevel.error);
    } else if (error is StackOverflowError) {
      return _ErrorInfo(type: 'StackOverflowError', level: EnumLogLevel.error);
    } else if (error is OutOfMemoryError) {
      return _ErrorInfo(type: 'OutOfMemoryError', level: EnumLogLevel.error);
    } else if (error is IndexError) {
      return _ErrorInfo(type: 'IndexError', level: EnumLogLevel.error);
    } else {
      return _ErrorInfo(type: 'UnknownError', level: EnumLogLevel.error);
    }
  }

  // Helper method for building detailed error messages
  static String _buildDetailedErrorMessage(
    String message,
    Object? error,
  ) {
    final errorDescription =
        error?.toString() ?? 'No additional error information';
    return '$message | Details: $errorDescription';
  }
}

// JSON conversion methods for stack trace
String? _stackTraceToJson(StackTrace? stackTrace) => stackTrace?.toString();
StackTrace? _stackTraceFromJson(dynamic json) =>
    json is String ? StackTrace.fromString(json) : null;

class _ErrorInfo {
  _ErrorInfo({required this.type, required this.level});
  final String type;
  final EnumLogLevel level;
}
