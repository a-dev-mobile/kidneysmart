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
  factory GlobalDB() => _internalSingleton;
  GlobalDB._internal();
  static final GlobalDB _internalSingleton = GlobalDB._internal();

  static const name = 'v_1.db';
  static const assetsPath = 'assets/db/$name';
}

class GlobalString {
  factory GlobalString() => _internalSingleton;
  GlobalString._internal();
  static final GlobalString _internalSingleton = GlobalString._internal();
  
  
  
  static const styleCssIsLight = '''

    <style type="text/css">
      body {
        color: #0B0B0B;
   
      }
    </style>
''';
  static const styleCssIsDark = '''

    <style type="text/css">
      body {
        color: #E1E2E2;

      }
   a { color: #90CAF9; } /* CSS link color */

    a:visited {color: #929597; } /* visited link */
    </style>
''';
}
