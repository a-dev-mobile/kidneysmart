// // ignore_for_file: constant_identifier_names

// part of 'health_profile_provider.dart';

// extension _ValidExtension on HealthProfileNotifier {

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
