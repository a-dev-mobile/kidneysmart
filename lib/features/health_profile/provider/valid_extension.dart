// // ignore_for_file: constant_identifier_names

// part of 'health_profile_provider.dart';

// extension _ValidExtension on HealthProfileNotifier {

//   String _validWeightDry(String? v, HealthProfileState state) {
//     if (v?.isEmpty ?? true && state.dryWeightField.result.isEmpty) {
//       return 'Выберите значение';
//     }

//     final doubleValue = _parseValue(v, state);

//     if (doubleValue.isNegative) return 'Неправильное значение';

//     if (doubleValue.isMinValue(20)) {
//       return 'Указанный вес не поддерживается приложением';
//     }
//     if (doubleValue.isMaxValue(350)) {
//       return 'Указанный вес не поддерживается приложением';
//     }

//     return '';
//   }

//   String _validCreatinine(String? v, HealthProfileState state) {
//     if (v?.isEmpty ?? true && state.creatinine.result.isEmpty) {
//       return 'Креатинин не указан';
//     }

//     final updateV = v ?? state.creatinine.result;

//     final doubleValue = double.tryParse(updateV) ?? -1;

//     if (doubleValue.isNegative) return 'Неправильное значение';

//     if (doubleValue.isMinValue(0)) {
//       return 'Указанный креатинин не поддерживается приложением';
//     }
//     if (doubleValue.isMaxValue(3000)) {
//       return 'Указанный креатинин не поддерживается приложением';
//     }
//     // if (state.dateBirthday.enumValid != EnumValid.valid) {
//     //   return 'Укажите дату рождения';
//     // }
//     // if (state.gender.enumValid != EnumValid.valid) {
//     //   return 'Укажите пол';
//     // }

//     return '';
//   }

//   String _getErrorMarkdownValidCalcBmi(HealthProfileState state) {
//     final isValidBirthday = state.dateBirthday.enumValid == EnumValid.valid;
//     final isValidHeight = state.height.enumValid == EnumValid.valid;
//     final isValidWeight = state.weight.enumValid == EnumValid.valid;

//     if (isValidWeight && isValidHeight && isValidBirthday) {
//       return '';
//     }

//     final baseText = _l.calculate_enter;
//     final dateOfBirth = _l.date_of_birth;
//     final height = _l.height;
//     final weight = _l.weight;

//     var changeText = '';

//     if (isValidHeight && isValidWeight) {
//       changeText = '''
// ### $baseText
// * $dateOfBirth
// ''';
//     } else if (isValidBirthday && isValidWeight) {
//       changeText = '''
// $baseText
// * $height
// ''';
//     } else if (isValidBirthday && isValidHeight) {
//       changeText = '''
// $baseText
// * $weight
// ''';
//     } else if (isValidBirthday) {
//       changeText = '''
// $baseText
// * $height
// * $weight
// ''';
//     } else if (isValidHeight) {
//       changeText = '''
// $baseText
// * $weight
// * $dateOfBirth
// ''';
//     } else if (isValidWeight) {
//       changeText = '''
// $baseText
// * $height
// * $dateOfBirth
// ''';
//     } else {
//       changeText = '''
// $baseText
// * $height
// * $weight
// * $dateOfBirth
// ''';
//     }

//     return changeText;
//   }

//   String _getErrorMarkdownValidCalcGfr(HealthProfileState state) {
//     final isValidGender = state.gender.enumValid == EnumValid.valid;
//     final isValidDateBirthday = state.dateBirthday.enumValid == EnumValid.valid;
//     final isValidCreatinine = state.creatinine.enumValid == EnumValid.valid;

//     if (isValidGender && isValidDateBirthday && isValidCreatinine) {
//       return '';
//     }

//     final baseText = _l.calculate_enter;
//     final dateOfBirth = _l.date_of_birth;

//     final gender = _l.gender;
//     final creatinine = _l.creatinine;
//     var changeText = '';

//     if (!isValidGender && !isValidDateBirthday && !isValidCreatinine) {
//       changeText = '''
// ### $baseText
// * $gender
// * $dateOfBirth
// * $creatinine
// ''';
//     } else if (!isValidGender && !isValidDateBirthday && isValidCreatinine) {
//       changeText = '''
// $baseText
// * $gender
// * $dateOfBirth
// ''';
//     } else if (!isValidGender && isValidDateBirthday && !isValidCreatinine) {
//       changeText = '''
// $baseText
// * $gender
// * $creatinine
// ''';
//     } else if (isValidGender && !isValidDateBirthday && !isValidCreatinine) {
//       changeText = '''
// $baseText
// * $dateOfBirth
// * $creatinine
// ''';
//     } else if (isValidGender && isValidDateBirthday && !isValidCreatinine) {
//       changeText = '''
// $baseText
// * $creatinine
// ''';
//     } else if (isValidGender && !isValidDateBirthday && isValidCreatinine) {
//       changeText = '''
// $baseText
// * $dateOfBirth
// ''';
//     } else if (!isValidGender && isValidDateBirthday && isValidCreatinine) {
//       changeText = '''
// $baseText
// * $gender
// ''';
//     } else {
//       changeText = '''
// $baseText
// * $gender
// * $dateOfBirth
// ''';
//     }

//     return changeText;
//   }
// }
