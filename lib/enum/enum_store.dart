// turnGen
/// Represents different app stores and their respective package IDs.
enum EnumStore implements Comparable<EnumStore> {
  appStore(
    packageId: [
      'com.apple',
      'com.apple.testflight',
      'com.apple.simulator',
    ],
    url: '',
    name: 'AppStore',
    vendor: '(apple)',
  ),
  googlePlay(
    packageId: [
      'com.android.vending',
    ],
    url: '',
    name: 'GooglePlay',
    vendor: '(google)',
  ),
  getApps(
    packageId: [
      'com.xiaomi.mipicks',
    ],
    url: '',
    name: 'GetApps',
    vendor: '(xiaomi)',
  ),
  packageInstaller(
    packageId: [
      'com.miui.packageinstaller',
      'com.google.android.packageinstaller',
      'com.android.packageinstaller',
    ],
    url: '',
    name: 'PackageInstaller',
    vendor: '(apk)',
  ),
  ruStore(
    packageId: [
      'ru.vk.store',
    ],
    url: '',
    name: 'RuStore',
    vendor: '(vk)',
  ),
  appGallery(
    packageId: [
      'com.huawei.appmarket',
    ],
    url: '',
    name: 'AppGallery',
    vendor: '(huawei)',
  ),
  other(
    packageId: [
      'com.sec.android.app.samsungapps',
      'com.aurora.store',
      'com.samsung.android.scloud',
      'com.sec.android.easyMover',
      'com.xrom.intl.appcenter',
      'com.miui.huanji',
      'com.apkpure.aegon',
      'com.aurora.store',
    ],
    url: '',
    name: 'Other',
    vendor: '',
  ),
  unknown(
    packageId: [
      '',
    ],
    url: '',
    name: 'Unknown',
    vendor: '',
  );

  const EnumStore({
    required this.packageId,
    required this.url,
    required this.name,
    required this.vendor,
  });
  final List<String> packageId;
  final String url;
  final String name;
  final String vendor;

// end

//          --TURN_GEN--
//             (enum)
//  *************************************
//         GENERATED CODE
//  *************************************

  static EnumStore fromValue(
    String? packageId, {
    EnumStore? fallback,
  }) {
    for (final enumValue in EnumStore.values) {
      if (enumValue.packageId.contains(packageId)) {
        return enumValue;
      }
    }

    return fallback ??
        (throw ArgumentError.value(
          packageId,
          '',
          'Value not found in EnumStore',
        ));
  }

  T map<T>({
    required T Function() appStore,
    required T Function() googlePlay,
    required T Function() getApps,
    required T Function() packageInstaller,
    required T Function() ruStore,
    required T Function() appGallery,
    required T Function() other,
    required T Function() unknown,
  }) {
    switch (this) {
      case EnumStore.appStore:
        return appStore();
      case EnumStore.googlePlay:
        return googlePlay();
      case EnumStore.getApps:
        return getApps();
      case EnumStore.packageInstaller:
        return packageInstaller();
      case EnumStore.ruStore:
        return ruStore();
      case EnumStore.appGallery:
        return appGallery();
      case EnumStore.other:
        return other();
      case EnumStore.unknown:
        return unknown();
    }
  }

  T mapValue<T>({
    required T appStore,
    required T googlePlay,
    required T getApps,
    required T packageInstaller,
    required T ruStore,
    required T appGallery,
    required T other,
    required T unknown,
  }) {
    switch (this) {
      case EnumStore.appStore:
        return appStore;
      case EnumStore.googlePlay:
        return googlePlay;
      case EnumStore.getApps:
        return getApps;
      case EnumStore.packageInstaller:
        return packageInstaller;
      case EnumStore.ruStore:
        return ruStore;
      case EnumStore.appGallery:
        return appGallery;
      case EnumStore.other:
        return other;
      case EnumStore.unknown:
        return unknown;
    }
  }

  T maybeMap<T>({
    required T Function() orElse,
    T Function()? appStore,
    T Function()? googlePlay,
    T Function()? getApps,
    T Function()? packageInstaller,
    T Function()? ruStore,
    T Function()? appGallery,
    T Function()? other,
    T Function()? unknown,
  }) =>
      map<T>(
        appStore: appStore ?? orElse,
        googlePlay: googlePlay ?? orElse,
        getApps: getApps ?? orElse,
        packageInstaller: packageInstaller ?? orElse,
        ruStore: ruStore ?? orElse,
        appGallery: appGallery ?? orElse,
        other: other ?? orElse,
        unknown: unknown ?? orElse,
      );

  T maybeMapValue<T>({
    required T orElse,
    T? appStore,
    T? googlePlay,
    T? getApps,
    T? packageInstaller,
    T? ruStore,
    T? appGallery,
    T? other,
    T? unknown,
  }) =>
      mapValue<T>(
        appStore: appStore ?? orElse,
        googlePlay: googlePlay ?? orElse,
        getApps: getApps ?? orElse,
        packageInstaller: packageInstaller ?? orElse,
        ruStore: ruStore ?? orElse,
        appGallery: appGallery ?? orElse,
        other: other ?? orElse,
        unknown: unknown ?? orElse,
      );

  T? maybeMapOrNull<T>({
    T Function()? appStore,
    T Function()? googlePlay,
    T Function()? getApps,
    T Function()? packageInstaller,
    T Function()? ruStore,
    T Function()? appGallery,
    T Function()? other,
    T Function()? unknown,
  }) =>
      maybeMap<T?>(
        orElse: () => null,
        appStore: appStore,
        googlePlay: googlePlay,
        getApps: getApps,
        packageInstaller: packageInstaller,
        ruStore: ruStore,
        appGallery: appGallery,
        other: other,
        unknown: unknown,
      );

  T? maybeMapOrNullValue<T>({
    T? appStore,
    T? googlePlay,
    T? getApps,
    T? packageInstaller,
    T? ruStore,
    T? appGallery,
    T? other,
    T? unknown,
  }) =>
      maybeMapValue<T?>(
        orElse: null,
        appStore: appStore,
        googlePlay: googlePlay,
        getApps: getApps,
        packageInstaller: packageInstaller,
        ruStore: ruStore,
        appGallery: appGallery,
        other: other,
        unknown: unknown,
      );

  static List<List<String>> getValues() =>
      EnumStore.values.map((e) => e.packageId).toList();

  @override
  int compareTo(EnumStore other) => index.compareTo(other.index);
}

extension $EnumStore on EnumStore {
  bool get isAppStore => this == EnumStore.appStore;
  bool get isGooglePlay => this == EnumStore.googlePlay;
  bool get isGetApps => this == EnumStore.getApps;
  bool get isPackageInstaller => this == EnumStore.packageInstaller;
  bool get isRuStore => this == EnumStore.ruStore;
  bool get isAppGallery => this == EnumStore.appGallery;
  bool get isOther => this == EnumStore.other;
  bool get isUnknown => this == EnumStore.unknown;
}
