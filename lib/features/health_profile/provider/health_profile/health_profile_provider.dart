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



/* from page */
  void setActivity(int? v, {bool isSaveLocal = true}) {

  var error = '';
    if (v == null && state.genderModel.selectedIndex == null) {
      error = _l.activity_not_selected;
    }
    // update other provider
  final _ =  _ref.read(activityProvider.notifier).load(v);
    state = state.copyWith(
      activityModel: state.activityModel.copyWith(
        selectedIndex: v,
        errorMessage: error,
      ),
    );
    if (isSaveLocal) _saveState();

  }


/* from page */
  void setHypertension(int? v, {bool isSaveLocal = true}) {

  var error = '';
    if (v == null && state.hypertensionModel.selectedIndex == null) {
      error = 'Подтвердите отсутствие или наличие гипертензии';
    }
    // update other provider
  final _ =  _ref.read(hypertensionProvider.notifier).load(v);
    state = state.copyWith(
      hypertensionModel:   state.hypertensionModel.copyWith(
        selectedIndex: v,
        errorMessage: error,
      ),
    );
    if (isSaveLocal) _saveState();



  }



/* from page */
  void setGender(int? v, {bool isSaveLocal = true}) {
    var error = '';
    if (v == null && state.genderModel.selectedIndex == null) {
      error = _l.gender_not_selected;
    }
    // update other provider
    _ref.read(genderProvider.notifier).load(v);
    state = state.copyWith(
      genderModel: state.genderModel.copyWith(
        selectedIndex: v,
        errorMessage: error,
      ),
    );
    if (isSaveLocal) _saveState();
  }

/* from page */
  void setHeight(String? v, {bool isSaveLocal = true}) {
    var error = '';

    if (v?.isEmpty ?? true && state.heightModel.value.isEmpty) {
      error = 'Рост не указан';
    }
    state = state.copyWith(
      heightModel: state.heightModel.copyWith(value: v, errorMessage: error),
    );
    if (isSaveLocal) _saveState();
  }

/* from page */
  void setDate({required EnumDate enumDate, String? v}) {
    late final BirthdayModel birthdayModel;

    birthdayModel = enumDate.mapValue(
      day: state.birthdayModel.copyWith(daySelected: v),
      month: state.birthdayModel.copyWith(monthSelected: v),
      year: state.birthdayModel.copyWith(yearSelected: v),
    );

    state = state.copyWith(birthdayModel: birthdayModel);
    _checkDate();
    _saveState();
  }

  void _checkDate() {
    final errorMsg = _validBirthDay();

    state = state.copyWith(
      birthdayModel: state.birthdayModel.copyWith(errorMessage: errorMsg),
    );
  }

  String _validBirthDay() {
    final isValidDay = state.birthdayModel.daySelected?.isNotEmpty ?? false;
    final isValidMonth = state.birthdayModel.monthSelected?.isNotEmpty ?? false;
    final isValidYear = state.birthdayModel.yearSelected?.isNotEmpty ?? false;
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

/* from page */
  void setWeight(String? v, {bool isSaveLocal = true}) {
    var error = '';

    error = _validWeight(v);

    state = state.copyWith(
      weightModel: state.weightModel.copyWith(value: v, errorMessage: error),
    );

    if (isSaveLocal) _saveState();
  }

  String _validWeight(String? v) {
    if (v?.isEmpty ?? true && state.weightModel.value.isEmpty) {
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

  String _getDateRaw() {
    final day = state.birthdayModel.daySelected;
    final monthNumber = state.birthdayModel.monthSelected;
    final year = state.birthdayModel.yearSelected;

    if (day != null && monthNumber != null && year != null) {
      return '$year-$monthNumber-$day';
    }

    return '';
  }

  void _saveState() {
    final heightModel = state.heightModel.copyWith(errorMessage: '');
    final birthdayModel = state.birthdayModel.copyWith(errorMessage: '');
    final genderModel = state.genderModel.copyWith(errorMessage: '');
    final weightModel = state.weightModel.copyWith(errorMessage: '');
    final activityModel = state.activityModel.copyWith(errorMessage: '');
    final hypertensionModel = state.hypertensionModel.copyWith(errorMessage: '');

    _storage.setHealthProfileState(
      state.copyWith(
        birthdayModel: birthdayModel,
        genderModel: genderModel,
        heightModel: heightModel,
        weightModel: weightModel,
        activityModel: activityModel,
        hypertensionModel: hypertensionModel,
      ),
    );
  }

/* from page */
  void check() {
    setGender(state.genderModel.selectedIndex, isSaveLocal: false);
    setActivity(state.activityModel.selectedIndex, isSaveLocal: false);
    setHypertension(state.hypertensionModel.selectedIndex, isSaveLocal: false);
    _checkDate();
    setHeight(state.heightModel.value, isSaveLocal: false);
    setWeight(state.weightModel.value, isSaveLocal: false);
  }


}
