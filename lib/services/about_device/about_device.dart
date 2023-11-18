import 'dart:io';

import 'package:device_info_plus/device_info_plus.dart';
import 'package:kidneysmart/common/utils/data_parser.dart';
import 'package:kidneysmart/enum/enum_store.dart';

import 'package:package_info_plus/package_info_plus.dart';

abstract class AboutDevice {
  static const defaultAgentName = 'NadoDeneg/1.0.0/test (test; test)';
  static const appName = 'NadoDeneg';
  static PackageInfo? _packageInfo;

  static Future<PackageInfo> _getPackageInfo() async {
    _packageInfo ??= await PackageInfo.fromPlatform();
    return _packageInfo!;
  }

  static Future<String> getAgent([String? debugStoreName]) async {
    final packageInfo = await _getPackageInfo();
    final storeName = debugStoreName ??
        EnumStore.fromPackageId(
          packageInfo.installerStore,
          fallback: EnumStore.unknown,
        ).name;
    final appVersion = packageInfo.version;
    final appAndVersion = '$appName/$appVersion/$storeName';
    final deviceInfo = DeviceInfoPlugin();

    if (Platform.isAndroid) {
      return _getAndroidAgent(deviceInfo, appAndVersion);
    } else if (Platform.isIOS) {
      return _getIosAgent(deviceInfo, appAndVersion);
    } else {
      return _getFallbackAgent();
    }
  }

  static Future<String> getPackageName() async {
    final packageInfo = await _getPackageInfo();
    return packageInfo.packageName;
  }

  static Future<String> getInstallerStore() async {
    final packageInfo = await _getPackageInfo();
    return packageInfo.installerStore ?? 'apk';
  }

  static Future<String> getAppVersion() async {
    final packageInfo = await _getPackageInfo();
    return packageInfo.version;
  }

  static Future<int> getAppBuildNumber() async {
    final packageInfo = await _getPackageInfo();
    return DataParser.parseStringToNum(
      packageInfo.buildNumber,
      defaultValue: 1,
    )!
        .toInt();
  }

  static Future<String> _getAndroidAgent(
    DeviceInfoPlugin deviceInfo,
    String appAndVersion,
  ) async {
    final androidInfo = await deviceInfo.androidInfo;
    return '$appAndVersion (${androidInfo.brand} ${androidInfo.device}; Android)';
  }

  static Future<String> _getIosAgent(
    DeviceInfoPlugin deviceInfo,
    String appAndVersion,
  ) async {
    final iosInfo = await deviceInfo.iosInfo;
    return '$appAndVersion (${iosInfo.model}; iOS)';
  }

  static String _getFallbackAgent() {
    // Handle other platforms or provide a fallback agent
    return defaultAgentName;
  }
}
