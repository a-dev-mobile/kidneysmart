// ignore_for_file: constant_identifier_names

import 'dart:convert';
import 'package:kidneysmart/bootstrap.dart';
import 'package:kidneysmart/core/cubits/debug_cubit/debug_cubit.dart';
import 'package:kidneysmart/core/log/logger.dart';
import 'package:kidneysmart/core/service/error_handler/error_handler.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LocalStorage {
  LocalStorage({bool isShowLog = false}) : _isShowLog = isShowLog;
  final bool _isShowLog;
  SharedPreferences? _prefs;
  Future<SharedPreferences> get _preferences async =>
      _prefs ??= await SharedPreferences.getInstance();

//
//
//
//
// ******************************
// ******************************
  static const _appId = '_appId';

  Future<String> getAppId() async {
    return getString(key: _appId);
  }

  Future<void> setAppId(String? value) {
    return setString(key: _appId, value: value ?? '');
  }

// ******************************
// ******************************

  static const _userAgent = 'userAgent';

  Future<String> getUserAgent() async {
    final result = await getString(key: _userAgent);
    return result;
  }

  Future<void> setUserAgent(String? value) {
    return setString(key: _userAgent, value: value ?? '');
  }

// ******************************
// ******************************

  static const _TargetUrl = '_TargetUrl';

  Future<String> getTargetUrl() async {
    final result = await getString(key: _TargetUrl);
    if (result.trim().isEmpty) {
      return 'https://unknow.com?utm_source=organic_mob';
    }
    return result;
  }

  Future<void> setTargetUrl(String? value) {
    return setString(key: _TargetUrl, value: value ?? '');
  }

// ******************************
// ******************************
  static const _debugState = '_debugState';

  Future<DebugState> getDebugState() async {
    return DebugState.fromJson(await getJson(key: _debugState));
  }

  Future<void> setDebugState(DebugState value) {
    return setJson(key: _debugState, value: value.toJson());
  }

// ******************************
// ******************************
//
//
//
  Future<void> _log(
    String action,
    String key,
    dynamic value, [
    dynamic error,
  ]) async {
    if (_isShowLog) {
      final errorMsg = error != null ? ', Error: $error' : '';
      log.i('$action > $key, Value: $value$errorMsg');
    }
  }

  Future<void> setString({required String key, required String value}) async {
    final pref = await _preferences;
    try {
      await pref.setString(key, value);
      await _log('SET', key, value);
    } on Object catch (e, stackTrace) {
      await ErrorHandler.instance.recordError(e, stackTrace);
      await _log('SET', key, value, e);
      await pref.remove(key);
      try {
        await pref.setString(key, value);
      } on Object catch (e, stackTrace) {
        await ErrorHandler.instance.recordError(e, stackTrace);
        await _log('SET RETRY', key, value, e);
      }
    }
  }

  Future<String> getString({
    required String key,
    String defaultValue = '',
  }) async {
    final pref = await _preferences;
    try {
      final result = pref.getString(key) ?? defaultValue;
      await _log('GET', key, result);
      return result;
    } on Object catch (e, stackTrace) {
      await ErrorHandler.instance.recordError(e, stackTrace);
      await _log('GET', key, defaultValue, e);
      return defaultValue;
    }
  }

  Future<void> setBool({required String key, required bool value}) async {
    final pref = await _preferences;
    try {
      await pref.setBool(key, value);
      await _log('SET', key, value);
    } on Object catch (e, stackTrace) {
      await ErrorHandler.instance.recordError(e, stackTrace);
      await _log('SET', key, value, e);
      await pref.remove(key);
      try {
        await pref.setBool(key, value);
      } on Object catch (e, stackTrace) {
        await ErrorHandler.instance.recordError(e, stackTrace);
        await _log('SET RETRY', key, value, e);
      }
    }
  }

  Future<bool> getBool({required String key, bool defaultValue = false}) async {
    final pref = await _preferences;
    try {
      final result = pref.getBool(key) ?? defaultValue;
      await _log('GET', key, result);
      return result;
    } on Object catch (e, stackTrace) {
      await ErrorHandler.instance.recordError(e, stackTrace);
      await _log('GET', key, defaultValue, e);
      return defaultValue;
    }
  }

  Future<void> setInt({required String key, required int value}) async {
    final pref = await _preferences;
    try {
      await pref.setInt(key, value);
      await _log('SET', key, value);
    } on Object catch (e, stackTrace) {
      await ErrorHandler.instance.recordError(e, stackTrace);
      await _log('SET', key, value, e);
      await pref.remove(key);
      try {
        await pref.setInt(key, value);
      } on Object catch (e, stackTrace) {
        await ErrorHandler.instance.recordError(e, stackTrace);
        await _log('SET RETRY', key, value, e);
      }
    }
  }

  Future<int> getInt({required String key, int defaultValue = 0}) async {
    final pref = await _preferences;
    try {
      final result = pref.getInt(key) ?? defaultValue;
      await _log('GET', key, result);
      return result;
    } on Object catch (e, stackTrace) {
      await ErrorHandler.instance.recordError(e, stackTrace);
      await _log('GET', key, defaultValue, e);
      return defaultValue;
    }
  }

  Future<void> setDouble({required String key, required double value}) async {
    final pref = await _preferences;
    try {
      await pref.setDouble(key, value);
      await _log('SET', key, value);
    } on Object catch (e, stackTrace) {
      await ErrorHandler.instance.recordError(e, stackTrace);
      await _log('SET', key, value, e);
      await pref.remove(key);
      try {
        await pref.setDouble(key, value);
      } on Object catch (e, stackTrace) {
        await ErrorHandler.instance.recordError(e, stackTrace);
        await _log('SET RETRY', key, value, e);
      }
    }
  }

  Future<double> getDouble({
    required String key,
    double defaultValue = 0.0,
  }) async {
    final pref = await _preferences;
    try {
      final result = pref.getDouble(key) ?? defaultValue;
      await _log('GET', key, result);
      return result;
    } on Object catch (e, stackTrace) {
      await ErrorHandler.instance.recordError(e, stackTrace);
      await _log('GET', key, defaultValue, e);
      return defaultValue;
    }
  }

  Future<void> setStringList({
    required String key,
    required List<String> value,
  }) async {
    final pref = await _preferences;
    try {
      await pref.setStringList(key, value);
      await _log('SET', key, value);
    } on Object catch (e, stackTrace) {
      await ErrorHandler.instance.recordError(e, stackTrace);
      await _log('SET', key, value, e);
      await pref.remove(key);
      try {
        await pref.setStringList(key, value);
      } on Object catch (e, stackTrace) {
        await ErrorHandler.instance.recordError(e, stackTrace);
        await _log('SET RETRY', key, value, e);
      }
    }
  }

  Future<List<String>> getStringList({required String key}) async {
    final pref = await _preferences;
    try {
      final result = pref.getStringList(key) ?? [];
      await _log('GET', key, result);
      return result;
    } on Object catch (e, stackTrace) {
      await ErrorHandler.instance.recordError(e, stackTrace);
      await _log('GET', key, '[]', e);
      return [];
    }
  }

  Future<void> setJson({
    required String key,
    required Map<String, dynamic> value,
  }) async {
    final jsonString = json.encode(value);
    await setString(key: key, value: jsonString);
  }

  Future<Map<String, dynamic>> getJson({required String key}) async {
    final jsonString = await getString(key: key, defaultValue: '{}');
    return json.decode(jsonString) as Map<String, dynamic>;
  }

  Future<void> clearAll() async {
    final pref = await _preferences;
    try {
      await pref.clear();
      if (_isShowLog) {
        log.i('CLEAR ALL');
      }
    } on Object catch (e, stackTrace) {
      await ErrorHandler.instance.recordError(e, stackTrace);
      if (_isShowLog) {
        log.e('Failed to clear all data:', error: e, stackTrace: stackTrace);
      }
    }
  }
}
