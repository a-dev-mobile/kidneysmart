import 'package:kidneysmart/core/enum/enum_fio.dart';
import 'package:kidneysmart/core/valid/enum_valid.dart';

class Validators {
  static const String _defaultMessageEmpty = 'Заполните поле';

  static bool isTripleBrackets(String value) =>
      RegExp(r'\(\)\)').hasMatch(value);

  static bool isSpacesAroundSymbols(String value) =>
      RegExp(r"([-'/]\s)|(\s[-'/])").hasMatch(value);

// Регулярное выражение, которое ищет пробелы перед или после '/', "'"
  static bool isHasSpacesAroundSlashOrApostrophe(String value) =>
      RegExp(r"\s[/\']|[/\']\s").hasMatch(value);

// Регулярное выражение, которое ищет пробелы перед или после '/', "'", или '-'
  static bool isHasSpacesAroundSlashOrApostropheOrHyphen(String value) =>
      RegExp(r"\s[-/\']|[-/\']\s").hasMatch(value);

  static bool isSpacesInsideBrackets(String value) =>
      RegExp(r'\s\)').hasMatch(value) || RegExp(r'\(\s').hasMatch(value);

  static bool isDoubleSymbols(String value) =>
      RegExp(r"([\'\-/.,№*\s])\1").hasMatch(value);

  static bool isStartAndEndOfTheLine(String value) =>
      RegExp(r"(^[.,*'\-/\s])|(^.+[,*'\-/\s]$)").hasMatch(value);

  static bool isOnlySymbols(String value) =>
      RegExp('^[\\"\'\\-\\s*()./]+\$').hasMatch(value);

  // Проверка, содержит ли строка хотя бы одну букву (латиницу или кириллицу)
  static bool isNotContainsLetterRu(String value) {
    final letterPattern = RegExp('[а-яА-Я]');
    return !letterPattern.hasMatch(value);
  }

  static bool isContainsMismatchedBrackets(String value) {
    final iShasMismatchedBrackets =
        RegExp(r'\(\(\(|\)\)\)|\(\)').hasMatch(value);

    final stack = <String>[];

    for (var i = 0; i < value.length; i++) {
      if (value[i] == '(') {
        stack.add(value[i]);
      } else if (value[i] == ')') {
        if (stack.isEmpty) {
          return true; // закрывающая скобка без соответствующей открывающей
        } else {
          stack.removeLast(); // убираем последнюю открывающую скобку из стека
        }
      }
    }

    return stack.isNotEmpty ||
        iShasMismatchedBrackets; // если в стеке остались скобки, значит не для всех есть пара
  }

  static bool isOnlyZeros(String value) => RegExp(r'^[0\s]+$').hasMatch(value);

  static bool isOnlyLetters(String value) =>
      RegExp(r'^[А-Яа-яЁё]+$').hasMatch(value);

  static String allowedChar(String value, RegExp regExp) {
    final onlyIllegalCharacters = value.replaceAll(regExp, '');

    if (onlyIllegalCharacters.isNotEmpty) {
      final uniqueIllegalSymbols =
          onlyIllegalCharacters.split('').toSet().join('", "');

      return 'Введен недопустимый символ: "$uniqueIllegalSymbols", удалите его';
    }

    return '';
  }

  static String allowedEndChars(String value, RegExp notAllowed) {
    final invalidSymbols = notAllowed.stringMatch(value) ?? '';

    if (invalidSymbols.isNotEmpty) {
      final symbols = invalidSymbols.split('').toSet().join('", "');

      return 'Введен недопустимый символ: "$symbols", удалите его';
    }

    return '';
  }

  String city(String value) {
//
    if (value.trim().isEmpty) {
      return _defaultMessageEmpty;
    }

    //
    final symbolInvalidError = allowedChar(
      value,
      RegExp('[iIn№NА-яё.,_\\-\'"`“”‘’«‹»›()/\\d\\s]', unicode: true),
    );

    if (symbolInvalidError.isNotEmpty) return symbolInvalidError;

    final endSymbolsInvalidError = allowedEndChars(
      value,
      RegExp("[^.,-А-Яа-яЁ-ё'\"`“”‘’()\\s]\$", unicode: true),
    );

    if (endSymbolsInvalidError.isNotEmpty) return endSymbolsInvalidError;

//
    return '';
  }

  String street(String value) {
    if (value.trim().isEmpty) return _defaultMessageEmpty;

    // const streetInvalidLine = !value.match(/^[А-яё.,\-'"№in()/\d\s]+$/iu);
    final symbolInvalidError = allowedChar(
      value,
      RegExp('[iIn№NА-яё.,\\-\'"`“”‘’«‹»›()\\/\\d\\s]+', unicode: true),
    );

    if (symbolInvalidError.isNotEmpty) return symbolInvalidError;

    final endSymbolsInvalidError = allowedEndChars(
      value,
      RegExp('[^.,-А-Яа-яЁ-ё\'"`“”‘’’«‹»›()\\s]\$', unicode: true),
    );

    if (endSymbolsInvalidError.isNotEmpty) return endSymbolsInvalidError;
//
    return '';
  }

  String house(String value) {
    if (value.trim().isEmpty) return _defaultMessageEmpty;

    final symbolInvalidError = allowedChar(
      value,
      RegExp(r'[А-Яа-яЁё0-9\-.\/\d\s]', unicode: true),
    );

    if (symbolInvalidError.isNotEmpty) return symbolInvalidError;

    final endSymbolsInvalidError = allowedEndChars(
      value,
      RegExp(r'[^.,/\-А-Яа-яЁё0-9()\s]$', unicode: true),
    );

    if (endSymbolsInvalidError.isNotEmpty) return endSymbolsInvalidError;

    return '';
  }

  String apartament(String value) {
    final symbolInvalidError = allowedChar(
      value,
      RegExp(r'[А-Яа-яЁё\-.,/\d\s]', unicode: true),
    );

    if (symbolInvalidError.isNotEmpty) return symbolInvalidError;

    return '';
  }

  String phone(String valueNew, [String valueOld = '']) {
    if (valueNew.trim().isEmpty) return _defaultMessageEmpty;
    if (valueNew[0] != '9') return 'Номер телефона начинайте вводить с 9';

    final error = _minLength(10, valueNew);
    if (error.isNotEmpty) return error;

    if (valueOld.isNotEmpty && valueNew == valueOld) {
      return 'Номер телефона не изменился';
    }

    return '';
  }

  String additionalPhone(String valueNew, [String valueOld = '']) {
    var error = '';

    error = _minLength(10, valueNew);

    if (error.isNotEmpty) return error;

    if (valueOld.isNotEmpty && valueNew == valueOld) {
      return 'Номер телефона не изменился';
    }

    return '';
  }

  String additionalPhoneRequired(String valueNew, [String valueOld = '']) {
    var error = '';

    if (valueNew.trim().isEmpty) return _defaultMessageEmpty;

    error = _minLength(10, valueNew);

    if (error.isNotEmpty) return error;

    if (valueOld.isNotEmpty && valueNew == valueOld) {
      return 'Номер телефона не изменился';
    }

    return '';
  }

  String fio(String value, EnumFio enumFio) {
    if (value.trim().isEmpty) {
      return enumFio.mapValue(
        all: 'Это обязательное поле. Введите ФИО.',
        name: 'Это обязательное поле. Введите имя.',
        surname: 'Это обязательное поле. Введите фамилию.',
        patronymic: 'Это обязательное поле. Введите отчество.',
      );
    }

    if (enumFio.isAll &&
        !value.contains(RegExp(r'^[А-ЯЁа-яё]+(?: [А-ЯЁа-яё]+){2}\s*$'))) {
      return 'Введите, пожалуйста, полное ФИО';
    }

    final symbolInvalidError = allowedChar(
      value,
      RegExp(r"['\-().*/\sА-Яа-яЁё]", unicode: true),
    );

    if (symbolInvalidError.isNotEmpty) return symbolInvalidError;

    final endSymbolsInvalidError = allowedEndChars(
      value,
      RegExp(r'[^.,\-А-Яа-яЁё()\s]$', unicode: true),
    );

    if (endSymbolsInvalidError.isNotEmpty) return endSymbolsInvalidError;

    return '';
  }

  String fioServices(String value, EnumFio enumFio) {
    if (value.trim().isEmpty) {
      return enumFio.mapValue(
        all: 'Это обязательное поле. Введите ФИО.',
        name: 'Это обязательное поле. Введите имя.',
        surname: 'Это обязательное поле. Введите фамилию.',
        patronymic: 'Это обязательное поле. Введите отчество.',
      );
    }

    if (enumFio.isAll &&
        !value.contains(
          RegExp(r"^[А-ЯЁа-яё()'`’\-]+(?: [А-ЯЁа-яё()'`’\-]+){2}\s*$"),
        )) {
      return 'Введите, пожалуйста, полное ФИО';
    }

    final symbolInvalidError = allowedChar(
      value,
      RegExp(r"['`’\-().*/\sА-Яа-яЁё]", unicode: true),
    );

    if (symbolInvalidError.isNotEmpty) return symbolInvalidError;

    final endSymbolsInvalidError = allowedEndChars(
      value,
      RegExp(r"[^.,'`’\-А-Яа-яЁё()\s]$", unicode: true),
    );

    if (endSymbolsInvalidError.isNotEmpty) return endSymbolsInvalidError;

    return '';
  }

  String sms(String value) {
    if (value.trim().isEmpty) return _defaultMessageEmpty;

    var error = '';

    error = _minLength(4, value);
    if (error.isNotEmpty) return error;

    return '';
  }

  String smsInvalid() {
    return 'Неверный код. Попробуйте еще раз';
  }

  String snilsInvalid() {
    return 'СНИЛС неверное контрольное число';
  }

  String password(String value) {
    if (value.trim().isEmpty) return _defaultMessageEmpty;

    var error = '';

    error = _minLength(6, value);
    if (error.isNotEmpty) return error;

    return '';
  }

  String passwordInvalid() {
    return 'Неверный код. Попробуйте еще раз';
  }

  String _minLength(int min, String value) {
    final lengthWithoutNonDigits = value.replaceAll(RegExp(r'\D'), '').length;

    return lengthWithoutNonDigits < min
        ? 'Неверная длина поля. Вы ввели $lengthWithoutNonDigits/$min символов'
        : '';
  }

  double _makeDifferenceYears(
    DateTime now,
    String years,
    String month,
    String day,
  ) {
    final date = DateTime.parse('$years-$month-$day');

    return now.difference(date).inMinutes / 526000;
  }

  String dateOfBirth(String value) {
    if (value.trim().isEmpty) return _defaultMessageEmpty;
    final nowDate = DateTime.now();

    if (value.length != 10) return 'Неправильный формат даты';

    final rawDate = value.split('.');
    final dayNumber = int.parse(rawDate.first);
    final monthNumber = int.parse(rawDate[1]);

    final day = rawDate.first;
    final month = rawDate[1];
    final year = rawDate[2];

    if (monthNumber > 12 || monthNumber <= 0) {
      return 'Неправильный формат даты (месяц)';
    }
    if (dayNumber > 31 || dayNumber <= 0) {
      return 'Неправильный формат даты (день)';
    }
    //  если меньше 18 и больше 100
    final differenceYears = _makeDifferenceYears(nowDate, year, month, day);
    if (differenceYears <= 17.99) {
      return 'Вам должно быть больше 18 лет, проверьте правильность ввода.';
    }
    if (differenceYears >= 100) {
      return 'Проверьте правильность ввода';
    }

    return '';
  }

  String datePassport(String datePassportStr, String dateOfBirthStr) {
    if (datePassportStr.trim().isEmpty) return _defaultMessageEmpty;
    final dateRegExp = RegExp(r'^[0-9]{2}\.[0-9]{2}\.[0-9]{4}$');

    if (!dateRegExp.hasMatch(datePassportStr)) {
      return 'Неправильный формат даты';
    }

    final rawDate = datePassportStr.split('.');

    final dayNumber = int.parse(rawDate.first);
    final monthNumber = int.parse(rawDate[1]);

    if (monthNumber > 12 || monthNumber <= 0) {
      return 'Неправильный формат даты (месяц)';
    }
    if (dayNumber > 31 || dayNumber <= 0) {
      return 'Неправильный формат даты (день)';
    }
    final rawDatePassport = datePassportStr.split('.');

    final dayPassportString = rawDatePassport[0];
    final monthPassportString = rawDatePassport[1];
    final yearPassportString = rawDatePassport[2];
    //

    final datePassport = DateTime.parse(
      '$yearPassportString-$monthPassportString-$dayPassportString',
    );

    if (datePassport.isAfter(DateTime.now())) {
      return 'Дата выдачи не может быть позже текущей даты';
    }

    if (dateOfBirthStr.length < 10) return '';

    final rawDateOfBirth = dateOfBirthStr.split('.');

    final dayOfBirthString = rawDateOfBirth[0];
    final monthOfBirthString = rawDateOfBirth[1];
    final yearOfBirthString = rawDateOfBirth[2];

    final dateOfBirth = DateTime.parse(
      '$yearOfBirthString-$monthOfBirthString-$dayOfBirthString',
    );

    final differenceYears =
        datePassport.difference(dateOfBirth).inMinutes / 526000;

    if (datePassport == dateOfBirth) {
      return 'Дата выдачи не может быть равна дате рождения.';
    }
    if (datePassport.isBefore(dateOfBirth)) {
      return 'Дата выдачи не может быть раньше, чем дата рождения';
    }

    if (differenceYears <= 14) {
      return 'Неправильная дата выдачи паспорта или дата рождения';
    }

    return '';
  }

// Место рождения
  String birthPlaceInvalid(String value) {
    if (value.trim().isEmpty) return _defaultMessageEmpty;

    final symbolInvalidError = allowedChar(
      value,
      RegExp("[iIn№NА-яё_\\-/.,'\"`“”‘’«‹»›„“‟”()\\d\\s]", unicode: true),
    );

    if (symbolInvalidError.isNotEmpty) return symbolInvalidError;

    return '';
  }

  String passportNumber(String value) {
    if (value.trim().isEmpty) return _defaultMessageEmpty;

    var error = '';

    error = _minLength(6, value);
    if (error.isNotEmpty) return error;

    return '';
  }

  String passportCodeDepartment(String value) {
    if (value.trim().isEmpty) return _defaultMessageEmpty;

    var error = '';

    error = _minLength(6, value);
    if (error.isNotEmpty) return error;

    return '';
  }

  String snils(String value) {
    if (value.trim().isEmpty) return '';

    final error = _minLength(11, value);
    if (error.isNotEmpty) return error;

    return '';
  }

  String passportSeries(String value) {
    if (value.trim().isEmpty) return _defaultMessageEmpty;

    final error = _minLength(4, value);
    if (error.isNotEmpty) return error;

    if (RegExp('00|02|06|13|16|21|23|31', caseSensitive: false)
        .hasMatch(value.substring(0, 2))) {
      return 'Проверьте серию паспорта';
    }

    return '';
  }

  String passportNameDepartmentInvalid() {
    return 'Проверьте данные';
  }

// Кем выдан
  String passportNameDepartment(String value) {
    if (value.trim().isEmpty) return _defaultMessageEmpty;

    final symbolInvalidError = allowedChar(
      value,
      RegExp('[А-Яа-яЁё\'"-/.,№()\\d\\s`“”‘’«‹»›]', unicode: true),
    );

    if (symbolInvalidError.isNotEmpty) return symbolInvalidError;

    return '';
  }

  String email(String value) {
    if (value.trim().isEmpty) return _defaultMessageEmpty;

    final emailRegExp =
        RegExp(r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$');

    if (!emailRegExp.hasMatch(value)) {
      return 'Введите корректный Email. Пример:\nexample@domain.ru';
    }

    return '';
  }

  String nameOfService(String value) {
    if (value.trim().isEmpty) return _defaultMessageEmpty;

    final symbolInvalidError = allowedChar(
      value,
      RegExp(r'[А-Яа-яЁё0-9,\s]'),
    );

    if (symbolInvalidError.isNotEmpty) return symbolInvalidError;

    return '';
  }

  String loanAgreementNumber(String value) {
    if (value.trim().isEmpty) return _defaultMessageEmpty;

    final symbolInvalidError = allowedChar(
      value,
      RegExp(r'[А-Яа-яЁё0-9,№\s]', unicode: true),
    );

    if (symbolInvalidError.isNotEmpty) return symbolInvalidError;

    return '';
  }

  String messageOptional(String value) => '';

  EnumValid checkValid(String value) =>
      value.isEmpty ? EnumValid.valid : EnumValid.error;
}
