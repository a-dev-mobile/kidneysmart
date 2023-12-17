import 'dart:developer' as developer;
import 'package:flutter/foundation.dart';

class Logger {
  Logger._internal();

  static bool detailedLogging = kDebugMode;

  static void info(String message, {Object? error, StackTrace? stackTrace}) {
    _log(
      _colorize(message, _AnsiColor.blue),
      'INFO',
      800,
      error: error,
      stackTrace: stackTrace,
    );
  }

  static void debug(String message, {Object? error, StackTrace? stackTrace}) {
    _log(
      _colorize(message, _AnsiColor.green),
      'DEBUG',
      500,
      error: error,
      stackTrace: stackTrace,
    );
  }

  static void warning(String message, {Object? error, StackTrace? stackTrace}) {
    _log(
      _colorize(message, _AnsiColor.yellow),
      'WARNING',
      900,
      error: error,
      stackTrace: stackTrace,
    );
  }

  static void error(String message, {Object? error, StackTrace? stackTrace}) {
    _log(
      _colorize(message, _AnsiColor.red),
      'ERROR',
      1000,
      error: error,
      stackTrace: stackTrace,
    );
  }

  static void _log(
    String message,
    String name,
    int level, {
    Object? error,
    StackTrace? stackTrace,
  }) {
    var fileLocation = detailedLogging && stackTrace != null
        ? _extractFileLocation(stackTrace)
        : _extractFileLocation(StackTrace.current);

    if (fileLocation != 'Unknown') {
      developer.log(fileLocation, name: name, level: level);
    }

    developer.log(
      message,
      name: name,
      level: level,
      error: error,
      stackTrace: detailedLogging ? _transformStackTrace(stackTrace) : null,
    );
  }

  static String _colorize(String message, _AnsiColor color) {
    return '${color.code}$message${_AnsiColor.reset.code}';
  }

  static String _extractFileLocation(StackTrace? stackTrace) {
    // Получение значений из Dart Defines
    const packagePrefix =
        String.fromEnvironment('LOGGING_PACKAGE_PREFIX', defaultValue: '');
    const basePath =
        String.fromEnvironment('LOGGING_BASE_PATH', defaultValue: '');
    const String filePathColorCode = '\u001b[38;2;145;231;255m';
    // Проверка на наличие значений
    if (packagePrefix.isEmpty || basePath.isEmpty) {
      developer.log(
        'Warning: Specify LOGGING_PACKAGE_PREFIX and LOGGING_BASE_PATH values for interactivity.',
      );
      return 'Unknown';
    }

    if (stackTrace != null) {
      var lines = stackTrace.toString().split('\n').reversed;
      for (var line in lines) {
        if (line.contains(packagePrefix)) {
          var regexPattern = RegExp(
            '${RegExp.escape(packagePrefix)}(.+\\.dart):(\\d+):(\\d+)',
          );
          var match = regexPattern.firstMatch(line);
          if (match != null) {
            var relativePath =
                'lib\\${match.group(1)?.replaceAll('/', '\\') ?? 'Unknown'}';
            var lineNumber = match.group(2) ?? '0';
            var columnNumber = match.group(3) ?? '0';
            return '$filePathColorCode$basePath$relativePath:$lineNumber:$columnNumber${_AnsiColor.reset.code}';
          }
        }
      }
    }
    return 'Unknown';
  }

  static StackTrace? _transformStackTrace(StackTrace? stackTrace) {
    if (stackTrace != null) {
      var lines = stackTrace.toString().split('\n');
      var transformedLines = lines.map((line) {
        return _transformStackTraceLine(line);
      }).join('\n');
      return StackTrace.fromString(transformedLines);
    }
    return stackTrace;
  }

  static String _transformStackTraceLine(String line) {
    // Получение значений из Dart Defines
    const packagePrefix =
        String.fromEnvironment('LOGGING_PACKAGE_PREFIX', defaultValue: '');

    if (line.contains(packagePrefix)) {
      // Применяем ту же логику, что и в _extractFileLocation
      return _extractFileLocation(StackTrace.fromString(line));
    }

    // Если строка не содержит packagePrefix, возвращаем её без изменений
    return line;
  }
}

class _AnsiColor {
  final String code;
  _AnsiColor._(this.code);

  static final reset = _AnsiColor._('\x1B[0m');
  static final red = _AnsiColor._('\x1B[31m');
  static final green = _AnsiColor._('\x1B[32m');
  static final yellow = _AnsiColor._('\x1B[33m');
  static final blue = _AnsiColor._('\x1B[34m');
}
