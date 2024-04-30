import 'package:url_launcher/url_launcher.dart';

class UrlLauncherService {
  /// Launches a given URL in an external application.
  ///
  /// Throws [UrlLauncherException] if the URL is null or launching fails.
  static Future<void> launchExternal(String? urlString) async {
    await _launchUrl(urlString, LaunchMode.externalApplication);
  }

  /// Launches a given URL in an in-app web view.
  ///
  /// Throws [UrlLauncherException] if the URL is null or launching fails.
  static Future<void> launchInApp(String? urlString) async {
    await _launchUrl(urlString, LaunchMode.inAppWebView);
  }

  static Future<void> _launchUrl(
    String? urlString,
    LaunchMode launchMode,
  ) async {
    if (urlString == null) {
      throw UrlLauncherException('URL is null');
    }

    final uri = Uri.tryParse(urlString);
    if (uri == null) {
      throw UrlLauncherException('Invalid URL format: $urlString');
    }

    final canLaunch = await canLaunchUrl(uri);
    if (!canLaunch) {
      throw UrlLauncherException('Cannot launch URL: $urlString');
    }

    final launchSuccess = await launchUrl(
      uri,
      mode: launchMode,
    );

    if (!launchSuccess) {
      throw UrlLauncherException('Failed to launch URL: $urlString');
    }
  }
}

class UrlLauncherException implements Exception {
  UrlLauncherException(this.message);
  final String message;

  @override
  String toString() => 'UrlLauncherException: $message';
}
