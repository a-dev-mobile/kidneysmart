// ignore_for_file: avoid_dynamic_calls, non_constant_identifier_names

import 'dart:async';

import 'package:dio/dio.dart';
import 'package:kidneysmart/core/service/network/network.dart';
import 'package:kidneysmart/core/storage/local_storage.dart';

class ApiClient {
  ApiClient({
    required NetworkClient client,
    required LocalStorage storage,
  })  : _client = client,
        _storage = storage;
  final LocalStorage _storage;
  final NetworkClient _client;

  Future<void> uploadImage({
    required String path,
    required String fileName,
  }) async {
    try {
      final formData = FormData.fromMap({
        'files': await MultipartFile.fromFile(path, filename: fileName),
      });

      // final _ = await _client.request(
      // method: Method.post,
      // endPoint: '/user/file-upload',
      // body: formData,
      // );
    } on Object catch (e, stackTrace) {
      Error.throwWithStackTrace(e, stackTrace);
    }
  }
}
