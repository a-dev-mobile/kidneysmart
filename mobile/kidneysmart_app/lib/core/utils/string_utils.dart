// ignore_for_file: parameter_assignments

import 'package:intl/intl.dart';
import 'package:kidneysmart/core/enum/enum_type_form.dart';

class StringUtils {
  static String getNameCardFromNumber(String? cardNumber) {
    if (cardNumber == null) return '';
    if (cardNumber.length < 4) {
      throw Exception('Input cardNumber is too short');
    }
    return 'card_${cardNumber.substring(cardNumber.length - 4)}';
  }

  static num getNumValue(dynamic value) {
    if (value == null || value.toString().isEmpty) {
      return 0;
    }

    if (value is num) {
      return value;
    }

    if (value is String) {
      return num.tryParse(value) ?? 0;
    }

    return 0;
  }

  /// Преобразует строку даты в формате "yyyy-MM-dd" или объект DateTime в формат "dd.MM.yyyy".
  ///
  /// [date] - строка даты в формате "yyyy-MM-dd" или объект DateTime.
  /// Возвращает строку даты в формате "dd.MM.yyyy" или пустую строку, если дата равна null или в случае ошибки.
  static String formatDate(dynamic date) {
    if (date == null) return '';

    DateTime parsedDate;
    try {
      if (date is String) {
        if (date.isEmpty) return '';
        final inputFormat = DateFormat('yyyy-MM-dd');
        parsedDate = inputFormat.parse(date);
      } else if (date is DateTime) {
        parsedDate = date;
      } else {
        return ''; // Возвращаем пустую строку, если тип входных данных не поддерживается
      }
    } catch (e) {
      // В случае возникновения ошибки при анализе или преобразовании даты
      return '';
    }

    final outputFormat = DateFormat('dd.MM.yyyy');
    return outputFormat.format(parsedDate);
  }

  @Deprecated('Use declOfNum')
  static String getDescHours(String value) {
    // final l = context.l10n;

    switch (value) {
      case '1':
      case '21':
        return 'час';
      case '2':
      case '3':
      case '4':
      case '22':
      case '23':
      case '24':
        return 'часа';

      default:
        return 'часов';
    }
  }

  @Deprecated('Use declOfNum')
  static String formatDayWithSuffix(dynamic v, {bool includeNumber = true}) {
    // Явное преобразование типа dynamic в String
    String valueString;
    if (v is int) {
      valueString = v.toString();
    } else if (v is String) {
      valueString = v;
    } else {
      throw ArgumentError('Value must be int or String');
    }

    // Определение суффикса
    String suffix;
    if (valueString == '11' ||
        valueString == '12' ||
        valueString == '13' ||
        valueString == '14') {
      suffix = 'дней';
    } else if (valueString.endsWith('1')) {
      suffix = 'день';
    } else if (valueString.endsWith('2') ||
        valueString.endsWith('3') ||
        valueString.endsWith('4')) {
      suffix = 'дня';
    } else {
      suffix = 'дней';
    }

    // Возвращаем результат с учетом includeNumber
    return includeNumber ? '$valueString $suffix' : suffix;
  }

  static String getWeekSuffix(String v) {
    if (v == '11' || v == '12' || v == '13' || v == '14') {
      return 'недель';
    } else if (v.endsWith('1')) {
      return 'неделя';
    } else if (v.endsWith('2') || v.endsWith('3') || v.endsWith('4')) {
      return 'недели';
    } else {
      return 'недель';
    }
  }

  static int convertDaysToWeeks(num dayCount) {
    return (dayCount / 7).ceil();
  }

  // делим строку на подстроки
  static List<String> splitString(
    String input, [
    int sum = 1000,
    int maxArray = 10,
  ]) {
    if (input.length <= sum) {
      return [input];
    }

    var result = <String>[];
    var startIndex = 0;
    var endIndex = sum;

    while (startIndex < input.length) {
      if (endIndex >= input.length) {
        endIndex = input.length;
      }

      final substring = input.substring(startIndex, endIndex);
      result.add(substring);

      startIndex = endIndex;
      endIndex += sum;
    }

    if (result.length > maxArray) {
      result = result.getRange(0, maxArray - 1).toList();
    }

    while (result.length < maxArray) {
      result.add('');
    }

    return result;
  }

  /// добовляем окончание к числу  >>> минут   минута
  static String getDescMinutes(String value) {
    // final l = context.l10n;

    switch (value) {
      case '1':
      case '21':
      case '31':
      case '41':
      case '51':
        return 'минута';
      case '2':
      case '3':
      case '4':
      case '22':
      case '23':
      case '24':
      case '32':
      case '33':
      case '34':
      case '42':
      case '43':
      case '44':
      case '52':
      case '53':
      case '54':
        return 'минуты';

      default:
        return 'минут';
    }
  }

  /// Formats a numeric value by adding group separators and optionally a currency symbol.
  ///
  /// This function takes a numeric value (either a `num` or a `String` representation of a number)
  /// and returns it formatted with group separators (like spaces or commas) for better readability.
  /// It also properly handles negative numbers and decimal parts.
  ///
  /// [value]: The numeric value to be formatted.
  /// [groupSeparator]: The character used to separate groups of digits. Default is a space (' ').
  /// [addCurrencySymbol]: If true, appends the ₽ symbol to the formatted number.
  ///
  /// Returns a string representation of the formatted number with or without a currency symbol.
  /// Returns an empty string in case of an error.
  ///
  /// Examples:
  /// ```
  /// print(formatNumValue("123456", addCurrencySymbol: true));           // "123 456 ₽"
  /// print(formatNumValue(1234567890.5678, addCurrencySymbol: false));   // "1 234 567 890.5678"
  /// print(formatNumValue("123456"));           // "123 456"
  /// print(formatNumValue(1234567890.5678));    // "1 234 567 890.5678"
  /// print(formatNumValue(-12.345));            // "-12.345"
  /// print(formatNumValue(null));               // ""
  /// print(formatNumValue(-0.0));               // "0"
  /// print(formatNumValue("12,345.67"));        // "12 345.67"
  /// print(formatNumValue(1234567, groupSeparator: ','));  // "1,234,567"
  /// ```
  static String formatNumberWithGrouping(
    dynamic value, {
    String groupSeparator = ' ',
    bool addCurrencySymbol = false,
  }) {
    try {
      // Convert the value to a double
      double doubleValue;
      if (value is String) {
        try {
          doubleValue = double.parse(value);
        } catch (e) {
          return ''; // If parsing fails, return an empty string
        }
      } else if (value is num) {
        doubleValue = value.toDouble();
      } else {
        return ''; // For unsupported types
      }

      // Round to 2 decimal places
      doubleValue = doubleValue.isFinite
          ? (num.parse(doubleValue.toStringAsFixed(2)) as double)
          : doubleValue;

      // Check for negative zero and make it positive
      if (doubleValue == -0.0) {
        doubleValue = doubleValue.abs();
      }

      // Convert the rounded value to a string
      var stringValue = doubleValue.toString();

      // If the number has a decimal part, handle it separately
      var decimalPart = '';
      if (stringValue.contains('.')) {
        final parts = stringValue.split('.');
        stringValue = parts[0];
        decimalPart = parts[1].replaceAll(RegExp(r'0*$'), '');
        if (decimalPart.isNotEmpty) {
          decimalPart = '.$decimalPart';
        }
      }

      // Handle negative numbers
      var isNegative = false;
      if (stringValue.startsWith('-')) {
        isNegative = true;
        stringValue = stringValue.substring(1);
      }
      final formattedNumber = (isNegative ? '-' : '') +
          formatInt(int.parse(stringValue), groupSeparator) +
          decimalPart;
      return formattedNumber + (addCurrencySymbol ? ' ₽' : '');
    } catch (e) {
      // Return an empty string in case of an error
      return '';
    }
  }

  static String formatInt(int value, String separator) {
    final stringValue = value.toString();

    if (stringValue.length <= 3) {
      return stringValue;
    }

    final parts = <String>[];

    var tempValue = value;
    while (tempValue > 0) {
      final chunk = tempValue % 1000; // Get last three digits
      parts.insert(0, chunk.toString().padLeft(3, '0'));
      tempValue ~/= 1000; // Remove last three digits
    }

    // The first group may not need to be 3 digits (e.g., 123,456,789 -> 123 is the first group)
    parts[0] = parts[0].replaceAll(RegExp('^0+'), '');

    return parts.join(separator);
  }

  static String formatObscurePhoneNumber(String? value) {
    try {
      final phoneNumber = value?.replaceAll(RegExp(r'/\D/g'), '');

      if (phoneNumber == null || phoneNumber.length != 11) return '';

      final countryCode = phoneNumber.substring(0, 1);
      final areaCode = phoneNumber.substring(1, 4);
      final lastPart = phoneNumber.substring(9);

      return '+$countryCode $areaCode *** ** $lastPart';
    } catch (_) {
      return '';
    }
  }

  /// Determines the correct plural form of a word based on a given number.
  /// This is useful for languages like Russian where the form of the word changes with the number.
  ///
  /// The method can accept both [int] and [String] as the input number. If the input is a string,
  /// it attempts to parse it into an integer. If parsing fails, the behavior depends on the [includeNumber] flag.
  ///
  /// [n]: The number for which to determine the word form. Can be an [int] or a [String].
  /// [enumTypeForm]: The type of word form to use. It should be one of the values of [EnumTypeForm].
  /// [includeNumber] (optional): A flag to determine whether to include the number in the returned string.
  ///     - If true, the number and its corresponding word form are returned.
  ///     - If false (default), only the word form is returned.
  ///     - In case of parsing error and [includeNumber] is true, the original string value of `n` is returned.
  ///     - If [includeNumber] is false, an empty string is returned in case of parsing error.
  ///
  /// Returns a string with the number and its correct plural form if [includeNumber] is true,
  /// otherwise, just the correct plural form.
  ///
  /// Throws [ArgumentError] if the input number is not an [int] or [String].
  ///
  /// Usage Example:
  /// ```dart
  /// declOfNum(1, EnumTypeForm.days); // '1 день'
  /// declOfNum('3', EnumTypeForm.min); // '3 минуты'
  /// declOfNum('invalid', EnumTypeForm.sec, includeNumber: false); // ''
  /// ```
  static String declOfNum(
    dynamic n,
    EnumTypeForm enumTypeForm, {
    bool includeNumber = false,
  }) {
    int? number;

    // Attempt to parse n to an integer if it's a String, else use it directly if it's an int
    if (n is String) {
      number = int.tryParse(n); // Returns null if parsing fails
    } else if (n is int) {
      number = n;
    } else {
      throw ArgumentError('n must be either int or String');
    }

    // Handling parsing error
    if (number == null) {
      return includeNumber ? n.toString() : '';
    }

    final textForms = _getTextForms(enumTypeForm);

    final originalNumber = number;
    number = number.abs() % 100;
    final number1 = number % 10;

    String result;
    if (number > 10 && number < 20) {
      result = textForms[2];
    } else if (number1 > 1 && number1 < 5) {
      result = textForms[1];
    } else if (number1 == 1) {
      result = textForms[0];
    } else {
      result = textForms[2];
    }

    return includeNumber ? '$originalNumber $result' : result;
  }

  static List<String> _getTextForms(EnumTypeForm enumTypeForm) {
    switch (enumTypeForm) {
      case EnumTypeForm.years:
        return ['год', 'года', 'лет'];
      case EnumTypeForm.days:
        return ['день', 'дня', 'дней'];
      case EnumTypeForm.sec:
        return ['секунда', 'секунды', 'секунд'];
      case EnumTypeForm.min:
        return ['минута', 'минуты', 'минут'];
      case EnumTypeForm.hour:
        return ['час', 'часа', 'часов'];
    }
  }
}
