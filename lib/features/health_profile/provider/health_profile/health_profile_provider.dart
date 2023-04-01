// ignore_for_file: constant_identifier_names

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:nutrition/core/services/storage/app_storage_service.dart';

import 'package:nutrition/features/health_profile/health_profile.dart';
import 'package:nutrition/localization/localization.dart';

final healthProfileProvider =
    StateNotifierProvider<HealthProfileNotifier, HealthProfileState>(
  (ref) {
    return HealthProfileNotifier(
      ref: ref,
    );
  },
);

class HealthProfileNotifier extends StateNotifier<HealthProfileState> {
  HealthProfileNotifier({
    required Ref ref,
  })  : _ref = ref,
        _storage = ref.read(appStorageServiceProvider),
        _l = ref.watch(appLocalizationsProvider),
        super(
          ref.read(appStorageServiceProvider).getHealthProfileState(),
        );

  // ignore: unused_field
  final Ref _ref;
  // ignore: unused_field
  final AppStorageService _storage;
  // ignore: unused_field
  final AppLocalizations _l;

/* from page */

/* from page */

/* from page */

/* from page */

/* from page */

  // void _saveState() {
  //   final heightModel = state.validHeightModel.copyWith(errorMessage: '');
  //   final birthdayModel = state.validBirthdayModel.copyWith(errorMessage: '');
  //   final genderModel = state.validGenderModel.copyWith(errorMessage: '');
  //   final weightModel = state.validWeightModel.copyWith(errorMessage: '');
  //   final activityModel = state.validActivityModel.copyWith(errorMessage: '');
  //   final validDiabetesModel =
  //       state.validDiabetesModel.copyWith(errorMessage: '');
  //   final dailyDiuresisModel =
  //       state.validDailyDiuresisModel.copyWith(errorMessage: '');
  //   final urineOutputModel =
  //       state.validUrineOutputModel.copyWith(errorMessage: '');
  //   final hypertensionModel =
  //       state.validHypertensionModel.copyWith(errorMessage: '');
  //   final validCkdModel = state.validCkdModel.copyWith(errorMessage: '');
  //   final validCreatinineModel =
  //       state.validCreatinineModel.copyWith(errorMessage: '');

  //   _storage.setHealthProfileState(
  //     state.copyWith(
  //       validBirthdayModel: birthdayModel,
  //       validGenderModel: genderModel,
  //       validHeightModel: heightModel,
  //       validWeightModel: weightModel,
  //       validActivityModel: activityModel,
  //       validHypertensionModel: hypertensionModel,
  //       validDailyDiuresisModel: dailyDiuresisModel,
  //       validUrineOutputModel: urineOutputModel,
  //       validCkdModel: validCkdModel,
  //       validCreatinineModel: validCreatinineModel,
  //       validDiabetesModel: validDiabetesModel,
  //     ),
  //   );
  // }

/* from page */
  void check() {
    // setGender(state.validGenderModel.selectedIndex, isSaveLocal: false);
    // setActivity(state.validActivityModel.selectedIndex, isSaveLocal: false);
    // setHypertension(
    //   state.validHypertensionModel.selectedIndex,
    //   isSaveLocal: false,
    // );
    // setDiabetes(state.validHypertensionModel.selectedIndex, isSaveLocal: false);
    // _checkDate();
    // setHeight(state.validHeightModel.result, isSaveLocal: false);
    // setWeight(state.validWeightModel.result, isSaveLocal: false);
    // setDailyDiuresis(
    //   state.validDailyDiuresisModel.selectedIndex,
    //   isSaveLocal: false,
    // );
    // setCkd(
    //   state.validCkdModel.selectedIndex,
    //   isSaveLocal: false,
    // );
    // setCreatinine(
    //   state.validCreatinineModel.value,
    //   isSaveLocal: false,
    // );
  }
}
