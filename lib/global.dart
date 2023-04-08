// ignore_for_file: constant_identifier_names

/// DartDefine Singleton class
class DartDefine {
  factory DartDefine() => _internalSingleton;
  DartDefine._internal();

  static final DartDefine _internalSingleton = DartDefine._internal();
  static const IS_DEBUG_MENU_ENABLED =
      bool.fromEnvironment('IS_DEBUG_MENU_ENABLED');
  static const IS_ANALYTICS_ENABLED =
      bool.fromEnvironment('IS_ANALYTICS_ENABLED');

  static const APP_DB_PASSWORD = String.fromEnvironment('APP_DB_PASSWORD');
  static const API_KEY_DADATA = String.fromEnvironment('API_KEY_DADATA');
  static const SENTRY_DSN = String.fromEnvironment('SENTRY_DSN');
  static const API_KEY_APP_METRIC =
      String.fromEnvironment('API_KEY_APP_METRIC');
}

class GlobalDB {
  static const name = 'v_1.db';
  static const assetsPath = 'assets/db/$name';
}
