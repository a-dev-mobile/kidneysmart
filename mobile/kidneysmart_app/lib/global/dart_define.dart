// ignore_for_file: constant_identifier_names

class DartDefineConst {
  factory DartDefineConst() => _internalSingleton;
  DartDefineConst._internal();
  static final DartDefineConst _internalSingleton = DartDefineConst._internal();

  static const IS_DEBUG_MENU_ENABLED =
      bool.fromEnvironment('IS_DEBUG_MENU_ENABLED');

  static const APP_DB_PASSWORD = String.fromEnvironment('APP_DB_PASSWORD');
  static const API_KEY_DADATA = String.fromEnvironment('API_KEY_DADATA');

  static const API_KEY_APP_METRIC =
      String.fromEnvironment('API_KEY_APP_METRIC');
}
