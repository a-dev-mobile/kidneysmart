// // ignore_for_file: constant_identifier_names

// part of 'health_profile_provider.dart';

// extension _TextTranslateExtension on HealthProfileNotifier {
//   String _getTextYearRu(int num) {
//     var numUpdate = num % 100;

//     if (numUpdate > 19) {
//       numUpdate = num % 10;
//     }
//     switch (numUpdate) {
//       case 1:
//         {
//           return 'год';
//         }
//       case 2:
//       case 3:
//       case 4:
//         {
//           return 'года';
//         }

//       default:
//         {
//           return 'лет';
//         }
//     }
//   }

//   String _getTextYearMonth(int num) {
//     switch (num) {
//       case 1:
//         return 'месяц';

//       case 2:
//       case 3:
//       case 4:
//         return 'месяца';

//       default:
//         return 'месяцев';
//     }
//   }

//   String _getBmiStatus(EnumWeightStatus status) {
//     return status.mapValue(
//       severe_thinness: 'Выраженный дефицит массы тела',
//       moderate_thinness: 'Умеренный (дефицит) массы тела',
//       mild_thinness: 'Легкий (дефицит) массы тела',
//       normal: 'Норма',
//       overweight: 'Избыточная масса тела (предожирение)',
//       obesity_1: 'Ожирение первой степени',
//       obesity_2: 'Ожирение второй степени',
//       obesity_3: 'Ожирение третьей степени',
//       obesity_4: 'Ожирение четвертой степени',
//       none: '',
//     );
//   }

//   String _getTypeCalcBmiPeople(EnumTypeCalcBmiPeople enumBmiCalc) {
//     return enumBmiCalc.mapValue(
//       children: 'Расчет для детей или подросков',
//       adults: 'Расчет для взрослых',
//       none: '',
//     );
//   }

//   String _getCkdStage(EnumCkd stage) {
//     return stage.mapValue(
//       one: 'Stage I',
//       two: 'Stage II',
//       threeA: 'Stage IIIa',
//       threeB: 'Stage IIIb',
//       four: 'Stage IV',
//       five: 'Stage V',
//       none: '',
//       calculate: '',
//       fiveDialysis: 'Stage V (dialysis)',
//     );
//   }
// }
