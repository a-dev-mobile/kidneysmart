import 'package:dio/dio.dart';
import 'package:dio_log/interceptor/dio_log_interceptor.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:kidneysmart/core/domain/network/network.dart';
import 'package:kidneysmart/core/log/log.dart';

final networkClientProvider = Provider<NetworkClientService>((ref) {
  return NetworkClientService();
});

class NetworkClientService {
  NetworkClientService()
      : _dio = Dio(
          BaseOptions(
            connectTimeout: const Duration(seconds: 60),
            receiveTimeout: const Duration(seconds: 50),
          ),
        )..interceptors.addAll([
            DioLogInterceptor(),
            // NoInternetInterceptor(
            //     _router.router.routerDelegate.navigatorKey.currentContext!),
          ]);

  final Dio _dio;
  Dio get client => _dio;

// ignore: avoid_setters_without_getters
  set isShowHttpInLog(bool value) => DioLogInterceptor.enablePrintLog = value;

  /// Sends an HTTP request using the given method, URL, parameters, headers, and body.
  ///
  /// Returns a Future that completes with the server's response.
  ///
  /// Throws a [DioError] if the request fails.
  Future<Response<T>> request<T>({
    required EnumMethodRequest method,
    required String url,
    Map<String, dynamic>? params,
    Map<String, dynamic>? headers,
    dynamic body,
  }) async {
    try {
      switch (method) {
        case EnumMethodRequest.get:
          return await client.get(
            url,
            queryParameters: params,
            options: Options(headers: headers),
          );
        case EnumMethodRequest.post:
          return await client.post(
            url,
            queryParameters: params,
            options: Options(headers: headers),
            data: body,
          );
        case EnumMethodRequest.patch:
          return await client.patch(
            url,
            queryParameters: params,
            options: Options(headers: headers),
            data: body,
          );
      }
    } on DioError catch (e) {
      logger.e(e.message, e.error, e.stackTrace);
      rethrow;
    } catch (e, stackTrace) {
      logger.e(e, '', stackTrace);
      rethrow;
    }
  }
}
