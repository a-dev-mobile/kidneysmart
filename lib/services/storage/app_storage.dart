// ignore_for_file: avoid_positional_boolean_parameters, constant_identifier_names

import 'dart:convert';


import 'package:kidneysmart/services/app_logger/app_logger.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'app_storage.g.dart';

@riverpod
AppStorage appStorage(AppStorageRef ref) {
  return throw UnimplementedError('init with override');
}

class AppStorage {
  AppStorage({
    required SharedPreferences pref,
    bool isShowLog = false,
  })  : _isShowLog = isShowLog,
        _pref = pref;
  final SharedPreferences _pref;
  final bool _isShowLog;
  static const String _info = '';

  static const String _set = '💾 👇🏻SET';
  static const String _get = '💾 ☝🏻 GET';

// ******************************
  static const _firstStart = '_first_start';

  bool isFirstStart() {
    return getBool(key: _firstStart, defValue: true);
  }

  Future<void> completeFirstStart() {
    return setBool(key: _firstStart, value: false);
  }

// ******************************

// ******************************
  /// SaveString.
  Future<void> setString({required String key, required String value}) async {
    final result = await _pref.setString(key, value);
    if (_isShowLog) {
      log.i('$_set $_info > $key\nvalue = $value\nresult = $result');
    }
  }

  Future<void> setStringList({
    required String key,
    required List<String> value,
  }) async {
    final _ = await _pref.setStringList(key, value);
    if (_isShowLog) {
      log.i('$_set $_info > $key\nvalue = $value');
    }
  }

// ******************************

// ******************************
/*     var resultSave = await repSave.setString(
      key: 'json',
      value: jsonEncode(jsonObject.toJson()),
    ); */

  Future<void> setJson({
    required String key,
    required Map<String, dynamic> value,
  }) async {
    final _ = await _pref.setString(key, jsonEncode(value));
    if (_isShowLog) {
      log.i('$_set $_info > $key\nvalue = $value');
    }
  }

/*
    final fromLocal =
        TestJsonSave.fromJson(jsonDecode(getData) as Map<String, dynamic>);

 */

  /// SaveBool.
  Future<void> setBool({required String key, required bool value}) async {
    final _ = await _pref.setBool(key, value);
    if (_isShowLog) {
      log.i('$_set $_info > $key\nvalue = $value');
    }
  }

  /// SaveDouble.
  Future<void> setDouble({required String key, required double value}) async {
    final _ = await _pref.setDouble(key, value);
    if (_isShowLog) {
      log.i('$_set $_info > $key\nvalue = $value');
    }
  }

  /// SaveInt.
  Future<void> setInt({required String key, required int value}) async {
    final _ = await _pref.setInt(key, value);
    if (_isShowLog) {
      log.i('$_set $_info > $key\nvalue = $value');
    }
  }

  Map<String, dynamic> getJson({
    required String key,
  }) {
    final result =
        jsonDecode(_pref.getString(key) ?? '{}') as Map<String, dynamic>;

    if (_isShowLog) {
      log.i('$_get $_info > $key\nvalue = $result');
    }

    return result;
  }

  /// GetString.
  String getString({
    required String key,
    String defaultValue = '',
  }) {
    final result = _pref.getString(key) ?? defaultValue;
    if (_isShowLog) {
      log.i('$_get $_info > $key\nvalue = $result');
    }

    return result;
  }

  /// GetListString.
  List<String> getStringList({required String key}) {
    final result = _pref.getStringList(key) ?? List.empty();
    if (_isShowLog) {
      log.i('$_get $_info > $key\nvalue = $result');
    }

    return result;
  }

  /// GetInt.
  int getInt({required String key, int defaultValue = 0}) {
    final result = _pref.getInt(key) ?? defaultValue;
    if (_isShowLog) {
      log.i('$_get $_info > $key\nvalue = $result');
    }

    return result;
  }

  /// GetDouble.
  double getDouble({
    required String key,
    double defaultValue = 0,
  }) {
    final result = _pref.getDouble(key) ?? defaultValue;
    if (_isShowLog) {
      log.i('$_get $_info > $key\nvalue = $result');
    }

    return result;
  }

  /// GetBoolData.
  bool getBool({required String key, bool defValue = false}) {
    final result = _pref.getBool(key) ?? defValue;
    if (_isShowLog) {
      log.i('$_get $_info > $key\nvalue = $result');
    }

    return result;
  }

  /// IsNull.
  bool isNull(String key) {
    final val = _pref.get(key);
    bool result;

    // ignore: avoid_bool_literals_in_conditional_expressions
    result = val == null ? true : false;
    if (_isShowLog) {
      log.i(
        '$_get  $_info | isNull \nresult = $result \nkey = $key \nvalue = $val',
      );
    }

    return result;
  }

  /// ClearAll.
  Future<void> clearAll() async {
    final result = await _pref.clear();

    if (_isShowLog) log.i('CLEAR $_info > result = $result');
  }
}
