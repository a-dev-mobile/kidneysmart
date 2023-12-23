// import 'dart:developer' as developer;

// class Logger {
//   Logger._internal();

//   static void info(String message) {
//     _log(message, 'INFO', 800);
//   }

//   static void debug(String message) {
//     _log(message, 'DEBUG', 500);
//   }

//   static void warning(String message) {
//     _log(message, 'WARNING', 900);
//   }

//   static void error(String message, {Object? error, StackTrace? stackTrace}) {
//     stackTrace ??= StackTrace.current;
//     _log(message, 'ERROR', 1000, error: error, stackTrace: stackTrace);
//   }

//   static void _log(
//     String message,
//     String name,
//     int level, {
//     Object? error,
//     StackTrace? stackTrace,
//   }) {
//     stackTrace ??= StackTrace.current;
//     final fileName = _extractFileName(stackTrace);
//     developer.log(
//       '[$fileName] $message',
//       name: name,
//       level: level,
//       error: error,
//       stackTrace: stackTrace,
//     );
//   }

//   static String _extractFileName(StackTrace stackTrace) {
//     final lines = stackTrace.toString().split('\n');
//     if (lines.isNotEmpty) {
//       // Match file name from the stack trace
//       final match = RegExp(r'([^/\\]+)\.dart').firstMatch(lines[0]);
//       if (match != null && match.groupCount >= 1) {
//         return match.group(1) ?? 'Unknown';
//       }
//     }
//     return 'Unknown';
//   }
// }
