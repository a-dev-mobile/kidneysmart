// ignore_for_file: constant_identifier_names

import 'dart:convert';
import 'package:dartlog/dartlog.dart';
import 'package:kidneysmart/core/models/auth_token.dart';
import 'package:kidneysmart/core/notifier/debug_notifier/debug_notifier.dart';
import 'package:kidneysmart/core/notifier/screen_tracker_notifier/screen_tracker_notifier.dart';
import 'package:kidneysmart/feature/setting/notifier/setting_notifier.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'app_storage.g.dart';

@Riverpod(keepAlive: true)
AppStorage appStorage(AppStorageRef ref) {
  return throw UnimplementedError('init with override');
}

class AppStorage {
  AppStorage({
    required SharedPreferences sharedPreferences,
    bool isShowLog = false,
  })  : _prefs = sharedPreferences,
        _isShowLog = isShowLog;

  final bool _isShowLog;
  final SharedPreferences _prefs;

  // ******************************
  static const _appId = '_appId';

  String? getAppId() {
    return getString(key: _appId);
  }

  void setAppId(String? value) {
    setString(key: _appId, value: value);
  }

  // ******************************
  static const _email = '_email';

  String? getEmail() {
    return getString(key: _email);
  }

  void setEmail(String? value) {
    setString(key: _email, value: value);
  }

  // ******************************
  static const _ScreenTrackerState = '_ScreenTrackerState';

  ScreenTrackerState getScreenTrackerState() {
    return ScreenTrackerState.fromJson(getJson(key: _ScreenTrackerState) ?? {});
  }

  void setScreenTrackerState(ScreenTrackerState value) {
    setJson(key: _ScreenTrackerState, value: value.toJson());
  }

  // ******************************
  static const _debugState = '_debugState';

  DebugState getDebugState() {
    return DebugState.fromJson(getJson(key: _debugState) ?? {});
  }

  void setDebugState(DebugState value) {
    setJson(key: _debugState, value: value.toJson());
  }

  // ******************************
  static const _settingState = '_settingState';

  SettingState getSettingState() {
    return SettingState.fromJson(getJson(key: _settingState) ?? {});
  }

  void setSettingState(SettingState value) {
    setJson(key: _settingState, value: value.toJson());
  }

  // ******************************
  static const _authTokenKey = '_authToken';

  AuthToken? getAuthToken() {
    final json = getJson(key: _authTokenKey);
    if (json != null) {
      return AuthToken.fromJson(json);
    }
    return null;
  }

  void setAuthToken(AuthToken value) {
    setJson(key: _authTokenKey, value: value.toJson());
  }

  // ******************************
  static const _userAgent = 'userAgent';

  String? getUserAgent() {
    return getString(key: _userAgent);
  }

  void setUserAgent(String? value) {
    setString(key: _userAgent, value: value);
  }

  // ******************************
  static const _TargetUrl = '_TargetUrl';

  String? getTargetUrl() {
    return getString(key: _TargetUrl);
  }

  void setTargetUrl(String? value) {
    setString(key: _TargetUrl, value: value);
  }

  // ******************************
  void _log(String action, String key, dynamic value) {
    if (_isShowLog) {
      Logger.debug('$action > $key, Value: $value');
    }
  }

  void setString({required String key, String? value}) {
    try {
      if (value != null) {
        _prefs.setString(key, value);
        _log('SET', key, value);
      } else {
        _prefs.remove(key);
        _log('REMOVE', key, 'null');
      }
    } catch (e, s) {
      Logger.error('SET/REMOVE', e, s);
    }
  }

  String? getString({required String key}) {
    try {
      final value = _prefs.getString(key);
      _log('GET', key, value);
      return value;
    } catch (e, s) {
      Logger.error('GET', e, s);
      return null;
    }
  }

  // Остальные методы класса AppStorage ...

  void setJson({required String key, required Map<String, dynamic> value}) {
    final jsonString = json.encode(value);
    setString(key: key, value: jsonString);
  }

  Map<String, dynamic>? getJson({required String key}) {
    try {
      final jsonString = getString(key: key);
      if (jsonString != null && jsonString.isNotEmpty) {
        return json.decode(jsonString) as Map<String, dynamic>;
      }
    } catch (e, s) {
      Logger.error('Error decoding JSON for key $key:', e, s);
    }
    return null;
  }

  // Остальные методы для работы с SharedPreferences...

  Future<void> clearAll() async {
    try {
      await _prefs.clear();
      _log('CLEAR', 'All Data', 'All data cleared');
    } catch (e, s) {
      Logger.error('Failed to clear all data', e, s);
    }
  }
}
