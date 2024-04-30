import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:flutter/material.dart';
import 'package:dartlog/dartlog.dart';
import 'package:kidneysmart/core/storage/app_storage.dart';
import 'package:path_provider/path_provider.dart';

class VersionCheckService {
  VersionCheckService({required AppStorage storage}) : _storage = storage;

  final AppStorage _storage;

  // Method for checking and updating the version
  Future<void> checkVersionAndUpdateIfNeeded(String currentVersion) async {
    // Get the latest known version from SharedPreferences
    // final lastKnownVersion = await _storage.getLastKnownVersionApp();

    // If this is a new version of the application
    // if (lastKnownVersion.isEmpty || lastKnownVersion != currentVersion) {
    // Remove specific data from SharedPreferences
    // await _clearCertainData();

    // Update version information in SharedPreferences
    // await _storage.setLastKnownVersionApp(currentVersion);
  }
}

// A private method for cleansing certain data
Future<void> _clearCertainData() async {
  try {
    // final token = await _storage.getToken();
    // final tokenDate = await _storage.getTokenDate();
    // final tokenRef = await _storage.getTokenRef();

    // final phone = await _storage.getPhoneNotFormat();
    // final phoneFormat = await _storage.getPhoneFormat();
    // final password = await _storage.getPassword();

    // final pin = await _storage.getPin();
    // final isUseBiometric = await _storage.isUseBiometrics();
    // final debugState = await _storage.getDebugState();
    // final appId = await _storage.getAppId();
    // final userId = await _storage.getUserId();

    // await _storage.clearAll();

    // await _storage.completeFirstStart();
    // await _storage.completeOnboarding();
    // await _storage.setToken(token);
    // await _storage.setTokenDate(tokenDate);
    // await _storage.setTokenRef(tokenRef);
    // await _storage.setPhoneNotFormat(phone);
    // await _storage.setPassword(password);
    // await _storage.setPin(pin);
    // await _storage.setUseBiometrics(isUseBiometric);
    // await _storage.setPhoneFormat(phoneFormat);
    // await _storage.setDebugState(debugState);
    // await _storage.setAppId(appId);
    // await _storage.setUserId(userId);

    // After the authentication data is saved, call for clearing other caches
    await _clearCacheData();
  } on Object catch (e, s) {
    await FirebaseCrashlytics.instance.recordError(
      e,
      s,
      information: ['An error occurred while clearing data'],
    );

    Logger.error('An error occurred while clearing data: $e');
  }
}

// Method for clearing cache files and temporary data
Future<void> _clearCacheData() async {
  try {
    // Clearing the image cache
    PaintingBinding.instance.imageCache.clear();

    // Deleting temporary files
    final tempDir = await getTemporaryDirectory();
    if (tempDir.existsSync()) {
      await tempDir.delete(recursive: true);
    }

    // Здесь можно добавить дополнительные шаги по очистке других видов кэша
    // Например, кэш Firebase, если он используется и кэшируется локально
    final appDir = await getApplicationDocumentsDirectory();
    await appDir.delete(recursive: true);
  } catch (e, s) {
    await FirebaseCrashlytics.instance.recordError(
      e,
      s,
      information: ['An error occurred while clearing cache data'],
    );
    Logger.error('An error occurred while clearing cache data: $e');
  }
}
