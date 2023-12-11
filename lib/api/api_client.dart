// ignore_for_file: avoid_dynamic_calls, non_constant_identifier_names

import 'dart:async';

import 'package:collection/collection.dart';

import 'package:dio/dio.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:kidneysmart/api/model/api_check_loan_count_limit_m.dart';
import 'package:kidneysmart/api/model/api_config_insurance_prolongation.dart';
import 'package:kidneysmart/api/model/api_docs_model.dart';
import 'package:kidneysmart/api/model/api_history_notification/api_history_notification.dart';
import 'package:kidneysmart/api/model/api_income_calculation_model.dart';
import 'package:kidneysmart/api/model/auth_api/api_token.dart';
import 'package:kidneysmart/api/model/card_api/api_cards.dart';
import 'package:kidneysmart/api/model/dictonary/api_dictionary.dart';
import 'package:kidneysmart/api/model/documents/api_documents_all.dart';
import 'package:kidneysmart/api/model/loan_api/api_loan.dart';
import 'package:kidneysmart/api/model/payment_api/api_payment_history.dart';
import 'package:kidneysmart/api/model/schedule_installment/api_schedule_installment.dart';
import 'package:kidneysmart/api/model/up_sale_api/api_up_sale.dart';
import 'package:kidneysmart/api/model/user_api/api_user.dart';
import 'package:kidneysmart/api/model/user_api/api_user_auth_info.dart';
import 'package:kidneysmart/api/model/user_api/api_user_loan.dart';
import 'package:kidneysmart/api/model/wp_data/wp_data.dart';
import 'package:kidneysmart/bootstrap.dart';
import 'package:kidneysmart/core/device/about_device.dart';
import 'package:kidneysmart/core/enum/enum_available_product.dart';
import 'package:kidneysmart/core/enum/enum_doc_type.dart';
import 'package:kidneysmart/core/enum/enum_step.dart';
import 'package:kidneysmart/core/exceptions/app_exception.dart';
import 'package:kidneysmart/core/log/logger.dart';
import 'package:kidneysmart/core/network/dio_log/interceptor/dio_log_interceptor.dart';
import 'package:kidneysmart/core/network/network.dart';
import 'package:kidneysmart/core/storage/app_storage.dart';

import 'package:package_info_plus/package_info_plus.dart';

class ApiClient {
  ApiClient({
    required NetworkClient client,
    required AppStorage storage,
  })  : _client = client,
        _storage = storage;
  final AppStorage _storage;
  final NetworkClient _client;

  NetworkClient get net => _client;

  Future<ApiToken> fetchToken({
    required String phone,
    required String password,
  }) async {
    try {
      final response = await _client.request(
        method: Method.post,
        endPoint: '/api/token/get',
        body: <String, dynamic>{
          'login': '7$phone',
          'password': password,
        },
      );

      if (response.statusCode == 200) {
        final result = ApiToken.success(
          TokenSuccess.fromJson(response.data as Map<String, dynamic>),
        );

        await result.whenOrNull(
          success: (v) async {
            await _storage.setUserId(v.id == null ? -1 : v.id!);
            await _storage.setLastStep(v.step ?? '');
            await _storage.setTokenRef(v.refreshToken ?? '');
            await _storage.setToken(v.token ?? '');
            await _storage.setTokenDate(v.ttlDate ?? '');
          },
        );

        return result;
      } else if (response.statusCode == 401) {
        return ApiToken.error(
          TokenError.fromJson(response.data as Map<String, dynamic>),
        );
      }
    } on Object catch (e, stackTrace) {
      Error.throwWithStackTrace(e, stackTrace);
    }

    return ApiToken.error(TokenError());
  }

  Future<ApiUserInfo> fetchUser() async {
    try {
      final id = await _storage.getUserId();
      final response = await _client.request(
        method: Method.get,
        endPoint: '/user/$id',
      );

      if (response.statusCode == 200) {
        final userInfo =
            ApiUserInfo.fromJson(response.data as Map<String, dynamic>);

        await _storage.setApiUserInfo(userInfo);

        return userInfo;
      }
    } on Object catch (e, stackTrace) {
      Error.throwWithStackTrace(e, stackTrace);
    }

    return const ApiUserInfo();
  }

  Future<ApiDocumentsAll> fetchDocAll({
    required int? idActiveLoan,
    int? userId = -1,
  }) async {
    try {
      final response = await _client.request(
        method: Method.post,
        endPoint: '/user/$userId/documents/${EnumDocType.all.value}',
      );

      if (response.statusCode != 200) {
        return const ApiDocumentsAll();
      }

      return ApiDocumentsAll.fromJson(response.data as Map<String, dynamic>);
    } on Object catch (e, stackTrace) {
      // Error.throwWithStackTrace(e, stackTrace);
      logger.e('error fetchDocAll', error: e, stackTrace: stackTrace);
      await AppErrorHandler.recordError(e, stackTrace);
      return const ApiDocumentsAll();
    }
  }

  Future<bool> isSuccessDeleteCard({required int idCard}) async {
    try {
      final response = await _client.request(
        method: Method.post,
        endPoint: '/user/cards/delete',
        body: {'cardId': idCard},
      );

      if (response.statusCode == 200) {
        return true;
      }
    } on Object catch (e, stackTrace) {
      Error.throwWithStackTrace(e, stackTrace);
    }

    return false;
  }

  Future<List<ApiScheduleInstallment>> fetchLoanScheduleNoActiveLoan({
    required int productId,
    required String term,
    required String amount,
  }) async {
    final list = <ApiScheduleInstallment>[];
    try {
      final response = await _client.request(
        method: Method.get,
        endPoint: '/product/$productId/loan-schedule/$term/$amount',
      );
      if (response.statusCode == 200 &&
          response.data.runtimeType == List<dynamic>) {
        for (final i in response.data as List) {
          list.add(ApiScheduleInstallment.fromJson(i as Map<String, dynamic>));
        }
      } else {
        return list;
      }
    } on Object catch (e, stackTrace) {
      Error.throwWithStackTrace(e, stackTrace);
    }

    return list;
  }

  Future<List<ApiScheduleInstallment>> fetchSchedule({
    required int idLoan,
  }) async {
    final list = <ApiScheduleInstallment>[];
    try {
      final response = await _client.request(
        method: Method.get,
        endPoint: 'loan/$idLoan/schedule',
      );

      if (response.statusCode == 200 &&
          response.data.runtimeType == List<dynamic>) {
        for (final i in response.data as List) {
          list.add(
            ApiScheduleInstallment.fromJson(i as Map<String, dynamic>),
          );
        }
      } else {
        return list;
      }
    } on Object catch (e, stackTrace) {
      Error.throwWithStackTrace(e, stackTrace);
    }

    return list;
  }

  Future<Response<dynamic>> fetchProductPrices({
    required int productId,
  }) async {
    try {
      return await _client.request(
        method: Method.get,
        endPoint: '/product/$productId/price',
      );
    } on Object catch (e, stackTrace) {
      Error.throwWithStackTrace(e, stackTrace);
    }
  }

  Future<List<ApiCardItem>> fetchRegistrationCards() async {
    try {
      final response = await _client.request(
        method: Method.get,
        endPoint: '/user/cards/e2c',
      );

      if (response.statusCode == 200) {
        if (response.data['cards'] == null) return [];
        if (response.data['cards'] is! Map<String, dynamic>) return [];

        final result = (response.data['cards'] as Map<String, dynamic>)
            .values
            .map((value) => ApiCardItem.fromJson(value as Map<String, dynamic>))
            .toList();

        unawaited(_storage.setListApiCard(result));
        return result;
      }
    } on Object catch (e, stackTrace) {
      Error.throwWithStackTrace(e, stackTrace);
    }

    return [];
  }

  Future<bool> isActiveLoanDayLimit() async {
    try {
      final id = await _storage.getUserId();
      final response = await _client.request(
        method: Method.get,
        endPoint: '/user/$id/check-loan-count-day-limit',
      );

      if (response.statusCode == 200) {
        return response.data['loan_achieved_limit'] as bool;
      }
    } on Object catch (e, stackTrace) {
      Error.throwWithStackTrace(e, stackTrace);
    }

    return false;
  }

  Future<List<ApiPaymentHistory>> fetchPaymentHistory() async {
    final list = <ApiPaymentHistory>[];
    try {
      final response = await _client.request(
        method: Method.get,
        endPoint: '/payment-history',
      );

      if (response.statusCode == 200) {
        if (response.data.runtimeType == List<dynamic>) {
          for (final i in response.data as List) {
            list.add(ApiPaymentHistory.fromJson(i as Map<String, dynamic>));
          }
        }
      }
    } on Object catch (e, stackTrace) {
      Error.throwWithStackTrace(e, stackTrace);
    }

    return list;
  }

  Future<String> addCard() async {
    try {
      final response = await _client.request(
        method: Method.get,
        endPoint: '/user/add-card-uri/e2c',
      );

      return response.statusCode == 200
          ? response.data['paymentUrl'].toString()
          : '';
    } on Object catch (e, stackTrace) {
      Error.throwWithStackTrace(e, stackTrace);
    }
  }

  Future<bool> isSuccessLoanConfirmation({
    required String code,
    required String idLoan,
    required bool advertising,
    required bool stayTouch,
    required bool collectiveInsurance,
    required bool insuranceProlongation,
  }) async {
    try {
      final response = await _client.request(
        method: Method.post,
        endPoint: '/loan/$idLoan/confirmation',
        body: {
          'code': code,
          'loan_approvals': {
            'tele_medicine': false,
            'advertising': advertising,
            'stay_in_touch': stayTouch,
            'collective_insurance': collectiveInsurance,
            'insurance_prolongation': insuranceProlongation,
          },
        },
      );

      if (response.statusCode == 200) return true;
    } on Object catch (e, stackTrace) {
      Error.throwWithStackTrace(e, stackTrace);
    }

    return false;
  }

  /// PCO confirm new sum
  Future<bool> isSuccessSelectedLoan({
    required num amount,
    required String idLoan,
  }) async {
    try {
      final response = await _client.request(
        method: Method.post,
        endPoint: '/loan/$idLoan/amount-confirmation',
        body: {
          'amount': amount.toInt(),
        },
      );

      if (response.statusCode == 200) return true;
    } on Object catch (e, stackTrace) {
      Error.throwWithStackTrace(e, stackTrace);
    }

    return false;
  }

  Future<ApiUserAuthInfo> fetchUserAuthInfoModel() async {
    try {
      final response = await _client.request(
        method: Method.get,
        endPoint: '/user/authorization-info',
      );

      if (response.statusCode == 200) {
        return ApiUserAuthInfo.fromJson(
          response.data as Map<String, dynamic>,
        );
      }
    } on Object catch (e, stackTrace) {
      Error.throwWithStackTrace(e, stackTrace);
    }

    return const ApiUserAuthInfo();
  }

  Future<void> setCardDefault(int idCard) async {
    try {
      final _ = await _client.request(
        method: Method.post,
        endPoint: '/user/cards/e2c/set-default/$idCard',
      );
    } on Object catch (e, stackTrace) {
      Error.throwWithStackTrace(e, stackTrace);
    }
  }

  Future<void> uploadImage({
    required String path,
    required String fileName,
  }) async {
    try {
      final formData = FormData.fromMap({
        'files': await MultipartFile.fromFile(path, filename: fileName),
      });

      final _ = await _client.request(
        method: Method.post,
        endPoint: '/user/file-upload',
        body: formData,
      );
    } on Object catch (e, stackTrace) {
      Error.throwWithStackTrace(e, stackTrace);
    }
  }


}
