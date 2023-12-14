// ignore_for_file: avoid_positional_boolean_parameters, constant_identifier_names

import 'dart:convert';

import 'package:kidneysmart/api/model/api_check_loan_count_limit_m.dart';
import 'package:kidneysmart/api/model/card_api/api_cards.dart';
import 'package:kidneysmart/api/model/documents/api_documents_all.dart';
import 'package:kidneysmart/api/model/payment_api/api_payment_history.dart';
import 'package:kidneysmart/api/model/schedule_installment/api_schedule_installment.dart';
import 'package:kidneysmart/api/model/user_api/api_user.dart';
import 'package:kidneysmart/api/model/user_api/api_user_auth_info.dart';
import 'package:kidneysmart/api/model/user_api/api_user_loan.dart';

import 'package:kidneysmart/core/cubits/debug_cubit/debug_cubit.dart';

import 'package:kidneysmart/core/enum/enum_available_product.dart';
import 'package:kidneysmart/core/enum/enum_loan_status.dart';
import 'package:kidneysmart/core/log/logger.dart';


import 'package:shared_preferences/shared_preferences.dart';

class AppStorage {
  AppStorage({
    bool isShowLog = false,
  }) : _isShowLog = isShowLog;
  final bool _isShowLog;
  static const String _info = '';

  static const String _set = '💾 👇🏻SET';
  static const String _get = '💾 ☝🏻 GET';

// ******************************
  static const _firstStart = '_first_start';

  Future<bool> isFirstStart() {
    return getBool(key: _firstStart, defValue: true);
  }

  Future<void> completeFirstStart() {
    return setBool(key: _firstStart, value: false);
  }

// ******************************
// ******************************


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
  static const _authInfoModel = '_authInfoModel';

  Future<ApiUserAuthInfo> getApiUserAuthInfo() async {
    return ApiUserAuthInfo.fromJson(await getJson(key: _authInfoModel));
  }

  Future<void> setApiUserAuthInfo(ApiUserAuthInfo value) {
    return setJson(key: _authInfoModel, value: value.toJson());
  }

// ******************************
  static const _user_info = 'user_info';

  Future<ApiUserInfo> getApiUserInfo() async {
    return ApiUserInfo.fromJson(await getJson(key: _user_info));
  }

  Future<void> setApiUserInfo(ApiUserInfo value) {
    return setJson(key: _user_info, value: value.toJson());
  }

  // ******************************

  static const _loan_count_limit = 'loan_count_limit';

  Future<ApiCheckLoanCountLimit> getLoanCountLimit() async {
    return ApiCheckLoanCountLimit.fromJson(
      await getJson(key: _loan_count_limit),
    );
  }

  Future<void> setLoanCountLimit(ApiCheckLoanCountLimit value) {
    return setJson(key: _loan_count_limit, value: value.toJson());
  }

// ******************************

  // ******************************
  static const _new_card_number = 'new_card_number';

  Future<String> getNewCardNumber() {
    return getString(key: _new_card_number);
  }

  Future<void> setNewCardNumber(String number) {
    return setString(key: _new_card_number, value: number);
  }

// ******************************
// // ******************************
  static const _lastKnownVersionKey = '_lastKnownVersionKey';

  Future<String> getLastKnownVersionApp() {
    return getString(key: _lastKnownVersionKey);
  }

  Future<void> setLastKnownVersionApp(String v) {
    return setString(key: _lastKnownVersionKey, value: v);
  }

// ******************************

  static const _cancellationOfPaidServicesDateTime =
      'cancellation_of_paid_services_date_time';

  Future<String> getCancellationOfPaidServicesDateTime() {
    return getString(key: _cancellationOfPaidServicesDateTime);
  }

  Future<void> setCancellationOfPaidServicesDateTime(String value) {
    return setString(key: _cancellationOfPaidServicesDateTime, value: value);
  }

// ******************************

  static const _locale = 'locale';

  Future<String> getLocale() {
    return getString(key: _locale);
  }

  Future<void> setLocale(String locale) {
    return setString(key: _locale, value: locale);
  }

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
  static const _cards = '_apiCards';

  Future<List<ApiCardItem>> getListApiCard() async {
    final listString = await getStringList(key: _cards);
    final listValue = <ApiCardItem>[];
    for (final i in listString) {
      listValue.add(
        ApiCardItem.fromJson(
          jsonDecode(i) as Map<String, dynamic>,
        ),
      );
    }

    return listValue;
  }

  Future<void> setListApiCard(List<ApiCardItem> value) {
    final listString = <String>[];
    for (final i in value) {
      listString.add(jsonEncode(i.toJson()));
    }

    return setStringList(key: _cards, value: listString);
  }

// ******************************
// ******************************

  static const _apiScheduleInstallment = 'ApiScheduleInstallment';

  Future<List<ApiScheduleInstallment>> getApiScheduleInstallment() async {
    final listString = await getStringList(key: _apiScheduleInstallment);
    final listValue = <ApiScheduleInstallment>[];
    for (final i in listString) {
      listValue.add(
        ApiScheduleInstallment.fromJson(
          jsonDecode(i) as Map<String, dynamic>,
        ),
      );
    }

    return listValue;
  }

  Future<void> setApiScheduleInstallment(
    List<ApiScheduleInstallment> value,
  ) {
    final listString = <String>[];
    for (final i in value) {
      listString.add(jsonEncode(i.toJson()));
    }

    return setStringList(key: _apiScheduleInstallment, value: listString);
  }
// ******************************

  static const _availableProductModel = '_availableProductModel';

  Future<List<EnumAvailableProduct>> getAvailableProductModel() async {
    final listString = await getStringList(key: _availableProductModel);
    final listValue = <EnumAvailableProduct>[];
    for (final i in listString) {
      listValue.add(
        EnumAvailableProduct.fromType(i, fallback: EnumAvailableProduct.payday),
      );
    }

    return listValue;
  }

  Future<void> setAvailableProductModel(List<EnumAvailableProduct> value) {
    final listString = <String>[];
    for (final i in value) {
      listString.add(i.type);
    }

    return setStringList(key: _availableProductModel, value: listString);
  }

// ******************************

// ******************************
// ******************************
  static const _pay_history = '_pay_history';

  Future<List<ApiPaymentHistory>> getApiPayHistory() async {
    final list = await getStringList(key: _pay_history);
    final listCard = <ApiPaymentHistory>[];
    for (final i in list) {
      listCard.add(
        ApiPaymentHistory.fromJson(jsonDecode(i) as Map<String, dynamic>),
      );
    }

    return listCard;
  }

  Future<void> setApiPayHistory(List<ApiPaymentHistory> value) {
    final listString = <String>[];
    for (final i in value) {
      listString.add(jsonEncode(i.toJson()));
    }

    return setStringList(key: _pay_history, value: listString);
  }

// ******************************
// ******************************
  static const _list_loan = '_list_loan';

  Future<List<ApiUserLoan>> getApiUserLoanHistory() async {
    final listRaw = await getStringList(key: _list_loan);
    final list = <ApiUserLoan>[];
    for (final i in listRaw) {
      list.add(ApiUserLoan.fromJson(jsonDecode(i) as Map<String, dynamic>));
    }

    return list;
  }

  Future<void> setApiUserLoanHistory(List<ApiUserLoan> value) {
    final listString = <String>[];
    for (final i in value) {
      listString.add(jsonEncode(i.toJson()));
    }

    return setStringList(key: _list_loan, value: listString);
  }

// ******************************
// ******************************

  static const _doc_all2 = '_doc_all2';

  Future<ApiDocumentsAll> getApiDocAll() async {
    return ApiDocumentsAll.fromJson(await getJson(key: _doc_all2));
  }

  Future<void> setApiDocAll(ApiDocumentsAll value) {
    return setJson(key: _doc_all2, value: value.toJson());
  }

// ******************************
  static const _user_loan = 'user_loan';

  Future<ApiUserLoan> getApiUserLoan() async {
    return ApiUserLoan.fromJson(await getJson(key: _user_loan));
  }

  Future<void> setApiUserLoan(ApiUserLoan value) {
    return setJson(key: _user_loan, value: value.toJson());
  }

// ******************************
// ******************************
  static const _addressStepState = '_addressStepState';

  static const _isSendData = '_isSendData';

  Future<bool> isSendData() {
    return getBool(key: _isSendData);
  }

  Future<void> setSendData({required bool value}) {
    return setBool(key: _isSendData, value: value);
  }

// ******************************

  static const _completeOnboarding = 'completed_onboarding';

  Future<bool> isOnboardingCompleted() {
    return getBool(key: _completeOnboarding);
  }

  Future<void> completeOnboarding() {
    return setBool(key: _completeOnboarding, value: true);
  }

// ******************************
  static const _testUser = 'amigo';

  Future<bool> isTestUser() {
    return getBool(key: _testUser);
  }

  Future<void> setTestUser(bool value) {
    return setBool(key: _testUser, value: value);
  }

// ******************************

// ******************************
  static const _showRateApp = '_showRateApp';

  Future<bool> isShowRateApp() {
    return getBool(key: _showRateApp, defValue: true);
  }

  Future<void> setOffShowRateApp() {
    return setBool(key: _showRateApp, value: false);
  }

  Future<void> setOnShowRateApp() {
    return setBool(key: _showRateApp, value: true);
  }

// ******************************
  static const _msg_reset = 'msg_reset_password';

  Future<bool> getMsgShowResetPassword() async {
    final result = await getBool(key: _msg_reset);
    final _ = await setMsgShowResetPassword(false);

    return result;
  }

  Future<void> setMsgShowResetPassword(bool value) {
    return setBool(key: _msg_reset, value: value);
  }

// ******************************
  static const _msg_show_phone_change = '_msg_show_phone_change';

  Future<bool> getMsgShowPhoneChange() async {
    final result = await getBool(key: _msg_show_phone_change);
    final _ = await setMsgShowPhoneChange(false);

    return result;
  }

  Future<void> setMsgShowPhoneChange(bool value) {
    return setBool(key: _msg_show_phone_change, value: value);
  }

// ******************************
  static const _msg_is_exist = '_msg_is_exist';

  Future<bool> getMsgShowUserExist() async {
    final result = await getBool(key: _msg_is_exist);
    final _ = await setMsgShowUserExist(false);

    return result;
  }

  Future<void> setMsgShowUserExist(bool value) {
    return setBool(key: _msg_is_exist, value: value);
  }

// ******************************
  static const _reset_password = '_reset_password';

  Future<bool> isResetPassword() {
    return getBool(key: _reset_password);
  }

  Future<void> setResetPassword(bool value) {
    return setBool(key: _reset_password, value: value);
  }

// ******************************
  static const _is_use_biometrics = '_is_use_biometrics';

  Future<bool> isUseBiometrics() {
    return getBool(key: _is_use_biometrics);
  }

  Future<void> setUseBiometrics(bool value) {
    return setBool(key: _is_use_biometrics, value: value);
  }

// ******************************

// ******************************
  static const _isHaveBiometric = '_is_have_biometric';

  Future<bool> isHaveBiometric() {
    return getBool(key: _isHaveBiometric);
  }

  Future<void> setIsHaveBiometric(bool value) {
    return setBool(key: _isHaveBiometric, value: value);
  }

// ******************************
  static const _phoneUnFormat = 'phone_un';

  Future<String> getPhoneNotFormat() async {
    var phone = await getString(key: _phoneUnFormat);
    if (phone.isEmpty) return phone;

    if (phone[0] == '7') {
      phone = phone.substring(1);
    }

    return phone;
  }

  Future<void> setPhoneNotFormat(String value) {
    return setString(key: _phoneUnFormat, value: value);
  } // ******************************

  static const _last_screen = '_last_screen';

  Future<String?> getLastScreen() async {
    final value = await getString(key: _last_screen);
    return value.isEmpty ? null : value;
  }

  Future<void> setLastScreen(String value) {
    return setString(key: _last_screen, value: value);
  }

// ******************************
// ******************************

  static const _last_step = 'last_step';

  Future<String?> getLastStep() async {
    final value = await getString(key: _last_step);
    return value.isEmpty ? null : value;
  }

  Future<void> setLastStep(String value) {
    return setString(key: _last_step, value: value);
  }

// ******************************

  static const _common_error = '_common_error';

  Future<String> getError() async {
    final result = await getString(key: _common_error);
    await setError('');

    return result;
  }

  Future<void> setError(String value) async {
    final _ = await setString(key: _common_error, value: value);
  }

// ******************************
  static const _temp_url = 'temp_url';

  Future<String> getUrlPlaymed() {
    return getString(key: _temp_url);
  }

  Future<void> setUrlPlaymed(String value) {
    return setString(key: _temp_url, value: value);
  }

// ******************************

  static const _promo = 'promo';

  Future<String> getPromo() {
    return getString(key: _promo);
  }

  Future<void> setPromo(String value) {
    return setString(key: _promo, value: value);
  }

// ******************************
  static const _promo_temp = 'promo_temp';

  Future<String> getPromoTemp() {
    return getString(key: _promo_temp);
  }

  Future<void> setPromoTemp(String value) {
    return setString(key: _promo_temp, value: value);
  }

// ******************************
  static const _token = '_token';

  Future<String> getToken() {
    return getString(key: _token);
  }

  Future<void> setToken(String? value) {
    return setString(key: _token, value: value ?? '');
  }

// ******************************
  static const _code = '_code';

  Future<String> getDebugCode() async {
    final code = getString(key: _code);
    final _ = await setString(key: _code, value: '');

    return code;
  }

  Future<void> setDebugCode(String value) {
    return setString(key: _code, value: value);
  }

// ******************************
  static const _ttl_date = 'ttl';

  Future<String> getTokenDate() {
    return getString(key: _ttl_date);
  }

  Future<void> setTokenDate(String value) {
    final date = value.replaceAll('T', ' ').split('+').first;
    return setString(key: _ttl_date, value: date);
  }

// ******************************

  static const _token_ref = '_token_ref';

  Future<String> getTokenRef() {
    return getString(key: _token_ref);
  }

  Future<void> setTokenRef(String? value) {
    return setString(key: _token_ref, value: value ?? '');
  }

// ******************************

  static const _phoneFormat = 'phone_format';

  Future<String> getPhoneFormat() {
    return getString(key: _phoneFormat);
  }

  Future<void> setPhoneFormat(String value) {
    return setString(key: _phoneFormat, value: value);
  }

// ******************************
  static const _pin = 'year';

  Future<String> getPin() {
    return getString(key: _pin);
  }

  Future<void> setPin(String value) {
    return setString(key: _pin, value: value);
  }

// ******************************
  static const _password = 'idloan';

  Future<String> getPassword() {
    return getString(key: _password);
  }

  Future<void> setPassword(String value) {
    return setString(key: _password, value: value);
  }

// ******************************

  static const _index_amount = 'index_amount';

  Future<int> getIndexAmount() {
    // 9 = 100000р
    return getInt(key: _index_amount, defaultValue: 9);
  }

  Future<void> setIndexAmount(int value) {
    return setInt(key: _index_amount, value: value);
  }

// ******************************

  static const _percent = 'percent';

  Future<double> getPercent() => getDouble(key: _percent);

  Future<void> setPercent(double value) =>
      setDouble(key: _percent, value: value);

// ******************************

  static const _sms_requests = 'number_requests';

  Future<int> getSmsRequests() {
    return getInt(key: _sms_requests);
  }

  Future<void> setSmsRequests(int value) {
    return setInt(key: _sms_requests, value: value);
  }

// ******************************

  static const _set_test_status = '_set_test_status';

  Future<EnumLoanStatus> getEnumLoanStatusTest() async {
    final result = await getInt(
      key: _set_test_status,
      defaultValue: EnumLoanStatus.unknown.id,
    );

    final _ = await setEnumLoanStatusTest(null);

    if (result == EnumLoanStatus.unknown.id) return EnumLoanStatus.unknown;

    return EnumLoanStatus.fromId(result);
  }

  Future<void> setEnumLoanStatusTest(EnumLoanStatus? value) {
    return setInt(
      key: _set_test_status,
      value: value?.id ?? EnumLoanStatus.unknown.id,
    );
  }

// ******************************

// ******************************

  static const _active_available_product = 'active_available_product';

  Future<EnumAvailableProduct> getEnumActiveAvailableProduct() async {
    final result = await getInt(
      key: _active_available_product,
      defaultValue: EnumAvailableProduct.payday.id,
    );

    return EnumAvailableProduct.fromId(result);
  }

  Future<void> setEnumActiveAvailableProduct(EnumAvailableProduct? value) {
    return setInt(
      key: _active_available_product,
      value: value?.id ?? EnumAvailableProduct.payday.id,
    );
  }

// ******************************
  static const _index_day = 'index_day';

  Future<int> getIndexDay() {
    return getInt(key: _index_day);
  }

  Future<void> setIndexDay(int value) {
    return setInt(key: _index_day, value: value);
  }

// ******************************

  static const _user_id = 'user_id';

  Future<int?> getUserId() async {
    try {
      final userId = await getObject(key: _user_id);
      // миграция от старой версии
      if (userId is String) {
        final parsedUserId = int.tryParse(userId);
        return (parsedUserId != null && parsedUserId > 0) ? parsedUserId : null;
      } else if (userId is int) {
        return userId > 0 ? userId : null;
      } else {
        return null;
      }
    } on Object catch (e, stackTrace) {
      logger.e('error getUserId', error: e, stackTrace: stackTrace);
      return null;
    }
  }

  Future<void> setUserId(int? value) {
    return setInt(key: _user_id, value: value ?? 0);
  }

// ******************************
  static const _principal = 'principal';

  Future<String> getPrincipal() {
    return getString(key: _principal, defaultValue: '0');
  }

  Future<void> setPrincipal(String value) {
    return setString(key: _principal, value: value);
  }

// ******************************
  static const _principal_without = 'principal_no_discont';

  Future<String> getPrincipalNoDiscont() {
    return getString(key: _principal_without);
  }

  Future<void> setPrincipalNoDiscont(String value) {
    return setString(key: _principal_without, value: value);
  }

// ******************************
  static const _prev_principal = 'prev_principal';

  Future<String> getPrevPrincipal() {
    return getString(key: _prev_principal);
  }

  Future<void> setPrevPrincipal(String value) {
    return setString(key: _prev_principal, value: value);
  }

  // ******************************
  static const _prev_commission_fee = 'prev_commission_fee';

  Future<String> getPrevCommissionFee() {
    return getString(key: _prev_commission_fee);
  }

  Future<void> setPrevCommissionFee(String value) {
    return setString(key: _prev_commission_fee, value: value);
  }

// ******************************
  static const _commissionFee = 'commission_fee';

  Future<String> getLoanRequestCommissionFee() {
    return getString(key: _commissionFee);
  }

  Future<void> setLoanRequestCommissionFee(String value) {
    return setString(key: _commissionFee, value: value);
  }

// ******************************

  static const _amount = 'amount';

  Future<String> getAmount() {
    return getString(key: _amount, defaultValue: '0');
  }

  Future<void> setAmount(String value) {
    return setString(key: _amount, value: value);
  }

// ******************************
  static const _date = 'date';

  Future<String> getLoanRequesDate() {
    return getString(key: _date);
  }

  Future<void> setLoanRequestDate(String value) {
    return setString(key: _date, value: value);
  }

// ******************************
// ******************************
  static const _day = 'day';

  Future<String> getDay() {
    return getString(key: _day, defaultValue: '0');
  }

  Future<void> setDay(String value) {
    return setString(key: _day, value: value);
  }

// ******************************
// ******************************
  static const _notificationsIdentities = 'notifications_identities';

  Future<Set<int>> getPreviousNotificationsIdentities() async {
    final stringList = await getStringList(key: _notificationsIdentities);
    return stringList.map(int.parse).toSet();
  }

  Future<void> setPreviousNotificationsIdentities(Set<int> value) {
    return setStringList(
      key: _notificationsIdentities,
      value: value.map((e) => e.toString()).toList(),
    );
  }

// ******************************

// ******************************
  /// SaveString.
  Future<void> setString({required String key, required String value}) async {
    final pref = await SharedPreferences.getInstance();
    final result = await pref.setString(key, value);
    if (_isShowLog) {
      log.i('$_set $_info > $key\nvalue = $value\nresult = $result');
    }
  }

  Future<void> setStringList({
    required String key,
    required List<String> value,
  }) async {
    final pref = await SharedPreferences.getInstance();
    final _ = await pref.setStringList(key, value);
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
    final pref = await SharedPreferences.getInstance();
    final _ = await pref.setString(key, jsonEncode(value));
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
    final pref = await SharedPreferences.getInstance();
    final _ = await pref.setBool(key, value);
    if (_isShowLog) {
      log.i('$_set $_info > $key\nvalue = $value');
    }
  }

  /// SaveDouble.
  Future<void> setDouble({required String key, required double value}) async {
    final pref = await SharedPreferences.getInstance();
    final _ = await pref.setDouble(key, value);
    if (_isShowLog) {
      log.i('$_set $_info > $key\nvalue = $value');
    }
  }

  /// SaveInt.
  Future<void> setInt({required String key, required int value}) async {
    final pref = await SharedPreferences.getInstance();
    final _ = await pref.setInt(key, value);
    if (_isShowLog) {
      log.i('$_set $_info > $key\nvalue = $value');
    }
  }

  Future<Map<String, dynamic>> getJson({
    required String key,
  }) async {
    final pref = await SharedPreferences.getInstance();
    final result =
        jsonDecode(pref.getString(key) ?? '{}') as Map<String, dynamic>;

    if (_isShowLog) {
      log.i('$_get $_info > $key\nvalue = $result');
    }

    return result;
  }

  /// GetString.
  Future<String> getString({
    required String key,
    String defaultValue = '',
  }) async {
    final pref = await SharedPreferences.getInstance();
    final result = pref.getString(key) ?? defaultValue;
    if (_isShowLog) {
      log.i('$_get $_info > $key\nvalue = $result');
    }

    return result;
  }

  Future<Object?> getObject({
    required String key,
  }) async {
    final pref = await SharedPreferences.getInstance();
    final result = pref.get(key);
    if (_isShowLog) {
      log.i('$_get $_info > $key\nvalue = $result');
    }

    return result;
  }

  /// GetListString.
  Future<List<String>> getStringList({required String key}) async {
    final pref = await SharedPreferences.getInstance();
    final result = pref.getStringList(key) ?? List.empty();
    if (_isShowLog) {
      log.i('$_get $_info > $key\nvalue = $result');
    }

    return result;
  }

  /// GetInt.
  Future<int> getInt({required String key, int defaultValue = 0}) async {
    final pref = await SharedPreferences.getInstance();
    final result = pref.getInt(key) ?? defaultValue;
    if (_isShowLog) {
      log.i('$_get $_info > $key\nvalue = $result');
    }

    return result;
  }

  /// GetDouble.
  Future<double> getDouble({
    required String key,
    double defaultValue = 0,
  }) async {
    final pref = await SharedPreferences.getInstance();
    final result = pref.getDouble(key) ?? defaultValue;
    if (_isShowLog) {
      log.i('$_get $_info > $key\nvalue = $result');
    }

    return result;
  }

  /// GetBoolData.
  Future<bool> getBool({required String key, bool defValue = false}) async {
    final pref = await SharedPreferences.getInstance();
    final result = pref.getBool(key) ?? defValue;
    if (_isShowLog) {
      log.i('$_get $_info > $key\nvalue = $result');
    }

    return result;
  }

  /// IsNull.
  Future<bool> isNull(String key) async {
    final pref = await SharedPreferences.getInstance();
    final val = pref.get(key);
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
    final pref = await SharedPreferences.getInstance();
    final result = await pref.clear();

    if (_isShowLog) log.i('CLEAR $_info > result = $result');
  }
}
