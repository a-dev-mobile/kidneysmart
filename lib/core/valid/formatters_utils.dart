abstract class FormattersUtils {
  static String clearBeforeSend(String value) => value
      .replaceFirst(RegExp('^[нетНЕТ|нетуНЕТУ]{3,4}(?!.)'), '')
      .replaceAll(RegExp(r'[.,\-_*“‘(\s]+$'), '')
      .replaceAll(RegExp(r'\.$'), '')
      .trim();
}
