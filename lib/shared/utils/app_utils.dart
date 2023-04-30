abstract class AppUtilsString {
  static String removeDecimalZeroFormat(double n) {
    return n.toStringAsFixed(n.truncateToDouble() == n ? 0 : 1);
  }

  static String removeLastCharacter(String str) {
    var result = '';
    if ((str != '') && (str.isNotEmpty)) {
      result = str.substring(0, str.length - 1);
    }

    return result;
  }

  static String getLastCharacter(String str) {
    var result = '';
    if ((str != '') && (str.isNotEmpty)) {
      result = str.substring(str.length - 1);
    }

    return result;
  }

  static String getFirstCharacter(String str) {
    var result = '';
    if ((str != '') && (str.isNotEmpty)) {
      result = str.substring(0);
    }

    return result;
  }

  static String addZeroIsFirstDecimal(String text) {
    return AppUtilsString.getFirstCharacter(text) == '.'
        // ignore: parameter_assignments
        ? text = '0$text'
        : text;
  }
}

abstract class AppUtilsParser {
  static String googleUrl(String url) {
    final idUrl = UtilsRegex.getTextRegexMatch(
      content: url,
      regex: r'(?<=\/d\/)[^\/]+',
    );

    return 'https://drive.google.com/uc?export=view&id=$idUrl';
  }
}

abstract class UtilsRegex {
  static String getTextRegexMatch({
    required String regex,
    required String content,
    bool isLast = true,
  }) {
    final regexFindNameState = RegExp(regex, multiLine: true);
    final match = regexFindNameState.allMatches(content);
    if (match.isEmpty) {
      return '';
    }

    return isLast ? match.last[0] ?? '' : match.first[0] ?? '';
  }

  static List<String> getTextRegexListMatch({
    required String regex,
    required String content,
  }) {
    final regexFindNameState = RegExp(regex, multiLine: true);
    final matches = regexFindNameState.allMatches(content);
    if (matches.isEmpty) return [];
    final list = <String>[];
    for (final Match m in matches) {
      final match = m[0] ?? '';
      list.add(match);
    }

    return list;
  }
}

/// AppUtilsNumber Singleton class
class AppUtilsNumber {
  factory AppUtilsNumber() => _internalSingleton;
  AppUtilsNumber._internal();

  static final AppUtilsNumber _internalSingleton = AppUtilsNumber._internal();

  static String getFormatNumber({
    required double num,
    int numberDigitsAfterPoint = 2,
  }) {
// округляем, но нет удаления конечных нулей
    final num2 = num.toStringAsFixed(numberDigitsAfterPoint);
    // если нет точки возвращаем
    if (!num2.contains('.')) return num2;

    // ignore: prefer-correct-identifier-length
    final s = num2.split('.');
    var mainResult = num2;
    // проверяем есть ли последние нули
    if (AppUtilsString.getLastCharacter(s[1]) == '0') {
      var oldString = '';
      var newString = '';
      oldString = s[1];

      for (var i = 0; i < s[1].length; i++) {
        if (AppUtilsString.getLastCharacter(oldString) == '0') {
          newString = AppUtilsString.removeLastCharacter(oldString);
        } else {
          break;
        }
        oldString = newString;
      }
// действия, если после ни чего ни осталось оставляем split 0
      mainResult = newString.isEmpty ? s.first : '${s.first}.$newString';
    }

    return mainResult;
  }

  static String correctFormatDouble(double? v) {
    if (v == null || v < 0) return '0';
    if (v % 1 == 0) return v.toStringAsFixed(0);

    return v.toString();
  }
}

/// AppUtilsNumber Singleton class
class AppUtilsArray {
  factory AppUtilsArray() => _internalSingleton;
  AppUtilsArray._internal();

  static final AppUtilsArray _internalSingleton = AppUtilsArray._internal();

  static List<bool> getListBool({
    required int length,
    int? selectedIndex = -1,
  }) {
    return List.generate(
      length,
      (i) => selectedIndex == i,
    );
  }
}
