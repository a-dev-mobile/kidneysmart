import 'dart:async';

import 'package:dio/dio.dart';
import 'package:dio_log/interceptor/dio_log_interceptor.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:kidneysmart/core/data/remote/network/model/crashlytic_network_model.dart';
import 'package:kidneysmart/core/data/remote/network/network.dart';
import 'package:kidneysmart/core/log/log.dart';

class NetworkClient {
  NetworkClient({
    required String baseUrl,
  }) : _dio = Dio(
          BaseOptions(
            baseUrl: baseUrl,
            connectTimeout: const Duration(seconds: 60),
            receiveTimeout: const Duration(seconds: 50),
          ),
        )..interceptors.addAll([
            DioLogInterceptor(),
            AcceptInterceptor(),
          ]);

  final Dio _dio;
  Dio get dio => _dio;

// ignore: avoid_setters_without_getters
  set isShowHttpInLog(bool value) => DioLogInterceptor.enablePrintLog = value;

  Future<Response<dynamic>> request({
    required Method method,
    required String endPoint,
    Map<String, dynamic>? params,
    Options? options,
    dynamic body,
  }) async {
    try {
      var response = Response<dynamic>(
        requestOptions: RequestOptions(),
      );

      _saveRequestDataToCrashlytic(endPoint, method, options, body);
      if (method == Method.post) {
        response = await dio.post<dynamic>(
          endPoint,
          queryParameters: params,
          options: options,
          data: body,
        );
      } else if (method == Method.get) {
        response = await dio.get<dynamic>(
          endPoint,
          queryParameters: params,
          options: options,
        );
      } else if (method == Method.patch) {
        response = await dio.patch<dynamic>(
          endPoint,
          queryParameters: params,
          options: options,
          data: body,
        );
      }

      return response;
    } on DioError catch (e) {
      logger.d(e.message, e.error, e.stackTrace);

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
}

enum Method {
  post,
  get,
  patch;
}
