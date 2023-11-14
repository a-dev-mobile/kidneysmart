import 'package:dio/dio.dart';

abstract class BaseInterceptor extends InterceptorsWrapper {
  void addHeaders(
    RequestOptions options,
    Map<String, dynamic> headers,
  ) {
    options.headers.addAll(headers);
  }
}

// Constants
// const _JWT_TOKEN_NOT_FOUND = 'jwt_token_not_found';
// const _JWT_TOKEN_INVALID = 'jwt_token_invalid';
// const _JUST_A_MOMENT = 'just a moment';
// const _ATTENTION_REQUIRED = 'attention required';
// const _ACCESS_DENIED = 'access denied';
// const _RECAPTCHA_REQUIRED = 'recaptcha required';

/// Для пушей отпраявляем нашему бэку fcmToken полученый через FirebaseMessage,
/// что-бы наш бэк мог отправлять пуши
// class FCMTokenInterceptor extends BaseInterceptor {
//   FCMTokenInterceptor({required this.fcmToken});

//   final String? fcmToken;

//   @override
//   void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
//     if (fcmToken != null) {
//       addHeaders(options, {'fcm-token': fcmToken});
//     }
//     handler.next(options);
//   }
// }

/// Для postback отпраявляем нашему бэку appmetricaDeviceToken полученый через AppMetrica
class AppMetricaDeviceIDInterceptor extends BaseInterceptor {
  AppMetricaDeviceIDInterceptor({required this.appMetricaDeviceID});

  final String? appMetricaDeviceID;

  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    if (appMetricaDeviceID != null) {
      addHeaders(options, {'appmetrica-device-id': appMetricaDeviceID});
    }
    handler.next(options);
  }
}

class ContentTypeInterceptor extends InterceptorsWrapper {
  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    if (options.method == 'PATCH' ||
        !options.headers.containsKey('content-type')) {
      options.headers['content-type'] = 'application/json';
    } else if (options.method == 'POST' && options.data is FormData) {
      options.headers['content-type'] = 'image/png';
    }

    handler.next(options);
  }
}

class UserAgentInterceptor extends BaseInterceptor {
  UserAgentInterceptor(this.userAgent);

  final String userAgent;

  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    addHeaders(options, {'user-agent': userAgent});
    handler.next(options);
  }
}

class AcceptInterceptor extends InterceptorsWrapper {
  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    options.headers.addAll({
      'accept': '*/*',
      'accept-language': 'ru-RU',
      'connection': 'keep-alive',
    });
    handler.next(options);
  }
}
