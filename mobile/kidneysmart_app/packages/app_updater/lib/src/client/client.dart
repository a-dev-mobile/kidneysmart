import 'dart:convert';
import 'dart:io';
import 'package:crypto/crypto.dart';
import 'package:dartlog/dartlog.dart';
import 'package:dio/dio.dart';
import 'package:path_provider/path_provider.dart';

import 'package:app_updater/src/models/api_app_update_check_req.dart';
import 'package:app_updater/src/models/api_app_update_check_res.dart';
import 'package:retry/retry.dart';

class AppUpdateClient {
  final String url;
  final Dio dioClient;

  AppUpdateClient({
    required this.url,
    Dio? dio,
  }) : dioClient = dio ?? Dio();

  Future<ApiAppUpdateCheckRes> checkForUpdates(
      ApiAppUpdateCheckReq request) async {
    try {
      final response = await dioClient
          .post(
            url,
            options: Options(headers: {'Content-Type': 'application/json'}),
            data: jsonEncode(request.toJson()),
          )
          .timeout(const Duration(seconds: 30));

      final statusCode = response.statusCode ?? 0;

      if (statusCode >= 200 && statusCode < 300) {
        Logger.info('Update check success: ${response.data}');
        return ApiAppUpdateCheckRes.success(
          ApiAppUpdateCheckResSuccess.fromJson(response.data),
        );
      } else {
        Logger.warning('Non-successful response: ${response.data}');
        return _handleErrorResponse(response);
      }
    } on DioException catch (e) {
      Logger.error('DioException during update check: ${e.message}', e);
      return ApiAppUpdateCheckRes.error(
        ApiAppUpdateCheckResError(
            message: e.message ?? "Unknown error occurred"),
      );
    }
  }

  ApiAppUpdateCheckRes _handleErrorResponse(Response response) {
    Logger.error('Error response: ${response.data}');
    return ApiAppUpdateCheckRes.error(
      ApiAppUpdateCheckResError.fromJson(response.data),
    );
  }

  Future<String> downloadApk(ApiAppUpdateCheckResSuccess updateInfo,
      void Function(int received, int total) onDownloadProgress) async {
    try {
      String downloadUrl = updateInfo.latestVersion?.url ?? '';
      if (downloadUrl.isEmpty) {
        Logger.error('Invalid download URL');
        throw Exception('Invalid download URL');
      }

      Directory directory = await getApplicationDocumentsDirectory();
      String filePath = '${directory.path}/update.apk';
      File file = File(filePath);

      int downloadedSize = await _getDownloadedSize(file);
      int totalSize = updateInfo.latestVersion?.fileSize ?? 0;

      if (downloadedSize >= totalSize) {
        Logger.info('File already downloaded');
        return filePath;
      }

      Logger.info('Starting APK download from $downloadUrl to $filePath');

      final r = RetryOptions(maxAttempts: 5);
      await r.retry(
        () async {
          if (downloadedSize > 0) {
            Logger.info('Resuming download from byte $downloadedSize');
          }
          await dioClient.download(
            downloadUrl,
            filePath,
            onReceiveProgress: (received, total) {
              int totalReceived = downloadedSize + received;
              int totalSize = downloadedSize + total;
              int percentage = ((totalReceived / totalSize) * 100).toInt();
              Logger.debug(
                  'Download progress: $percentage% ($totalReceived bytes of $totalSize bytes)');
              onDownloadProgress(totalReceived, totalSize);
            },
            options: Options(
              headers:
                  downloadedSize > 0 ? {'Range': 'bytes=$downloadedSize-'} : {},
            ),
          );
        },
        retryIf: (e) => e is DioException && e.type != DioExceptionType.cancel,
        onRetry: (e) {
          Logger.warning('Download failed, retrying... Error:', e);
        },
      );

      Logger.info('APK download completed to $filePath');
      return filePath;
    } catch (e) {
      Logger.error('Error during APK download: $e', e);
      rethrow;
    }
  }

  Future<int> _getDownloadedSize(File file) async {
    return await file.exists() ? await file.length() : 0;
  }

  Future<bool> verifyChecksum(String filePath, String expectedChecksum) async {
    try {
      String fileChecksum = await _calculateFileChecksum(filePath);
      return fileChecksum == expectedChecksum;
    } catch (e) {
      Logger.error('Error during checksum verification: $e', e);
      rethrow;
    }
  }

  Future<String> _calculateFileChecksum(String filePath) async {
    File file = File(filePath);
    List<int> fileBytes = await file.readAsBytes();
    Digest digest = sha256.convert(fileBytes);
    return digest.toString();
  }
}
