import 'dart:async';
import 'dart:io';
import 'package:dio/dio.dart';
import 'package:kidneysmart/core/enum/enum_http_method.dart';
import 'package:kidneysmart/core/log/logger.dart';
import 'package:kidneysmart/core/service/network/dio_log/interceptor/dio_log_interceptor.dart';
import 'package:kidneysmart/core/service/network/interceptor/accept_interceptor.dart';
import 'package:kidneysmart/core/service/network/interceptor/content_type_interceptor.dart';
import 'package:kidneysmart/core/service/network/interceptor/user_agent_interceptor.dart';
import 'package:kidneysmart/navigation/navigation.dart';

import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'network_client.g.dart';

@Riverpod(keepAlive: true)
NetworkClient networkClient(NetworkClientRef ref) =>
    throw UnimplementedError('init with override');

class NetworkClient {
  NetworkClient({
    required String baseUrl,
    required Navigation router,
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
  final Navigation _go;

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
      return _handleDioException(e, endPoint);
      // Return an empty Response<T> in case of an error
    } catch (e, stackTrace) {
      return _handleGenericException(e, stackTrace, endPoint);
      // Re-throw or handle generic exceptions
    }
  }

  Response<T> _handleDioException<T>(DioException e, String endPoint) {
    // Report the error to Firebase Crashlytics
    // ErrorHandler()
        // .reportError(e, e.stackTrace, severity: ErrorSeverity.warning);

    // Log the error for debugging purposes
    Logger.debug(
      endPoint,
    
      error: e.error,
      stackTrace: e.stackTrace,
    );

    // Handle specific DioException types
    if (e.type == DioExceptionType.connectionTimeout) {
      // Handle connection timeout
      _showError(); // Or any other appropriate action
    } else if (e.type == DioExceptionType.receiveTimeout) {
      // Handle receive timeout
      _showError(); // Or any other appropriate action
    } else {
      _showError();
    }
    // Return a Response object indicating an error
    return Response<T>(
      requestOptions: RequestOptions(path: endPoint),
      statusCode: e.response?.statusCode,
    );
  }

  Response<T> _handleGenericException<T>(
    Object e,
    StackTrace stackTrace,
    String endPoint,
  ) {
    // Report the error to Firebase Crashlytics
    // ErrorHandler().reportError(e, stackTrace);

    // Log the error for debugging purposes
    Logger.error('Unhandled error: $e', error: e, stackTrace: stackTrace);

    // Perform additional actions based on the type of exception
    if (e is SocketException) {
      // Handle socket exception (like no internet connection)
      _showError(); // Or any other appropriate action
    } else {
      _showError(); // Or any other appropriate action
      // ...
    }

    // Return a Response object indicating an error
    return Response<T>(
      requestOptions: RequestOptions(path: endPoint),
    );
  }

  Future<void> _showError() async {
    // Show error message or navigate to error page
    await Future<void>.delayed(const Duration(seconds: 3));
    // _go.router.goNamed(FailureInternet.name);
  }
}
