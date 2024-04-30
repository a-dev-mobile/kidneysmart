import 'package:url_launcher/url_launcher.dart';
import 'package:url_launcher/url_launcher_string.dart';

abstract class AppLaunchUrl {
  static Future<bool> phone(dynamic value) async {
    try {
      if (value != null) {
        final phone = value.toString().replaceAll(RegExp('[^0-9]'), '');

        return launchUrlString('tel:$phone');
      }

      return false;
    } catch (_) {
      return false;
    }
  }

  /// Открывает почтовый клиент для отправки письма.
  static Future<void> email(String? emailAddress) async {
    if (emailAddress == null || emailAddress.isEmpty) {
      return;
    }

    final emailLaunchUri = Uri(
      scheme: 'mailto',
      path: emailAddress,
    );
    await launchUrl(emailLaunchUri);
  }
}
