import 'dart:async';
import 'package:dio/dio.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:kidneysmart/enum/enum_http_method.dart';
import 'package:kidneysmart/features/failure_internet/failure_internet.dart';
import 'package:kidneysmart/services/app_logger/app_logger.dart';
import 'package:kidneysmart/services/navigation/app_router.dart';
import 'package:kidneysmart/services/network/dio_log/interceptor/dio_log_interceptor.dart';
import 'package:kidneysmart/services/network/interceptors.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'network_client.g.dart';

@Riverpod(keepAlive: true)
NetworkClient networkClient(NetworkClientRef ref) =>
    throw UnimplementedError('init with override');

class NetworkClient {
  NetworkClient({
    required String baseUrl,
    required AppRouter router,
    required String userAgent,
    Duration connectTimeout = const Duration(seconds: 5),
    Duration receiveTimeout = const Duration(seconds: 15),
  })  : _go = router,
        _dio = Dio(
          BaseOptions(
            baseUrl: baseUrl,
            connectTimeout: connectTimeout,
            receiveTimeout: receiveTimeout,
          ),
        )..interceptors.addAll([
            DioLogInterceptor(),
            ContentTypeInterceptor(),
            AcceptInterceptor(),
            UserAgentInterceptor(userAgent),
          ]);

  final Dio _dio;
  final AppRouter _go;

  // ignore: avoid_setters_without_getters
  set isShowHttpInLog(bool value) => DioLogInterceptor.enablePrintLog = value;

  Future<Response<T>> request<T>({
    required EnumHttpMethod method,
    required String endPoint,
    Map<String, dynamic>? params,
    Options? options,
    dynamic body,
  }) async {
    try {
      switch (method) {
        case EnumHttpMethod.post:
          return await _dio.post<T>(
            endPoint,
            queryParameters: params,
            options: options,
            data: body,
          );
        case EnumHttpMethod.get:
          return await _dio.get<T>(
            endPoint,
            queryParameters: params,
            options: options,
          );
        case EnumHttpMethod.patch:
          return await _dio.patch<T>(
            endPoint,
            queryParameters: params,
            options: options,
            data: body,
          );
      }
    } on DioException catch (e) {
      _handleDioException(e);
      // Return an empty Response<T> in case of an error
      return Response<T>(
        requestOptions: RequestOptions(path: endPoint),
        statusCode: e.response?.statusCode,
      );
    } catch (e, stackTrace) {
      _handleGenericException(e, stackTrace);
      // Re-throw or handle generic exceptions
      return Response<T>(
        requestOptions: RequestOptions(path: endPoint),
      );
    }
  }

  void _handleDioException(DioException e) {
    // Log to Firebase Crashlytics
    FirebaseCrashlytics.instance
        .recordError(e, e.stackTrace, reason: 'Dio error');
    // Log to app logger
    logger.d(
      e.message,
      time: DateTime.now(),
      error: e.error,
      stackTrace: e.stackTrace,
    );
    // Handle specific error types like connection timeouts, HTTP status codes, etc.
    if (e.type == DioExceptionType.connectionTimeout) {
      _showError();
    }
  }

  void _handleGenericException(Object e, StackTrace stackTrace) {
    // Handle non-Dio exceptions
    logger.e('Unhandled error: $e', error: e, stackTrace: stackTrace);
  }

  Future<void> _showError() async {
    // Show error message or navigate to error page
    await Future<void>.delayed(const Duration(seconds: 3));
    _go.router.goNamed(FailureInternet.name);
  }
}
