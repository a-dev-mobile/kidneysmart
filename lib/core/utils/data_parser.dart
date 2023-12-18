// In the file lib/common/utils/data_parser.dart
import 'dart:developer';

/// The [DataParser] class provides static utilities for converting strings to numeric values.
class DataParser {
  /// Attempts to convert the string [value] to a number [num].
  /// If [value] is `null` or cannot be converted, returns [defaultValue].
  /// By default, [defaultValue] is `null`.
  static num? parseStringToNum(String? value, {num? defaultValue}) {
    if (value == null) {
      return defaultValue;
    }

    try {
      return num.parse(value);
    } on FormatException catch (e) {
      log(
        'Failed to convert the string "$value" to a number: ${e.message}',
        name: 'DataParser.parseStringToNum',
      );
      return defaultValue;
    }
  }
}
