class AppStringConst {
  factory AppStringConst() => _internalSingleton;
  AppStringConst._internal();
  static final AppStringConst _internalSingleton = AppStringConst._internal();

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
