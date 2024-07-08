// ignore_for_file: constant_identifier_names, avoid_positional_boolean_parameters

import 'dart:convert';
import 'dart:io';

// import 'package:universal_io/io.dart';

import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:kidneysmart/core/app/info/app_state.dart';
import 'package:kidneysmart/core/log/log.dart';
import 'package:kidneysmart/features/debug_menu/provider/debug_state.dart';
import 'package:kidneysmart/features/setting/setting.dart';
import 'package:kidneysmart/features/steps/activity/activity.dart';
import 'package:kidneysmart/features/steps/birthday/birthday.dart';
import 'package:kidneysmart/features/steps/ckd_query/ckd_query.dart';
import 'package:kidneysmart/features/steps/ckd_select/ckd.dart';
import 'package:kidneysmart/features/steps/diabetes/diabetes.dart';
import 'package:kidneysmart/features/steps/dialysiis_query/dialysiis_query.dart';
import 'package:kidneysmart/features/steps/dialysis_type/dialysis_type.dart';
import 'package:kidneysmart/features/steps/gender/gender.dart';
import 'package:kidneysmart/features/steps/gfr/provider/step_gfr_input_state.dart';
import 'package:kidneysmart/features/steps/height/height.dart';
import 'package:kidneysmart/features/steps/hypertension/hypertension.dart';
import 'package:kidneysmart/features/steps/name/name.dart';
import 'package:kidneysmart/features/steps/urine_input/urine_input.dart';
import 'package:kidneysmart/features/steps/urine_select/urine_select.dart';
import 'package:kidneysmart/features/steps/weight/weight.dart';
import 'package:kidneysmart/features/steps/weight_dry_input/weight_dry_input.dart';
import 'package:kidneysmart/features/steps/weight_dry_query/weight_dry_query.dart';
import 'package:shared_preferences/shared_preferences.dart';

final sharedPreferencesProvider = Provider<SharedPreferences>((ref) {
  throw UnimplementedError();
});

final appStorageProvider = Provider<AppStorage>((ref) {
  return AppStorage(
    pref: ref.read(sharedPreferencesProvider),
    isShowLog: true,
  );
});

class AppStorage {
  AppStorage({
    required SharedPreferences pref,
    bool isShowLog = false,
  })  : _isShowLog = isShowLog,
        _pref = pref;

  final SharedPreferences _pref;

  final bool _isShowLog;

  static const String _info = '💾';

  static const String _set = '👇🏻 SET';
  static const String _get = '☝🏻 GET';
// ******************************
// ******************************
  static const _debugState = '_debugState';

  DebugState getDebugState() {
    return DebugState.fromMap(getJson(key: _debugState));
  }

  Future<void> setDebugState(DebugState value) {
    return setJson(key: _debugState, value: value.toMap());
  }

// ******************************
// ******************************

  static const _settingState = '_settingState';

  SettingState getSettingState() {
    return SettingState.fromMap(getJson(key: _settingState));
  }

  Future<void> setSettingState(SettingState value) {
    return setJson(key: _settingState, value: value.toMap());
  }
// ******************************
// ******************************

  static const _weightDryInputState = '_weightDryInputState';

  WeightDryInputState getWeightDryInputState() {
    return WeightDryInputState.fromMap(getJson(key: _weightDryInputState));
  }

  Future<void> setWeightDryInputState(WeightDryInputState value) {
    return setJson(key: _weightDryInputState, value: value.toMap());
  }

// ******************************
// ******************************
  static const _ckdQueryState = '_ckdQueryState';

  CkdQueryState getCkdQueryState() {
    return CkdQueryState.fromMap(getJson(key: _ckdQueryState));
  }

  Future<void> setCkdQueryState(CkdQueryState value) {
    return setJson(key: _ckdQueryState, value: value.toMap());
  }

// ******************************
// ******************************
  static const _dialysisType = '_dialysisType';

  DialysisTypeState getDialysisTypeState() {
    return DialysisTypeState.fromMap(getJson(key: _dialysisType));
  }

  Future<void> setDialysisTypeState(DialysisTypeState value) {
    return setJson(key: _dialysisType, value: value.toMap());
  }
// ******************************
// ******************************

  static const _dialysisQuery = '_dialysisQuery';

  DialysisQueryState getDialysisQueryState() {
    return DialysisQueryState.fromMap(getJson(key: _dialysisQuery));
  }

  Future<void> setDialysisQueryState(DialysisQueryState value) {
    return setJson(key: _dialysisQuery, value: value.toMap());
  }
// ******************************
// ******************************

  static const _weightDryQuery = '_weightDryQuery';

  WeightDryQueryState getWeightDryQueryState() {
    return WeightDryQueryState.fromMap(getJson(key: _weightDryQuery));
  }

  Future<void> setWeightDryQueryState(WeightDryQueryState value) {
    return setJson(key: _weightDryQuery, value: value.toMap());
  }
// ******************************
// ******************************

  static const _stepNameState = 'StepNameState';

  StepNameState getStepNameState() {
    return StepNameState.fromMap(getJson(key: _stepNameState));
  }

  Future<void> setStepNameState(StepNameState value) {
    return setJson(key: _stepNameState, value: value.toMap());
  }

// ******************************
// ******************************
  static const _appState = '_appState';

  AppState getAppState() {
    return AppState.fromMap(getJson(key: _appState));
  }

  Future<void> setAppState(AppState value) {
    return setJson(key: _appState, value: value.toMap());
  }

  // ******************************
// ******************************
  static const _genderState = '_genderState';

  StepGenderState getGenderState() {
    return StepGenderState.fromMap(getJson(key: _genderState));
  }

  Future<void> setGenderState(StepGenderState value) {
    return setJson(key: _genderState, value: value.toMap());
  }

// ******************************
  static const _activityState = '_activityState';

  StepActivityState getActivityState() {
    return StepActivityState.fromMap(getJson(key: _activityState));
  }

  Future<void> setActivityState(StepActivityState value) {
    return setJson(key: _activityState, value: value.toMap());
  }

// ******************************
  static const _hypertensionState = '_hypertensionState';

  HypertensionState getHypertensionState() {
    return HypertensionState.fromMap(getJson(key: _hypertensionState));
  }

  Future<void> setHypertensionState(HypertensionState value) {
    return setJson(key: _hypertensionState, value: value.toMap());
  }

// ******************************
// ******************************
  static const _ckdState = '_ckdState';

  StepCkdSelectState getCkdState() {
    return StepCkdSelectState.fromMap(getJson(key: _ckdState));
  }

  Future<void> setCkdState(StepCkdSelectState value) {
    return setJson(key: _ckdState, value: value.toMap());
  }

// ******************************
  static const _gfrState = '_gfrState';

  StepGfrInputState getGfrState() {
    return StepGfrInputState.fromMap(getJson(key: _gfrState));
  }

  Future<void> setGfrState(StepGfrInputState value) {
    return setJson(key: _gfrState, value: value.toMap());
  }

// ******************************
  static const _dateBirthdayState = '_dateBirthdayState';

  StepBirthdayState getBirthdayState() {
    return StepBirthdayState.fromMap(getJson(key: _dateBirthdayState));
  }

  Future<void> setBirthdayState(StepBirthdayState value) {
    return setJson(key: _dateBirthdayState, value: value.toMap());
  }

// ******************************
  static const _diabetesState = '_diabetesState';

  DiabetesState getDiabetesState() {
    return DiabetesState.fromMap(getJson(key: _diabetesState));
  }

  Future<void> setDiabetesState(DiabetesState value) {
    return setJson(key: _diabetesState, value: value.toMap());
  }

// ******************************
// ******************************
  static const _urineSelectState = '_urineSelectState';

  StepUrineSelectState getUrineSelectState() {
    return StepUrineSelectState.fromMap(getJson(key: _urineSelectState));
  }

  Future<void> setUrineSelectState(StepUrineSelectState value) {
    return setJson(key: _urineSelectState, value: value.toMap());
  }

// ******************************
// ******************************
// ******************************

  static const _urineInputState = '_urineInputState';

  StepUrineInputState getUrineInputState() {
    return StepUrineInputState.fromMap(getJson(key: _urineInputState));
  }

  Future<void> setUrineInputState(StepUrineInputState value) {
    return setJson(key: _urineInputState, value: value.toMap());
  }
// ******************************
// ******************************
  // static const _heightState = '_heightState';

  // HeightModel getHeightState() {
  //   return HeightModel.fromMap(getJson(key: _heightState));
  // }

  // Future<void> setHeightState(HeightModel value) {
  //   return setJson(key: _heightState, value: value.toMap());
  // }

// ******************************
// ******************************
  // static const _activityState = '_activityState';

  // ActivityModel getActivityState() {
  //   return ActivityModel.fromMap(getJson(key: _activityState));
  // }

  // Future<void> setActivityState(ActivityModel value) {
  //   return setJson(key: _activityState, value: value.toMap());
  // }

// ******************************
// ******************************
  // static const _weightState = '_weightState';

  // WeightModel getWeightState() {
  //   return WeightModel.fromMap(getJson(key: _weightState));
  // }

  // Future<void> setWeightState(WeightModel value) {
  //   return setJson(key: _weightState, value: value.toMap());
  // }

// ******************************
// ******************************

// ******************************

// ******************************
  static const _heightState = '_heightState';

  StepHeightState getHeightState() {
    return StepHeightState.fromMap(getJson(key: _heightState));
  }

  Future<void> setHeightState(StepHeightState value) {
    return setJson(
      key: _heightState,
      value: value.toMap(),
    );
  }

// ******************************
  static const _weightState = '_weightState';

  WeightState getWeightState() {
    return WeightState.fromMap(getJson(key: _weightState));
  }

  Future<void> setWeightState(WeightState value) {
    return setJson(
      key: _weightState,
      value: value.toMap(),
    );
  }

// ******************************
  static const _db_patch = '_db_patch';

  String getDbPatch() {
    return getString(key: _db_patch);
  }

  Future<void> setDbPatch(String path) {
    return setString(key: _db_patch, value: path);
  }

// ******************************
  static const _firstStart = '_first_start';
  bool isFirstStart() {
    return getBool(key: _firstStart, defValue: true);
  }

  Future<void> completeFirstStart() {
    return setBool(key: _firstStart, value: false);
  }
// ******************************

  static const _completeOnboarding = 'completed_onboarding';

  bool isOnboardingCompleted() {
    return getBool(key: _completeOnboarding);
  }

  Future<void> completeOnboarding() {
    return setBool(key: _completeOnboarding, value: true);
  }

// ******************************
  static const _locale = 'locale';

  String getLocale() {
    var locale = '';

    final regExpSplit = RegExp('(_|-)');

    const initLocale = 'ru';

    if (kIsWeb) {
      locale = initLocale;
    } else {
      final platformLocale = Platform.localeName;
      locale = platformLocale.split(regExpSplit).first;
    }

    if (locale.isEmpty) {
      locale = initLocale; // Значение по умолчанию, если локаль не определена
      log.v(
        'Локаль не определена. Используется значение по умолчанию "$initLocale".',
      );
    }

    // return locale;

    return getString(
      key: _locale,
      defaultValue: locale,
    );
  }

  Future<void> setLocale(String locale) {
    return setString(key: _locale, value: locale);
  }

// ******************************
  // static const _theme = 'theme';

  // String getTheme() {
  //   return getString(key: _theme);
  // }

  // Future<void> setTheme(String value) {
  //   return setString(key: _theme, value: value);
  // }

// ******************************
// ******************************
  static const _is_update_db = '_is_update_db';

  bool getIsUpdateDB() {
    return getBool(key: _is_update_db, defValue: true);
  }

  Future<void> setIsUpdateDB(bool value) {
    return setBool(key: _is_update_db, value: value);
  }

// ******************************

  static const _db_version = '_db_version';

  int getDbVersion() {
    return getInt(key: _db_version);
  }

  Future<void> setDbVersion(int value) {
    return setInt(key: _db_version, value: value);
  }

// ******************************

  static const _lastSearchList = 'saved_list';

  List<String> getListSearch() {
    return getStringList(key: _lastSearchList);
  }

  void setLastSearch(String v) {
    final value = v.trim();
    final list = getStringList(key: _lastSearchList);

    final growableList = List<String>.empty(growable: true)..addAll(list);

    if (growableList.contains(value)) final _ = growableList.remove(value);

    growableList.add(value);

    setStringList(key: _lastSearchList, value: growableList);
  }
// ******************************

  static const _favoriteList = '_favoriteList';

  List<String> getFavorite() {
    return getStringList(key: _favoriteList);
  }

  void addFavorite(List<String> value) {
    setStringList(key: _favoriteList, value: value);
  }
// ******************************

// ******************************

// ******************************
// ******************************

  static const _categories = 'categories';

  List<String> getSelectedCategories() {
    return getStringList(key: _categories);
  }

  Future<void> setSelectedCategories(List<String> value) {
    return setStringList(key: _categories, value: value);
  }

// ******************************

// ******************************
// ******************************
  /// SaveString.
  Future<void> setString({required String key, required String value}) async {
    final _ = await _pref.setString(key, value);
    if (_isShowLog) {
      _logSetValue(key, value);
    }
  }

  Future<void> setStringList({
    required String key,
    required List<String> value,
  }) async {
    final _ = await _pref.setStringList(key, value);
    if (_isShowLog) {
      _logSetValue(key, value);
    }
  }

  void _logGetValue(String key, dynamic value) {
    log.i({_info: _get, '$_info $key': '$value'});
  }

  void _logSetValue(String key, dynamic value) {
    log.i({_info: _set, '$_info $key': '$value'});
  }

  Future<void> setJson({
    required String key,
    required Map<String, dynamic> value,
  }) async {
    final _ = await _pref.setString(key, jsonEncode(value));
    if (_isShowLog) {
      _logSetValue(key, value);
    }
  }

  /// SaveBool.
  Future<void> setBool({required String key, required bool value}) async {
    final _ = await _pref.setBool(key, value);
    if (_isShowLog) {
      _logSetValue(key, value);
    }
  }

  /// SaveDouble.
  Future<void> setDouble({required String key, required double value}) async {
    final _ = await _pref.setDouble(key, value);
    if (_isShowLog) {
      _logSetValue(key, value);
    }
  }

  /// SaveInt.
  Future<void> setInt({required String key, required int value}) async {
    final _ = await _pref.setInt(key, value);
    if (_isShowLog) {
      _logSetValue(key, value);
    }
  }

  Map<String, dynamic> getJson({
    required String key,
  }) {
    final result =
        jsonDecode(_pref.getString(key) ?? '{}') as Map<String, dynamic>;

    if (_isShowLog) {
      _logGetValue(key, result);
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
      _logGetValue(key, result);
    }

    return result;
  }

  /// GetListString.
  List<String> getStringList({required String key}) {
    final result = _pref.getStringList(key) ?? List.empty();
    if (_isShowLog) {
      _logGetValue(key, result);
    }

    return result;
  }

  /// GetInt.
  int getInt({required String key, int defaultValue = 0}) {
    final result = _pref.getInt(key) ?? defaultValue;
    if (_isShowLog) {
      _logGetValue(key, result);
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
      _logGetValue(key, result);
    }

    return result;
  }

  /// GetBoolData.
  bool getBool({required String key, bool defValue = false}) {
    final result = _pref.getBool(key) ?? defValue;
    if (_isShowLog) {
      _logGetValue(key, result);
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
