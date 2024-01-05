// ignore_for_file: constant_identifier_names

import 'dart:convert';

import 'package:dartlog/dartlog.dart';
import 'package:kidneysmart/core/notifier/debug_notifier/debug_notifier.dart';
import 'package:kidneysmart/feature/setting/notifier/setting_notifier.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'local_storage.g.dart';

@Riverpod(keepAlive: true)
LocalStorage localStorage(LocalStorageRef ref) {
  return throw UnimplementedError('init with override');
}

class LocalStorage {
  LocalStorage({
    required SharedPreferences sharedPreferences,
    bool isShowLog = false,
  })  : _prefs = sharedPreferences,
        _isShowLog = isShowLog;

  final bool _isShowLog;
  final SharedPreferences _prefs;

  // ******************************
  static const _appId = '_appId';

  String getAppId() {
    return getString(key: _appId);
  }

  void setAppId(String? value) {
    setString(key: _appId, value: value ?? '');
  }

// ******************************
  static const _debugState = '_debugState';

  DebugState getDebugState() {
    return DebugState.fromJson(getJson(key: _debugState));
  }

  void setDebugState(DebugState value) {
    return setJson(key: _debugState, value: value.toJson());
  }

// ******************************
// ******************************
// ******************************
  static const _settingState = '_settingState';

  SettingState getSettingState() {
    return SettingState.fromJson(getJson(key: _settingState));
  }

  void setSettingState(SettingState value) {
    return setJson(key: _settingState, value: value.toJson());
  }

// ******************************
// ******************************

  // ******************************
  static const _userAgent = 'userAgent';

  String getUserAgent() {
    return getString(key: _userAgent);
  }

  void setUserAgent(String? value) {
    setString(key: _userAgent, value: value ?? '');
  }

  // ******************************
  static const _TargetUrl = '_TargetUrl';

  String getTargetUrl() {
    return getString(
      key: _TargetUrl,
      defaultValue: 'https://unknow.com?utm_source=organic_mob',
    );
  }

  void setTargetUrl(String? value) {
    setString(key: _TargetUrl, value: value ?? '');
  }

  // ******************************
  void _log(String action, String key, dynamic value) {
    if (_isShowLog) {
      Logger.info('$action > $key, Value: $value');
    }
  }

  void _recordError(
    Object exception,
    StackTrace stackTrace,
    String action,
    String key,
    dynamic value,
  ) {
    Logger.error(
      '$action > $key, Value: $value',
      exception,
      stackTrace,
    );
  }

  void setString({required String key, required String value}) {
    try {
      _prefs.setString(key, value);

      _log('SET', key, value);
    } catch (e, s) {
      _recordError(e, s, 'SET', key, value);
    }
  }

  String getString({required String key, String defaultValue = ''}) {
    try {
      return _prefs.getString(key) ?? defaultValue;
    } catch (e, s) {
      _recordError(e, s, 'GET', key, defaultValue);
      return defaultValue;
    }
  }

  // Continuation of the LocalStorage class

  bool getBool({required String key, bool defaultValue = false}) {
    try {
      return _prefs.getBool(key) ?? defaultValue;
    } catch (e, s) {
      _recordError(
        e,
        s,
        'GET',
        key,
        defaultValue,
      );
      return defaultValue;
    }
  }

  int getInt({required String key, int defaultValue = 0}) {
    try {
      return _prefs.getInt(key) ?? defaultValue;
    } catch (e, s) {
      _recordError(e, s, 'GET', key, defaultValue);
      return defaultValue;
    }
  }

  double getDouble({required String key, double defaultValue = 0.0}) {
    try {
      return _prefs.getDouble(key) ?? defaultValue;
    } catch (e, s) {
      _recordError(e, s, 'GET', key, defaultValue);
      return defaultValue;
    }
  }

  List<String> getStringList({required String key}) {
    try {
      return _prefs.getStringList(key) ?? [];
    } catch (e, s) {
      _recordError(e, s, 'GET', key, []);
      return [];
    }
  }

  void setJson({required String key, required Map<String, dynamic> value}) {
    final jsonString = json.encode(value);
    setString(key: key, value: jsonString);
  }

  Map<String, dynamic> getJson({required String key}) {
    final jsonString = getString(key: key, defaultValue: '{}');
    return json.decode(jsonString) as Map<String, dynamic>;
  }

  void clearAll() {
    try {
      _prefs.clear();
      _log('CLEAR', 'All Data', 'All data cleared');
    } catch (e, s) {
      _recordError(e, s, 'CLEAR', 'All Data', 'Failed to clear all data');
    }
  }
}
