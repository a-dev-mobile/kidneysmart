// ignore_for_file: constant_identifier_names

class AppDartDefineConst {
  factory AppDartDefineConst() => _internalSingleton;
  AppDartDefineConst._internal();
  static final AppDartDefineConst _internalSingleton =
      AppDartDefineConst._internal();

  static const IS_DEBUG_MENU_ENABLED =
      bool.fromEnvironment('IS_DEBUG_MENU_ENABLED');
}
