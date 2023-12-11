import 'package:formz/formz.dart';

class PromocodeValid extends FormzInput<String, PromocodeValidError> {
  const PromocodeValid.pure({this.externalError}) : super.pure('');
  const PromocodeValid.dirty({
    this.externalError,
    String value = '',
  }) : super.dirty(value);

  final PromocodeValidError? externalError;
  @override
  PromocodeValidError? validator(String value) {
    if (externalError != null) {
      return externalError;
    }
    if (value.isEmpty) return PromocodeValidError.isEmpty;

    return null;
  }
}

extension PromocodeValidExt on PromocodeValid {
  PromocodeValidError get noValid => PromocodeValidError.noValid;
  PromocodeValidError get isExpired => PromocodeValidError.isExpired;
  PromocodeValidError get isEmpty => PromocodeValidError.isEmpty;
}

enum PromocodeValidError { isEmpty, noValid, isExpired }
