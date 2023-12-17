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
import 'package:kidneysmart/core/service/network/dio_log/interceptor/dio_log_interceptor.dart';
import 'package:kidneysmart/core/service/network/network.dart';
import 'package:kidneysmart/core/storage/local_storage.dart';

import 'package:package_info_plus/package_info_plus.dart';

class ApiClient {
  ApiClient({
    required NetworkClient client,
    required LocalStorage storage,
  })  : _client = client,
        _storage = storage;
  final LocalStorage _storage;
  final NetworkClient _client;

  Future<void> uploadImage({
    required String path,
    required String fileName,
  }) async {
    try {
      final formData = FormData.fromMap({
        'files': await MultipartFile.fromFile(path, filename: fileName),
      });

      // final _ = await _client.request(
        // method: Method.post,
        // endPoint: '/user/file-upload',
        // body: formData,
      // );
    } on Object catch (e, stackTrace) {
      Error.throwWithStackTrace(e, stackTrace);
    }
  }
}
