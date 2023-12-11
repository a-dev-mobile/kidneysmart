// ignore_for_file: avoid-nested-conditional-expressions, sort_constructors_first

import 'package:formz/formz.dart';

class ValidAdditionalPhone
    extends FormzInput<String, ValidAdditionalPhoneError> {
  const ValidAdditionalPhone.pure({this.externalError}) : super.pure('');

  const ValidAdditionalPhone.dirty({
    this.externalError,
    String value = '',
  }) : super.dirty(value);

  final ValidAdditionalPhoneError? externalError;

  @override
  ValidAdditionalPhoneError? validator(String value) {
    if (externalError != null) {
      return externalError;
    }

    return value.isEmpty
        ? null
        : value.length < 2
            ? ValidAdditionalPhoneError.leght1
            : value.length < 3
                ? ValidAdditionalPhoneError.leght2
                : value.length < 4
                    ? ValidAdditionalPhoneError.leght3
                    : value.length < 5
                        ? ValidAdditionalPhoneError.leght4
                        : value.length < 6
                            ? ValidAdditionalPhoneError.leght5
                            : value.length < 7
                                ? ValidAdditionalPhoneError.leght6
                                : value.length < 8
                                    ? ValidAdditionalPhoneError.leght7
                                    : value.length < 9
                                        ? ValidAdditionalPhoneError.leght8
                                        : value.length < 10
                                            ? ValidAdditionalPhoneError.leght9
                                            : null;
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'ValidAdditionalPhone': value};
  }

  factory ValidAdditionalPhone.fromMap(Map<String, dynamic> map) {
    final result = map['ValidAdditionalPhone'];
    if (result == null) return const ValidAdditionalPhone.pure();

    return ValidAdditionalPhone.dirty(value: result.toString());
  }
}

extension ValidAdditionalPhoneExtension on ValidAdditionalPhone {
  ValidAdditionalPhoneError get isEmpty => ValidAdditionalPhoneError.isEmpty;

  ValidAdditionalPhoneError get numberStart9 =>
      ValidAdditionalPhoneError.numberStart9;

  ValidAdditionalPhoneError get leght1 => ValidAdditionalPhoneError.leght1;

  ValidAdditionalPhoneError get leght2 => ValidAdditionalPhoneError.leght2;

  ValidAdditionalPhoneError get leght3 => ValidAdditionalPhoneError.leght3;

  ValidAdditionalPhoneError get leght4 => ValidAdditionalPhoneError.leght4;

  ValidAdditionalPhoneError get leght5 => ValidAdditionalPhoneError.leght5;

  ValidAdditionalPhoneError get leght6 => ValidAdditionalPhoneError.leght6;

  ValidAdditionalPhoneError get leght7 => ValidAdditionalPhoneError.leght7;

  ValidAdditionalPhoneError get leght8 => ValidAdditionalPhoneError.leght8;

  ValidAdditionalPhoneError get leght9 => ValidAdditionalPhoneError.leght9;

  ValidAdditionalPhoneError get phoneNoChanged =>
      ValidAdditionalPhoneError.phoneNoChanged;
}

enum ValidAdditionalPhoneError {
  leght1,
  leght2,
  leght3,
  leght4,
  leght5,
  leght6,
  leght7,
  leght8,
  leght9,
  isEmpty,
  numberStart9,
  phoneNoChanged;
}
