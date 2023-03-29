// ignore_for_file: constant_identifier_names

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:nutrition/core/services/storage/app_storage_service.dart';

import 'package:nutrition/core/valid/valid_extension.dart';
import 'package:nutrition/features/health_profile/health_profile.dart';
import 'package:nutrition/localization/localization.dart';

final healthProfileProvider = StateNotifierProvider.autoDispose<
    HealthProfileNotifier, HealthProfileState>(
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
  final AppStorageService _storage;
  final AppLocalizations _l;

  void setDiabetes(int? v, {bool isSaveLocal = true}) {
    var error = '';
    if (v == null && state.validDiabetesModel.selectedIndex == null) {
      error = 'Подтвердите отсутствие или наличие диабета';
    }
    // update other provider
    final _ = _ref.read(diabetesProvider.notifier).load(v);
    state = state.copyWith(
      validDiabetesModel: state.validDiabetesModel.copyWith(
        selectedIndex: v,
        errorMessage: error,
      ),
    );
    if (isSaveLocal) _saveState();
  }

  void setCkd(int? v, {bool isSaveLocal = true}) {
    var error = '';
    if (v == null && state.validCkdModel.selectedIndex == null) {
      error = 'Стадия ХБП не выбрана';
    }
    // update other provider
    final _ = _ref.read(ckdProvider.notifier).load(v);
    state = state.copyWith(
      validCkdModel: state.validCkdModel.copyWith(
        selectedIndex: v,
        errorMessage: error,
      ),
    );
    if (isSaveLocal) _saveState();
  }

  void setDailyDiuresis(int? v, {bool isSaveLocal = true}) {
    var error = '';
    if (v == null && state.validDailyDiuresisModel.selectedIndex == null) {
      error = 'Не указан уровень суточного диуреза';
    }
    // update other provider
    final _ = _ref.read(dailyDiuresisProvider.notifier).load(v);
    state = state.copyWith(
      validDailyDiuresisModel: state.validDailyDiuresisModel.copyWith(
        selectedIndex: v,
        errorMessage: error,
      ),
    );
    if (isSaveLocal) _saveState();
  }

/* from page */
  void setActivity(int? v, {bool isSaveLocal = true}) {
    var error = '';
    if (v == null && state.validActivityModel.selectedIndex == null) {
      error = _l.activity_not_selected;
    }
    // update other provider
    final _ = _ref.read(activityProvider.notifier).load(v);
    state = state.copyWith(
      validActivityModel: state.validActivityModel.copyWith(
        selectedIndex: v,
        errorMessage: error,
      ),
    );
    if (isSaveLocal) _saveState();
  }

/* from page */
  void setHypertension(int? v, {bool isSaveLocal = true}) {
    var error = '';
    if (v == null && state.validHypertensionModel.selectedIndex == null) {
      error = 'Подтвердите отсутствие или наличие гипертензии';
    }
    // update other provider
    final _ = _ref.read(hypertensionProvider.notifier).load(v);
    state = state.copyWith(
      validHypertensionModel: state.validHypertensionModel.copyWith(
        selectedIndex: v,
        errorMessage: error,
      ),
    );
    if (isSaveLocal) _saveState();
  }

/* from page */
  void setGender(int? v, {bool isSaveLocal = true}) {
    var error = '';
    if (v == null && state.validGenderModel.selectedIndex == null) {
      error = _l.gender_not_selected;
    }
    // update other provider
    _ref.read(genderProvider.notifier).load(v);
    state = state.copyWith(
      validGenderModel: state.validGenderModel.copyWith(
        selectedIndex: v,
        errorMessage: error,
      ),
    );
    if (isSaveLocal) _saveState();
  }

/* from page */
  void setHeight(String? v, {bool isSaveLocal = true}) {
    var error = '';

    if (v?.isEmpty ?? true && state.validHeightModel.value.isEmpty) {
      error = 'Рост не указан';
    }
    state = state.copyWith(
      validHeightModel:
          state.validHeightModel.copyWith(value: v, errorMessage: error),
    );
    if (isSaveLocal) _saveState();
  }

/* from page */
  void setDate({required EnumDate enumDate, String? v}) {
    late final ValidBirthdayModel birthdayModel;

    birthdayModel = enumDate.mapValue(
      day: state.validBirthdayModel.copyWith(daySelected: v),
      month: state.validBirthdayModel.copyWith(monthSelected: v),
      year: state.validBirthdayModel.copyWith(yearSelected: v),
    );

    state = state.copyWith(validBirthdayModel: birthdayModel);
    _checkDate();
    _saveState();
  }

  void _checkDate() {
    final errorMsg = _validBirthDay();

    state = state.copyWith(
      validBirthdayModel:
          state.validBirthdayModel.copyWith(errorMessage: errorMsg),
    );
  }

  String _validBirthDay() {
    final isValidDay =
        state.validBirthdayModel.daySelected?.isNotEmpty ?? false;
    final isValidMonth =
        state.validBirthdayModel.monthSelected?.isNotEmpty ?? false;
    final isValidYear =
        state.validBirthdayModel.yearSelected?.isNotEmpty ?? false;
    var errorMsg = '';

    final dateRaw = _getDateRaw();
    if (!dateRaw.isDate()) {
      errorMsg = 'Дата рождения указана некорректно';
    }

    if (isValidDay && isValidMonth && !isValidYear) {
      errorMsg = 'Год не указан';
    }
    if (!isValidDay && isValidMonth && isValidYear) {
      errorMsg = 'День не указан';
    }
    if (isValidDay && !isValidMonth && isValidYear) {
      errorMsg = 'Месяц не указан';
    }
    if (!isValidDay && !isValidMonth && isValidYear) {
      errorMsg = 'День и месяц не указан';
    }
    if (!isValidDay && isValidMonth && !isValidYear) {
      errorMsg = 'День и год не указан';
    }
    if (isValidDay && !isValidMonth && !isValidYear) {
      errorMsg = 'Месяц и год не указан';
    }
    if (!isValidDay && !isValidMonth && !isValidYear) {
      errorMsg = 'Укажите дату рождения';
    }

    return errorMsg;
  }

  void setCreatinine(String? v, {bool isSaveLocal = true}) {
    var error = '';

    error = _validCreatinine(v);

    state = state.copyWith(
      validCreatinineModel:
          state.validCreatinineModel.copyWith(value: v, errorMessage: error),
    );

    if (isSaveLocal) _saveState();
/* 
    return isPure
        ? null
        : error == isEmpty
            ? 'Креатинин не указан'
            : error == isMax
                ? 'Указанный креатинин не поддерживается приложением'
                : error == isMin
                    ? 'Указанный креатинин не поддерживается приложением'
                    : error == isNoValid
                        ? 'Неправильное значение'
                        : error == noBirthday
                            ? 'Укажите дату своего рождения'
                            : error == noGender
                                ? 'Укажите ваш пол'
                                : null;

 */
  }

  void setUrineOutput(String? v, {bool isSaveLocal = true}) {
    var error = '';

    error = _validUrineOutput(v);

    state = state.copyWith(
      validUrineOutputModel:
          state.validUrineOutputModel.copyWith(value: v, errorMessage: error),
    );

    if (isSaveLocal) _saveState();
  }

/* from page */
  void setWeight(String? v, {bool isSaveLocal = true}) {
    var error = '';

    error = _validWeight(v);

    state = state.copyWith(
      validWeightModel:
          state.validWeightModel.copyWith(value: v, errorMessage: error),
    );

    if (isSaveLocal) _saveState();
  }

  String _validWeight(String? v) {
    if (v?.isEmpty ?? true && state.validWeightModel.value.isEmpty) {
      return 'Вес не указан';
    }

    final doubleValue = double.tryParse(v!) ?? -1;

    if (doubleValue.isNegative) return 'Неправильное значение';

    if (doubleValue.isMinValue(40)) {
      return 'Указанный вес не поддерживается приложением';
    }
    if (doubleValue.isMaxValue(200)) {
      return 'Указанный вес не поддерживается приложением';
    }

    return '';
  }

  String _validUrineOutput(String? v) {
    if (v?.isEmpty ?? true && state.validWeightModel.value.isEmpty) {
      return 'Не указано количестов выделяемой мочи';
    }

    final doubleValue = double.tryParse(v!) ?? -1;

    if (doubleValue.isNegative) return 'Неправильное значение';

    if (doubleValue.isMinValue(0)) {
      return 'Указанное значение мочи не поддерживается приложением';
    }
    if (doubleValue.isMaxValue(3000)) {
      return 'Указанное значение мочи не поддерживается приложением';
    }

    return '';
  }

  String _validCreatinine(String? v) {
    if (v?.isEmpty ?? true && state.validWeightModel.value.isEmpty) {
      return 'Креатинин не указан';
    }

    final doubleValue = double.tryParse(v!) ?? -1;

    if (doubleValue.isNegative) return 'Неправильное значение';

    if (doubleValue.isMinValue(0)) {
      return 'Указанный креатинин не поддерживается приложением';
    }
    if (doubleValue.isMaxValue(3000)) {
      return 'Указанный креатинин не поддерживается приложением';
    }

    return '';
  }

  String _getDateRaw() {
    final day = state.validBirthdayModel.daySelected;
    final monthNumber = state.validBirthdayModel.monthSelected;
    final year = state.validBirthdayModel.yearSelected;

    if (day != null && monthNumber != null && year != null) {
      return '$year-$monthNumber-$day';
    }

    return '';
  }

  void _saveState() {
    final heightModel = state.validHeightModel.copyWith(errorMessage: '');
    final birthdayModel = state.validBirthdayModel.copyWith(errorMessage: '');
    final genderModel = state.validGenderModel.copyWith(errorMessage: '');
    final weightModel = state.validWeightModel.copyWith(errorMessage: '');
    final activityModel = state.validActivityModel.copyWith(errorMessage: '');
    final validDiabetesModel = state.validDiabetesModel.copyWith(errorMessage: '');
    final dailyDiuresisModel =
        state.validDailyDiuresisModel.copyWith(errorMessage: '');
    final urineOutputModel =
        state.validUrineOutputModel.copyWith(errorMessage: '');
    final hypertensionModel =
        state.validHypertensionModel.copyWith(errorMessage: '');
    final validCkdModel = state.validCkdModel.copyWith(errorMessage: '');
    final validCreatinineModel =
        state.validCreatinineModel.copyWith(errorMessage: '');

    _storage.setHealthProfileState(
      state.copyWith(
        validBirthdayModel: birthdayModel,
        validGenderModel: genderModel,
        validHeightModel: heightModel,
        validWeightModel: weightModel,
        validActivityModel: activityModel,
        validHypertensionModel: hypertensionModel,
        validDailyDiuresisModel: dailyDiuresisModel,
        validUrineOutputModel: urineOutputModel,
        validCkdModel: validCkdModel,
        validCreatinineModel: validCreatinineModel,
        validDiabetesModel: validDiabetesModel,
      ),
    );
  }

/* from page */
  void check() {
    setGender(state.validGenderModel.selectedIndex, isSaveLocal: false);
    setActivity(state.validActivityModel.selectedIndex, isSaveLocal: false);
    setHypertension(
      state.validHypertensionModel.selectedIndex,
      isSaveLocal: false,
    );
    setDiabetes(state.validHypertensionModel.selectedIndex, isSaveLocal: false);
    _checkDate();
    setHeight(state.validHeightModel.value, isSaveLocal: false);
    setWeight(state.validWeightModel.value, isSaveLocal: false);
    setDailyDiuresis(
      state.validDailyDiuresisModel.selectedIndex,
      isSaveLocal: false,
    );
    setCkd(
      state.validCkdModel.selectedIndex,
      isSaveLocal: false,
    );
    setCreatinine(
      state.validCreatinineModel.value,
      isSaveLocal: false,
    );
  }
}
