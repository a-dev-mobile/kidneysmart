class AppDBConst {
  factory AppDBConst() => _internalSingleton;
  AppDBConst._internal();
  static final AppDBConst _internalSingleton = AppDBConst._internal();

  static const name = 'db.db';
  static const assetsPath = 'assets/db/$name';
}
