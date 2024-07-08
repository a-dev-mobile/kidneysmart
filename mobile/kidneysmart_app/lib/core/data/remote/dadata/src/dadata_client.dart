// ignore_for_file: parameter_assignments

import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:dio_log/interceptor/dio_log_interceptor.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:kidneysmart/core/data/remote/dadata/dadata.dart';
import 'package:kidneysmart/global/dart_define.dart';

final daDataClientProvider = Provider<DaDataClient>((ref) {
  return DaDataClient(apiKey: DartDefineConst.API_KEY_DADATA);
});

class DaDataClient {
  DaDataClient({
    required String apiKey,
  }) : _dio = Dio(
          BaseOptions(
            baseUrl: 'https://suggestions.dadata.ru/',
            connectTimeout: const Duration(seconds: 60),
            receiveTimeout: const Duration(seconds: 50),
            headers: {
              'Authorization': 'Token $apiKey',
              'Content-Type': 'application/json',
            },
          ),
        )..interceptors.addAll([
            DioLogInterceptor(),
          ]);

  final Dio _dio;

  Future<FioTooltip> fetchFioTooltip(String value, DaDataEnum type) async {
    final String typeFio;
    switch (type) {
      case DaDataEnum.name:
        typeFio = 'NAME';
      case DaDataEnum.patronymic:
        typeFio = 'PATRONYMIC';
      case DaDataEnum.surname:
        typeFio = 'SURNAME';
      case DaDataEnum.all:
        typeFio = '';
    }
    final response = await _dio.post<dynamic>(
      'suggestions/api/4_1/rs/suggest/fio',
      data: typeFio.isEmpty
          ? jsonEncode({
              'query': value,
            })
          : jsonEncode({
              'query': value,
              'parts': [typeFio],
            }),
    );

    return FioTooltip.fromMap(response.data as Map<String, dynamic>);
  }
}
