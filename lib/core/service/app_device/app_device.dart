import 'dart:io';

import 'package:device_info_plus/device_info_plus.dart';
import 'package:kidneysmart/core/enum/enum_store.dart';
import 'package:dartlog/dartlog.dart';
import 'package:package_info_plus/package_info_plus.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'app_device.g.dart';

@Riverpod(keepAlive: true)
AppDevice appDevice(AppDeviceRef ref) =>
    throw UnimplementedError('init with override');

const _defUserAgent = 'KidneySmart/1.0.0/test (test; test)';
const _defAppName = 'KidneySmart';
const _defInstallerStore = 'apk';
const _defBuildNumber = 0;

class AppDevice {
  late final PackageInfo _packageInfo;

  late final String installerStore;
  late final String packageName;
  late final String version;
  late final int buildNumber;
  late final String userAgent;

  Future<void> load() async {
    try {
      _packageInfo = await PackageInfo.fromPlatform();

      installerStore = _packageInfo.installerStore ?? _defInstallerStore;
      // installerStore =  _defInstallerStore;
      packageName = _packageInfo.packageName;
      version = _packageInfo.version;
      buildNumber = int.tryParse(_packageInfo.buildNumber) ?? _defBuildNumber;
      userAgent = await _getAgent();
    } catch (e, s) {
      Logger.error('error AppDevice load', e, s);
    }
  }

  Future<String> _getAgent([String? debugStoreName]) async {
    final storeName = debugStoreName ??
        EnumStore.fromPackageId(
          installerStore,
          fallback: EnumStore.unknown,
        ).name;

    final appAndVersion = '$_defAppName/$version/$storeName';
    final deviceInfo = DeviceInfoPlugin();

    if (Platform.isAndroid) {
      return _getAndroidAgent(deviceInfo, appAndVersion);
    } else if (Platform.isIOS) {
      return _getIosAgent(deviceInfo, appAndVersion);
    } else {
      return _defUserAgent;
    }
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
}
