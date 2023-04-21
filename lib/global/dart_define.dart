
// ignore_for_file: constant_identifier_names

class AppDartDefineConst {
  factory AppDartDefineConst() => _internalSingleton;
  AppDartDefineConst._internal();
  static final AppDartDefineConst _internalSingleton =
      AppDartDefineConst._internal();

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
