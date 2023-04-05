// ignore_for_file: constant_identifier_names, avoid_positional_boolean_parameters

import 'dart:convert';
// import 'package:universal_io/io.dart';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:nutrition/core/log/log.dart';
import 'package:nutrition/core/services/db/db.dart';
import 'package:nutrition/core/services/navigation/models/app_state.dart';
import 'package:nutrition/core/services/theme/theme_state.dart';
import 'package:nutrition/core/valid/field_string_valid.dart';
import 'package:nutrition/features/debug_menu/provider/debug_state.dart';
import 'package:nutrition/features/health_profile/health_profile.dart';
import 'package:nutrition/features/registration/name/provider/registration_name_provider.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:universal_io/io.dart';

final sharedPreferencesProvider = Provider<SharedPreferences>((ref) {
  throw UnimplementedError();
});

final appStorageServiceProvider = Provider<AppStorageService>((ref) {
  return AppStorageService(
    pref: ref.read(sharedPreferencesProvider),
    isShowLog: true,
  );
});

class AppStorageService {
  AppStorageService({
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
  static const _appState = '_appState';

  AppState getAppState() {
    return AppState.fromMap(getJson(key: _appState));
  }

  Future<void> setAppState(AppState value) {
    return setJson(key: _appState, value: value.toMap());
  }

// ******************************
// ******************************
  static const _genderState = 'genderState';

  GenderModel getGenderState() {
    return GenderModel.fromMap(getJson(key: _genderState));
  }

  Future<void> setGenderState(GenderModel value) {
    return setJson(key: _genderState, value: value.toMap());
  }

// ******************************
// ******************************
  static const _heightState = '_heightState';

  HeightModel getHeightState() {
    return HeightModel.fromMap(getJson(key: _heightState));
  }

  Future<void> setHeightState(HeightModel value) {
    return setJson(key: _heightState, value: value.toMap());
  }

// ******************************
// ******************************
  static const _activityState = '_activityState';

  ActivityModel getActivityState() {
    return ActivityModel.fromMap(getJson(key: _activityState));
  }

  Future<void> setActivityState(ActivityModel value) {
    return setJson(key: _activityState, value: value.toMap());
  }

// ******************************
// ******************************
  static const _weightState = '_weightState';

  WeightModel getWeightState() {
    return WeightModel.fromMap(getJson(key: _weightState));
  }

  Future<void> setWeightState(WeightModel value) {
    return setJson(key: _weightState, value: value.toMap());
  }

// ******************************
// ******************************
  static const _dateBirthdayState = '_dateBirthdayState';

  DateBirthdayModel getDateBirthdayState() {
    return DateBirthdayModel.fromMap(getJson(key: _dateBirthdayState));
  }

  Future<void> setDateBirthdayState(DateBirthdayModel value) {
    return setJson(key: _dateBirthdayState, value: value.toMap());
  }

// ******************************
// ******************************
  static const _registrationNameState = '_registrationNameState';

  RegistrationNameState getRegistrationNameState() {
    return RegistrationNameState.fromMap(getJson(key: _registrationNameState));
  }

  Future<void> setRegistrationNameState(RegistrationNameState value) {
    return setJson(
      key: _registrationNameState,
      value: value
          // что бы при загрузке валидация обнулена
          .copyWith(nameValid: FieldStringValid(value: value.nameValid.value))
          .toMap(),
    );
  }

// ******************************
// ******************************
  static const _healthState = '_healthState';

  HealthProfileState getHealthProfileState() {
    return HealthProfileState.fromMap(getJson(key: _healthState));
  }

  Future<void> setHealthProfileState(HealthProfileState value) {
    return setJson(
      key: _healthState,
      value: value.toMap(),
    );
  }

// ******************************
  static const _themeState = '_themeState';

  ThemeState getThemeState() {
    return ThemeState.fromMap(getJson(key: _themeState));
  }

  Future<void> setThemeState(ThemeState value) {
    return setJson(key: _themeState, value: value.toMap());
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
    return getString(
      key: _locale,
      defaultValue: Platform.localeName.split(RegExp('(_|-)')).first,
    );
  }

  Future<void> setLocale(String locale) {
    return setString(key: _locale, value: locale);
  }

// ******************************
  static const _theme = 'theme';

  String getTheme() {
    return getString(key: _theme);
  }

  Future<void> setTheme(String value) {
    return setString(key: _theme, value: value);
  }

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
  static const _firestoreDbModel = '_firestoreDbModel';

  FireStoreDbModel getFirestoreDbModel() {
    return FireStoreDbModel.fromMap(getJson(key: _firestoreDbModel));
  }

  Future<void> setFirestoreDbModel(FireStoreDbModel value) {
    return setJson(key: _firestoreDbModel, value: value.toMap());
  }

// ******************************
// ******************************
  static const _realtimeDbModel = '_realtimeDbModel';

  RealtimeDbModel getRealtimeDbModel() {
    return RealtimeDbModel.fromMap(getJson(key: _realtimeDbModel));
  }

  Future<void> setRealtimeDbModel(RealtimeDbModel value) {
    return setJson(key: _realtimeDbModel, value: value.toMap());
  }

// ******************************
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
