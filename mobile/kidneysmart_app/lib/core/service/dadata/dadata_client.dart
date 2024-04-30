// ignore_for_file: parameter_assignments

import 'dart:convert';
import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:kidneysmart/core/service/dadata/dadata.dart';
import 'package:kidneysmart/core/service/network/dio_log/interceptor/dio_log_interceptor.dart';

enum DaDataEnum { name, surname, patronymic, all }

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
            // AcceptInterceptor(),
            // UserAgentInterceptor(userAgent),
          ]);

  final Dio _dio;

  Future<AddressTooltip> fetchAddressTooltip(String value) async {
    final response = await _dio.post<dynamic>(
      'suggestions/api/4_1/rs/suggest/address',
      data: jsonEncode({'query': value}),
    );

    return AddressTooltip.fromMap(response.data as Map<String, dynamic>);
  }

  Future<AddressTooltip> fetchCityTips(String value) async {
    final response = await _dio.post<dynamic>(
      'suggestions/api/4_1/rs/suggest/address',
      data: jsonEncode({
        'query': value,
        'count': 10,
        'from_bound': {'value': 'city'},
        'to_bound': {'value': 'settlement'},
        // ignore: inference_failure_on_collection_literal
        'locations': [],
        'restrict_value': true,
      }),
    );

    return AddressTooltip.fromMap(response.data as Map<String, dynamic>);
  }

  Future<AddressTooltip> fetchStreetTips(
    String value, [
    String? fiasId,
  ]) async {
    final response = await _dio.post<dynamic>(
      'suggestions/api/4_1/rs/suggest/address',
      data: jsonEncode({
        'query': value,
        'count': 10,
        'from_bound': {'value': 'street'},
        'to_bound': {'value': 'street'},
        'locations': [
          {'fias_id': fiasId ?? ''},
        ],
        'restrict_value': true,
      }),
    );
    return AddressTooltip.fromMap(response.data as Map<String, dynamic>);
  }

  Future<AddressTooltip> fetchHouseTips(
    String value, [
    String? fiasId,
  ]) async {
    final response = await _dio.post<dynamic>(
      'suggestions/api/4_1/rs/suggest/address',
      data: jsonEncode({
        'query': value,
        'count': 10,
        'from_bound': {'value': 'house'},
        'to_bound': {'value': 'house'},
        'locations': [
          {'fias_id': fiasId ?? ''},
        ],
        'restrict_value': true,
      }),
    );

    return AddressTooltip.fromMap(response.data as Map<String, dynamic>);
  }

  Future<AddressTooltip> fetchAddress({
    String? city,
    String? street,
    String? house,
    String? apartment,
  }) async {
    house = house ?? '';

    city = city ?? '';

    apartment = apartment ?? '';
    street = street ?? '';

    if (apartment.isNotEmpty) {
      apartment = ', кв $apartment';
    }

    street = street.trim().toLowerCase() == 'нет' ? '' : '$street,';
    //
    final search =
        '$city, $street $house$apartment'.replaceAll('  ', ' ').trim();
    log('-- $search');

    final response = await _dio.post<dynamic>(
      'suggestions/api/4_1/rs/suggest/address',
      data: jsonEncode({
        'query': search,
        'count': 10,
        'from_bound': {'value': ''},
        'to_bound': {'value': ''},
        // ignore: inference_failure_on_collection_literal
        'locations': [],
        'restrict_value': true,
      }),
    );

    return AddressTooltip.fromMap(response.data as Map<String, dynamic>);
  }

  Future<AddressTooltip> fetchFioTooltip(String value, DaDataEnum type) async {
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

    return AddressTooltip.fromMap(response.data as Map<String, dynamic>);
  }

  Future<PassportCodeName> fetchPassportTooltip(String value) async {
    final response = await _dio.post<dynamic>(
      'suggestions/api/4_1/rs/suggest/fms_unit',
      data: jsonEncode({
        'query': value,
      }),
    );

    return PassportCodeName.fromJson(response.data as Map<String, dynamic>);
  }

  Future<PassportCodeName> fetchEmailTooltip(String value) async {
    final response = await _dio.post<dynamic>(
      'suggestions/api/4_1/rs/suggest/email',
      data: jsonEncode({'query': value}),
    );

    return PassportCodeName.fromJson(response.data as Map<String, dynamic>);
  }
}
