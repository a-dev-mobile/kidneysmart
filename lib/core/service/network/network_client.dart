import 'dart:async';

import 'package:dio/dio.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:kidneysmart/core/log/logger.dart';
import 'package:kidneysmart/core/service/network/dio_log/interceptor/dio_log_interceptor.dart';
import 'package:kidneysmart/core/service/network/interceptor/fcm_token_interceptor.dart';
import 'package:kidneysmart/core/service/network/network.dart';
import 'package:kidneysmart/core/storage/local_storage.dart';
import 'package:kidneysmart/core/utils/utils.dart';
import 'package:kidneysmart/core/widgets/app_error_widget.dart';
import 'package:kidneysmart/navigation/app_router.dart';

class NetworkClient {
  NetworkClient({
    required String baseUrl,
    required LocalStorage storage,
    required AppRouter router,
    required String userAgent,
    required String? fcmToken,
  })  : _go = router,
        _storage = storage,
        _userAgent = userAgent,
        _dio = Dio(
          BaseOptions(
            baseUrl: baseUrl,
            connectTimeout: const Duration(seconds: 20),
            receiveTimeout: const Duration(seconds: 25),
          ),
        )..interceptors.addAll([
            DioLogInterceptor(),
            // ContentTypeInterceptor(),
            // AcceptInterceptor(),
            // UserAgentInterceptor(userAgent),
            // AuthenticationInterceptor(
            // baseUrl: baseUrl,
            // storage: storage,
            // router: router,
            // userAgent: userAgent,
            // ),
            FCMTokenInterceptor(fcmToken: fcmToken),
          ]);

  final Dio _dio;

  final LocalStorage _storage;
  final String _userAgent;

  Dio get dio => _dio;
  final AppRouter _go;
  // ignore: avoid_setters_without_getters
  set isShowHttpInLog(bool value) => DioLogInterceptor.enablePrintLog = value;

  Future<Response<dynamic>> request({
    required Method method,
    required String endPoint,
    Map<String, dynamic>? params,
    Options? options,
    dynamic body,
  }) async {
    Response<dynamic> response;
    try {
      _saveRequestDataToCrashlytic(endPoint, method, options, body);
      switch (method) {
        case Method.post:
          response = await dio.post<dynamic>(
            endPoint,
            queryParameters: params,
            options: options,
            data: body,
          );

        case Method.get:
          response = await dio.get<dynamic>(
            endPoint,
            queryParameters: params,
            options: options,
          );

        case Method.patch:
          response = await dio.patch<dynamic>(
            endPoint,
            queryParameters: params,
            options: options,
            data: body,
          );
      }

      unawaited(_saveResponseDataToCrashlytic(response.toString()));

      return response;
    } on DioException catch (e) {
      logger.d(e.message, error: e.error, stackTrace: e.stackTrace);
      if (e.type == DioExceptionType.connectionTimeout) {
        unawaited(_showError());
      }
      await FirebaseCrashlytics.instance.recordError(
        e,
        e.stackTrace,
        reason: 'a non-fatal error',
        information: [e.message.toString(), e.response ?? 'empty'],
      );

      return e.response ??
          Response<dynamic>(
            requestOptions: RequestOptions(),
          );
    } on Object catch (e, stackTrace) {
      Error.throwWithStackTrace(e, stackTrace);
    }
  }

  Future<void> _showError() async {
    await Future<void>.delayed(const Duration(seconds: 3));
    _go.router.goNamed(AppErrorWidget.name);
  }

  void _saveRequestDataToCrashlytic(
    String endpoint,
    Method method,
    Options? options,
    dynamic body,
  ) {
    final crashModel = CrashlyticNetworkModel(
      method: method.name,
      options: options.toString(),
      body: body.toString(),
      endpoint: endpoint,
    );

    FirebaseCrashlytics.instance.setCustomKey('request', crashModel.toJson());
  }

  Future<void> _saveResponseDataToCrashlytic(String response) async {
    final split = StringUtils.splitString(response);

    for (var i = 0; split.length > i; i++) {
      await FirebaseCrashlytics.instance.setCustomKey('response_$i', split[i]);
    }
  }
}

enum Method {
  post,
  get,
  patch,
}
