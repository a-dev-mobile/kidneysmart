import 'dart:io';

import 'package:device_info_plus/device_info_plus.dart';
import 'package:kidneysmart/core/enum/enum_store.dart';
import 'package:package_info_plus/package_info_plus.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'about_device.g.dart';

@Riverpod(keepAlive: true)
AboutDevice aboutDevice(AboutDeviceRef ref) {
  return AboutDevice();
}

class AboutDevice {
  static const _defaultAgentName = 'KidneySmart/1.0.0/test (test; test)';
  static const _appName = 'KidneySmart';
  static PackageInfo? _packageInfo;

  Future<PackageInfo> _getPackageInfo() async {
    _packageInfo ??= await PackageInfo.fromPlatform();
    return _packageInfo!;
  }

  Future<String> getInstallerStore() async {
    final packageInfo = await _getPackageInfo();
    return packageInfo.installerStore ?? 'Unknown';
  }

  Future<String> getAgent([String? debugStoreName]) async {
    final packageInfo = await _getPackageInfo();
    final storeName = debugStoreName ??
        EnumStore.fromPackageId(
          packageInfo.installerStore,
          fallback: EnumStore.unknown,
        ).name;
    final appVersion = packageInfo.version;
    final appAndVersion = '$_appName/$appVersion/$storeName';
    final deviceInfo = DeviceInfoPlugin();

    if (Platform.isAndroid) {
      return _getAndroidAgent(deviceInfo, appAndVersion);
    } else if (Platform.isIOS) {
      return _getIosAgent(deviceInfo, appAndVersion);
    } else {
      return _getFallbackAgent();
    }
  }

  Future<String> getPackageName() async {
    final packageInfo = await _getPackageInfo();
    return packageInfo.packageName;
  }

  Future<String> getVersion() async {
    final packageInfo = await _getPackageInfo();
    return packageInfo.version;
  }

  Future<int> getbuildNumber() async {
    final packageInfo = await _getPackageInfo();
    return int.tryParse(packageInfo.buildNumber) ?? 0;
  }

  Future<String> _getAndroidAgent(
    DeviceInfoPlugin deviceInfo,
    String appAndVersion,
  ) async {
    final androidInfo = await deviceInfo.androidInfo;
    return '$appAndVersion (${androidInfo.brand} ${androidInfo.device}; Android)';
  }

  Future<String> _getIosAgent(
    DeviceInfoPlugin deviceInfo,
    String appAndVersion,
  ) async {
    final iosInfo = await deviceInfo.iosInfo;
    return '$appAndVersion (${iosInfo.model}; iOS)';
  }

  String _getFallbackAgent() {
    // Handle other platforms or provide a fallback agent
    return _defaultAgentName;
  }
}
