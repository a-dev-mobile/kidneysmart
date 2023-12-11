import 'package:flutter/foundation.dart';
import 'package:logger/logger.dart';

// Use logger to debug, it will not show in release mode.
final Logger logger = Logger(
  printer: PrettyPrinter(),
  filter: _CustomLogFilter(),
);

final Logger log = Logger(
  filter: _CustomLogFilter(),
  printer: PrettyPrinter(
    printEmojis: false,
    methodCount: 0,
  ),
);

class _CustomLogFilter extends LogFilter {
  @override
  bool shouldLog(LogEvent event) {
    // Дополнительные условия для фильтрации логов
    if (kDebugMode) {
      return true; // Выводить все логи в режиме отладки
    } else {
      // В релизном режиме  выводить только ошибки
      return event.level == Level.error;
    }
  }
}
