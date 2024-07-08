// // ignore_for_file: avoid_bool_literals_in_conditional_expressions
// // ignore_for_file: sort_constructors_first
// import 'dart:convert';

// import 'package:flutter/material.dart';
// import 'package:kidneysmart/features/health_profile/health_profile.dart';

// @immutable
// class HealthProfileState {
//   /* init: false */
//   final bool isValid;
// /* init: const DateBirthdayModel() */
//   final DateBirthdayModel dateBirthday;

//   /* init: const DiabetesModel() */
//   final DiabetesModel diabet;

//   /* init: const HeightModel() */
//   final HeightModel height;

//   /* init: const WeightModel() */
//   final WeightModel weight;

//   /* init: const DryWeightSelectModel() */
//   final DryWeightSelectModel dryWeightSelect;
//   /* init: const DryWeightFieldModel() */
//   final DryWeightFieldModel dryWeightField;

//   /* init: const DialysisModel() */
//   final DialysisModel dialysis;
//   /* init: const DailyDiuresisModel() */
//   final DailyDiuresisModel dailyDiuresis;

//   /* init: const HypertensionModel() */
//   final HypertensionModel hypertension;

//   /* init: const UrineModel() */
//   final UrineModel urine;
//   /* init: const CreatinineModel() */
//   final CreatinineModel creatinine;

//   /* init: const ActivityModel() */
//   final ActivityModel activity;
//   /* init: const CkdModel() */
//   final CkdModel ckd;

//   /* init: const CalculateBmiModel() */
//   final CalculateBmiModel bmi;

//   /* init: const CalculateGfrModel() */
//   final CalculateGfrModel gfr;
//   /* init: '' */
//   final String markdownError;
//   // end

// //          --TURN_GEN--
// //             (data)
// //  *************************************
// //         GENERATED CODE
// //  *************************************
//   const HealthProfileState({
//     this.isValid = false,
//     this.dateBirthday = const DateBirthdayModel(),
//     this.diabet = const DiabetesModel(),
//     this.height = const HeightModel(),
//     this.weight = const WeightModel(),
//     this.dryWeightSelect = const DryWeightSelectModel(),
//     this.dryWeightField = const DryWeightFieldModel(),
//     this.gender = const GenderModel(),
//     this.dialysis = const DialysisModel(),
//     this.dailyDiuresis = const DailyDiuresisModel(),
//     this.hypertension = const HypertensionModel(),
//     this.urine = const UrineModel(),
//     this.creatinine = const CreatinineModel(),
//     this.activity = const ActivityModel(),
//     this.ckd = const CkdModel(),
//     this.bmi = const CalculateBmiModel(),
//     this.gfr = const CalculateGfrModel(),
//     this.markdownError = '',
//   });

//   Map<String, dynamic> toMap() {
//     return <String, dynamic>{
//       'isValid': isValid,
//       'dateBirthday': dateBirthday.toMap(),
//       'diabet': diabet.toMap(),
//       'height': height.toMap(),
//       'weight': weight.toMap(),
//       'dryWeightSelect': dryWeightSelect.toMap(),
//       'dryWeightField': dryWeightField.toMap(),
//       'gender': gender.toMap(),
//       'dialysis': dialysis.toMap(),
//       'dailyDiuresis': dailyDiuresis.toMap(),
//       'hypertension': hypertension.toMap(),
//       'urine': urine.toMap(),
//       'creatinine': creatinine.toMap(),
//       'activity': activity.toMap(),
//       'ckd': ckd.toMap(),
//       'bmi': bmi.toMap(),
//       'gfr': gfr.toMap(),
//       'markdownError': markdownError,
//     };
//   }

//   factory HealthProfileState.fromMap(Map<dynamic, dynamic>? map) {
//     if (map == null) return const HealthProfileState();

//     return HealthProfileState(
//       isValid: map['isValid'] as bool? ?? false,
//       dateBirthday: map['dateBirthday'] != null
//           ? DateBirthdayModel.fromMap(
//               Map<String, dynamic>.from(map['dateBirthday'] as Map),
//             )
//           : const DateBirthdayModel(),
//       diabet: map['diabet'] != null
//           ? DiabetesModel.fromMap(
//               Map<String, dynamic>.from(map['diabet'] as Map),
//             )
//           : const DiabetesModel(),
//       height: map['height'] != null
//           ? HeightModel.fromMap(
//               Map<String, dynamic>.from(map['height'] as Map),
//             )
//           : const HeightModel(),
//       weight: map['weight'] != null
//           ? WeightModel.fromMap(
//               Map<String, dynamic>.from(map['weight'] as Map),
//             )
//           : const WeightModel(),
//       dryWeightSelect: map['dryWeightSelect'] != null
//           ? DryWeightSelectModel.fromMap(
//               Map<String, dynamic>.from(map['dryWeightSelect'] as Map),
//             )
//           : const DryWeightSelectModel(),
//       dryWeightField: map['dryWeightField'] != null
//           ? DryWeightFieldModel.fromMap(
//               Map<String, dynamic>.from(map['dryWeightField'] as Map),
//             )
//           : const DryWeightFieldModel(),
//       gender: map['gender'] != null
//           ? GenderModel.fromMap(
//               Map<String, dynamic>.from(map['gender'] as Map),
//             )
//           : const GenderModel(),
//       dialysis: map['dialysis'] != null
//           ? DialysisModel.fromMap(
//               Map<String, dynamic>.from(map['dialysis'] as Map),
//             )
//           : const DialysisModel(),
//       dailyDiuresis: map['dailyDiuresis'] != null
//           ? DailyDiuresisModel.fromMap(
//               Map<String, dynamic>.from(map['dailyDiuresis'] as Map),
//             )
//           : const DailyDiuresisModel(),
//       hypertension: map['hypertension'] != null
//           ? HypertensionModel.fromMap(
//               Map<String, dynamic>.from(map['hypertension'] as Map),
//             )
//           : const HypertensionModel(),
//       urine: map['urine'] != null
//           ? UrineModel.fromMap(
//               Map<String, dynamic>.from(map['urine'] as Map),
//             )
//           : const UrineModel(),
//       creatinine: map['creatinine'] != null
//           ? CreatinineModel.fromMap(
//               Map<String, dynamic>.from(map['creatinine'] as Map),
//             )
//           : const CreatinineModel(),
//       activity: map['activity'] != null
//           ? ActivityModel.fromMap(
//               Map<String, dynamic>.from(map['activity'] as Map),
//             )
//           : const ActivityModel(),
//       ckd: map['ckd'] != null
//           ? CkdModel.fromMap(
//               Map<String, dynamic>.from(map['ckd'] as Map),
//             )
//           : const CkdModel(),
//       bmi: map['bmi'] != null
//           ? CalculateBmiModel.fromMap(
//               Map<String, dynamic>.from(map['bmi'] as Map),
//             )
//           : const CalculateBmiModel(),
//       gfr: map['gfr'] != null
//           ? CalculateGfrModel.fromMap(
//               Map<String, dynamic>.from(map['gfr'] as Map),
//             )
//           : const CalculateGfrModel(),
//       markdownError: map['markdownError'] as String? ?? '',
//     );
//   }

//   HealthProfileState copyWith({
//     bool? isValid,
//     DateBirthdayModel? dateBirthday,
//     DiabetesModel? diabet,
//     HeightModel? height,
//     WeightModel? weight,
//     DryWeightSelectModel? dryWeightSelect,
//     DryWeightFieldModel? dryWeightField,
//     GenderModel? gender,
//     DialysisModel? dialysis,
//     DailyDiuresisModel? dailyDiuresis,
//     HypertensionModel? hypertension,
//     UrineModel? urine,
//     CreatinineModel? creatinine,
//     ActivityModel? activity,
//     CkdModel? ckd,
//     CalculateBmiModel? bmi,
//     CalculateGfrModel? gfr,
//     String? markdownError,
//   }) {
//     return HealthProfileState(
//       isValid: isValid ?? this.isValid,
//       dateBirthday: dateBirthday ?? this.dateBirthday,
//       diabet: diabet ?? this.diabet,
//       height: height ?? this.height,
//       weight: weight ?? this.weight,
//       dryWeightSelect: dryWeightSelect ?? this.dryWeightSelect,
//       dryWeightField: dryWeightField ?? this.dryWeightField,
//       gender: gender ?? this.gender,
//       dialysis: dialysis ?? this.dialysis,
//       dailyDiuresis: dailyDiuresis ?? this.dailyDiuresis,
//       hypertension: hypertension ?? this.hypertension,
//       urine: urine ?? this.urine,
//       creatinine: creatinine ?? this.creatinine,
//       activity: activity ?? this.activity,
//       ckd: ckd ?? this.ckd,
//       bmi: bmi ?? this.bmi,
//       gfr: gfr ?? this.gfr,
//       markdownError: markdownError ?? this.markdownError,
//     );
//   }

//   String toJson() => json.encode(toMap());
//   factory HealthProfileState.fromJson(String source) =>
//       HealthProfileState.fromMap(
//         json.decode(source) as Map<String, dynamic>,
//       );

//   @override
//   bool operator ==(dynamic other) {
//     return identical(this, other) ||
//         (other.runtimeType == runtimeType &&
//             other is HealthProfileState &&
//             (identical(
//                   other.isValid,
//                   isValid,
//                 ) ||
//                 other.isValid == isValid) &&
//             (identical(
//                   other.dateBirthday,
//                   dateBirthday,
//                 ) ||
//                 other.dateBirthday == dateBirthday) &&
//             (identical(
//                   other.diabet,
//                   diabet,
//                 ) ||
//                 other.diabet == diabet) &&
//             (identical(
//                   other.height,
//                   height,
//                 ) ||
//                 other.height == height) &&
//             (identical(
//                   other.weight,
//                   weight,
//                 ) ||
//                 other.weight == weight) &&
//             (identical(
//                   other.dryWeightSelect,
//                   dryWeightSelect,
//                 ) ||
//                 other.dryWeightSelect == dryWeightSelect) &&
//             (identical(
//                   other.dryWeightField,
//                   dryWeightField,
//                 ) ||
//                 other.dryWeightField == dryWeightField) &&
//             (identical(
//                   other.gender,
//                   gender,
//                 ) ||
//                 other.gender == gender) &&
//             (identical(
//                   other.dialysis,
//                   dialysis,
//                 ) ||
//                 other.dialysis == dialysis) &&
//             (identical(
//                   other.dailyDiuresis,
//                   dailyDiuresis,
//                 ) ||
//                 other.dailyDiuresis == dailyDiuresis) &&
//             (identical(
//                   other.hypertension,
//                   hypertension,
//                 ) ||
//                 other.hypertension == hypertension) &&
//             (identical(
//                   other.urine,
//                   urine,
//                 ) ||
//                 other.urine == urine) &&
//             (identical(
//                   other.creatinine,
//                   creatinine,
//                 ) ||
//                 other.creatinine == creatinine) &&
//             (identical(
//                   other.activity,
//                   activity,
//                 ) ||
//                 other.activity == activity) &&
//             (identical(
//                   other.ckd,
//                   ckd,
//                 ) ||
//                 other.ckd == ckd) &&
//             (identical(
//                   other.bmi,
//                   bmi,
//                 ) ||
//                 other.bmi == bmi) &&
//             (identical(
//                   other.gfr,
//                   gfr,
//                 ) ||
//                 other.gfr == gfr) &&
//             (identical(
//                   other.markdownError,
//                   markdownError,
//                 ) ||
//                 other.markdownError == markdownError));
//   }

//   @override
//   int get hashCode => Object.hashAll([
//         runtimeType,
//         isValid,
//         dateBirthday,
//         diabet,
//         height,
//         weight,
//         dryWeightSelect,
//         dryWeightField,
//         gender,
//         dialysis,
//         dailyDiuresis,
//         hypertension,
//         urine,
//         creatinine,
//         activity,
//         ckd,
//         bmi,
//         gfr,
//         markdownError,
//       ]);

//   @override
//   String toString() {
//     return 'HealthProfileState(isValid: $isValid, dateBirthday: $dateBirthday, diabet: $diabet, height: $height, weight: $weight, dryWeightSelect: $dryWeightSelect, dryWeightField: $dryWeightField, gender: $gender, dialysis: $dialysis, dailyDiuresis: $dailyDiuresis, hypertension: $hypertension, urine: $urine, creatinine: $creatinine, activity: $activity, ckd: $ckd, bmi: $bmi, gfr: $gfr, markdownError: $markdownError, )';
//   }
// }
