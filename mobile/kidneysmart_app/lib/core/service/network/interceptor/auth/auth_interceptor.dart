import 'package:dio/dio.dart';
import 'package:kidneysmart/core/storage/app_storage.dart';

class AuthInterceptor extends Interceptor {
  AuthInterceptor(this._storage);

  final AppStorage _storage;

  // Список конечных точек, для которых не требуется аутентификация
  final List<String> _noAuthEndpoints = [
    '/verify-code',
    '/login',
  ];

  @override
  Future<void> onRequest(
    RequestOptions options,
    RequestInterceptorHandler handler,
  ) async {
    // Проверяем, требуется ли для данного URL аутентификация
    final requiresAuth =
        !_noAuthEndpoints.any((endpoint) => options.path.contains(endpoint));

    if (requiresAuth) {
      // Извлекаем токен из хранилища
      final authToken = _storage.getAuthToken();
      // Добавляем токен в заголовок
      if (authToken != null) {
        options.headers['Authorization'] = 'Bearer ${authToken.accessToken}';
      }
    }

    super.onRequest(options, handler);
  }
}
