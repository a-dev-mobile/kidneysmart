// ignore_for_file: avoid_dynamic_calls, non_constant_identifier_names

import 'dart:async';
import 'dart:convert';

import 'package:collection/collection.dart';
import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:kidneysmart/enum/enum_http_method.dart';
import 'package:kidneysmart/models/api/app_update/req/api_app_update_check_req.dart';
import 'package:kidneysmart/models/api/app_update/res/api_app_update_check_res.dart';
import 'package:kidneysmart/services/network/network_client.dart';
import 'package:kidneysmart/services/storage/app_storage.dart';
import 'package:package_info_plus/package_info_plus.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'api_client.g.dart';

@Riverpod(keepAlive: true)
ApiClient apiClient(ApiClientRef ref) {
  return throw UnimplementedError('init with override');
}

class ApiClient {
  ApiClient({
    required NetworkClient client,
    required AppStorage storage,
  })  : _client = client,
        _storage = storage;
  final AppStorage _storage;
  final NetworkClient _client;

  NetworkClient get net => _client;

  Future<ApiAppUpdateCheckRes> fetchAppVersion(ApiAppUpdateCheckReq req) async {
    try {
      // Convert the request object to JSON
      final requestBody = req.toJson();

      // Making the POST request with the specified body
      final response = await _client.request<dynamic>(
        method: EnumHttpMethod.post,
        endPoint: '/app-update-api/v1/check',
        body: requestBody,
      );

      // Check if the response is successful and decode it
      if (response.statusCode == 200) {
        final jsonResponse = response.data as Map<String, dynamic>;

        // Determine response type based on the content of the response
        if (jsonResponse.containsKey('updateType')) {
          return ApiAppUpdateCheckRes.success(
            SuccessResponse.fromJson(jsonResponse),
          );
        } else {
          return ApiAppUpdateCheckRes.error(
            ErrorResponse.fromJson(jsonResponse),
          );
        }
      } else {
        // Handle non-200 responses here
        return ApiAppUpdateCheckRes.error(
          ErrorResponse(message: 'Error: ${response.statusCode}'),
        );
      }
    } on Object catch (e, stackTrace) {
      await FirebaseAnalytics.instance.logEvent(
        name: 'fetchAppVersion',
        parameters: {
          'exception': e.toString(),
          'stackTrace': stackTrace.toString(),
        },
      );
      return const ApiAppUpdateCheckRes.error(
        ErrorResponse(),
      );
    }
  }
}
