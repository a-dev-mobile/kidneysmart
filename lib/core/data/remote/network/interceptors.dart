import 'package:dio/dio.dart';

class UserAgentInterceptor extends InterceptorsWrapper {
  UserAgentInterceptor(this.userAgent);

  final String userAgent;

  @override
  Future<void> onRequest(
    RequestOptions options,
    RequestInterceptorHandler handler,
  ) async {
    options.headers.addAll({'user-agent': userAgent});
    handler.next(options);
  }
}

class AcceptInterceptor extends InterceptorsWrapper {
  @override
  Future<void> onRequest(
    RequestOptions options,
    RequestInterceptorHandler handler,
  ) async {
    options.headers.addAll({
      'accept': '*/*',
      'accept-language': 'ru-RU',
      'connection': 'keep-alive',
    });
    handler.next(options);
  }
}
