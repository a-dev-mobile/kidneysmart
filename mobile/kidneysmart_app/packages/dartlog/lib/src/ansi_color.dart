class AnsiColor {
  AnsiColor._(this.code);
  final String code;

  static final reset = AnsiColor._('\x1B[0m');
  static final red = AnsiColor._('\x1B[31m');
  static final green = AnsiColor._('\x1B[32m');
  static final yellow = AnsiColor._('\x1B[33m');
  static final blue = AnsiColor._('\x1B[34m');
}