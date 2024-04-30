import 'package:flutter/services.dart';
import 'package:intl/intl.dart';
import 'package:kidneysmart/core/valid/formatters_utils.dart';

class FormatterCommon extends TextInputFormatter {
  @override
  TextEditingValue formatEditUpdate(
    TextEditingValue oldValue,
    TextEditingValue newValue,
  ) {
    final text = _handler(newValue.text);
    final selection = TextSelection.collapsed(offset: text.length);

    return TextEditingValue(text: text, selection: selection);
  }

  String formatValue(String value) => _handler(value);

  String? clearBeforeSend(String? value) {
    if (value == null) return null;

    return FormattersUtils.clearBeforeSend(formatValue(value));
  }

  String _handler(String value) {
    final ignoreRegExp = RegExp('[^A-Za-zА-Яа-яЁ-ё0-9(|)]');

    final text = StringBuffer();

    var prevSymbol = '';

    for (var i = 0; i < value.length; i++) {
      var symbol = value[i];

      if (i > 0) prevSymbol = value[i - 1];

      if (symbol.contains(ignoreRegExp) && symbol == prevSymbol) {
        symbol = '';
      }

      text.write(symbol);
    }

    return text
        .toString()
        .replaceAll(RegExp("^[']"), '')
        .replaceAll(RegExp('^[‘]'), '')
        .replaceAll(RegExp('^[`]'), '')
        .replaceAll(RegExp(r"\s*'"), "'")
        .replaceAll(RegExp(r'\s*‘'), '‘')
        .replaceAll(RegExp(r'\s*`'), '`')
        .replaceAll(RegExp(r"\s*'"), "'")
        .replaceAll(RegExp(r'\s*‘'), '‘')
        .replaceAll(RegExp('“”'), '“')
        .replaceAll(RegExp('‘’'), '‘')
        .replaceAll(RegExp('--'), '-')
        .replaceAll(RegExp(r'(\(\(\()'), '((')
        .replaceAll(RegExp(r'(\)\)\))'), '))')
        .replaceAll(RegExp(r'\(\s*'), '(')
        .replaceAll(RegExp(r'\s*\)'), ')')
        .replaceAll(RegExp(r'\s*/\s*'), '/')
        .replaceAll(RegExp(r"\s*'\s*"), "'")
        .replaceAll(RegExp('^[.,]+'), '');
  }
}

class FormatterFio extends FormatterCommon {}

class FormatterPlace extends FormatterCommon {}

class FormatterPassportName extends FormatterCommon {}

class FormatterCity extends FormatterCommon {}

class FormatterStreet extends FormatterCommon {}

class FormatterHouse extends FormatterCommon {}

class FormatterApartment extends FormatterCommon {}

class FormatterAddress extends FormatterCommon {}

class FormatterMessageArea extends FormatterCommon {
  @override
  TextEditingValue formatEditUpdate(
    TextEditingValue oldValue,
    TextEditingValue newValue,
  ) {
    final text = newValue.text
        .replaceAll(RegExp('[A-Za-z]', unicode: true), '')
        .replaceAll('  ', ' ');
    final selection = TextSelection.collapsed(offset: text.length);

    return TextEditingValue(text: text, selection: selection);
  }
}

class FormatterThousands extends TextInputFormatter {
  FormatterThousands({this.maxSum});

  final int? maxSum;

  @override
  TextEditingValue formatEditUpdate(
    TextEditingValue oldValue,
    TextEditingValue newValue,
  ) {
    try {
      var numbers = int.parse(newValue.text.replaceAll(RegExp(r'[^\d+]'), ''));

      if (maxSum != null && numbers > maxSum!) {
        numbers = maxSum!;
      }

      var text = NumberFormat('#,###').format(numbers).replaceAll(',', ' ');

      if (text.length > 6) {
        text = text.substring(0, 6);
      }

      return newValue.copyWith(
        text: text,
        selection: TextSelection.collapsed(offset: text.length),
      );
    } catch (_) {
      return newValue.copyWith(
        text: '',
        selection: const TextSelection.collapsed(offset: 0),
      );
    }
  }
}

class FormatterMaxLength extends TextInputFormatter {
  FormatterMaxLength({required this.max});

  final int max;

  @override
  TextEditingValue formatEditUpdate(
    TextEditingValue oldValue,
    TextEditingValue newValue,
  ) {
    var text = newValue.text;

    if (text.length > max) {
      text = text.substring(0, max);
    }

    return newValue.copyWith(
      text: text,
      selection: TextSelection.collapsed(offset: text.length),
    );
  }
}

class FormatterMessageOptional extends FormatterCommon {}

class FormatterNameOfService extends FormatterCommon {
  @override
  TextEditingValue formatEditUpdate(
    TextEditingValue oldValue,
    TextEditingValue newValue,
  ) {
    final text = newValue.text
        .replaceAll(RegExp(r'[^А-Яа-яЁё,\s]'), '')
        .replaceAll('  ', ' ');
    final selection = TextSelection.collapsed(offset: text.length);

    return TextEditingValue(text: text, selection: selection);
  }
}

class FormatterLoanAgreementNumber extends FormatterCommon {
  @override
  TextEditingValue formatEditUpdate(
    TextEditingValue oldValue,
    TextEditingValue newValue,
  ) {
    final text = newValue.text
        .replaceAll(RegExp(r'[^А-Яа-яЁё0-9,№\s]$'), '')
        .replaceAll('  ', ' ');
    final selection = TextSelection.collapsed(offset: text.length);

    return TextEditingValue(text: text, selection: selection);
  }
}
