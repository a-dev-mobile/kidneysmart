import 'package:dartlog/dartlog.dart';
import 'package:dio/dio.dart';
import 'package:kidneysmart/core/models/auth_token.dart';
import 'package:kidneysmart/core/service/network/model/req_res_refresh_token.dart';
import 'package:kidneysmart/core/storage/app_storage.dart';

class TokenRefreshInterceptor extends Interceptor {
  TokenRefreshInterceptor(this._dio, this._storage);

  final Dio _dio;
  final AppStorage _storage;

  Future<void> refreshTokenAndRetry(
    RequestOptions requestOptions,
    ErrorInterceptorHandler handler,
  ) async {
    final refreshToken = _storage
        .getAuthToken()
        ?.refreshToken; // Извлекаем refresh token из хранилища

    if (refreshToken != null) {
      try {
        final request = RequestRefreshToken(refreshToken: refreshToken);
        // Отправляем запрос на обновление токена
        final response = await _dio.post<dynamic>(
          'http://192.168.31.22:80/kidneysmart-auth/v1/refresh-token',
          data: request.toJson(),
        );
        if (response.statusCode == 200) {
          final responseModel = ResponseRefreshToken.fromJson(
            response.data as Map<String, dynamic>,
          );
          // Сохраняем новые токены

          final accessToken = responseModel.accessToken;
          final expiresIn = responseModel.expiresIn;
          final refreshToken = responseModel.refreshToken;
          if (accessToken == null ||
              expiresIn == null ||
              refreshToken == null) {
            throw Exception('Authentication token data is incomplete');
          }
          // Метод для сохранения новых токенов в хранилище
          _storage.setAuthToken(
            AuthToken(
              accessToken: accessToken,
              expiresIn: expiresIn,
              refreshToken: refreshToken,
            ),
          );

          // Обновляем токен в исходном запросе и повторяем его
          requestOptions.headers['Authorization'] = 'Bearer $accessToken';
          final repeatResponse = await _dio.fetch<dynamic>(requestOptions);
          // Передаем повторный ответ в следующий обработчик
          handler.resolve(repeatResponse);
          return;
        }
      } catch (e, s) {
        Logger.error('Ошибка при обновлении токена', e, s);
      }
    }

    // Если обновить токен не удалось, вызываем обработчик ошибок
    handler.reject(
      DioException(
        requestOptions: requestOptions,
        error: 'Failed to update the token',
      ),
    );
  }
}
