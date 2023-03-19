// ignore_for_file: constant_identifier_names

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:nutrition/core/services/storage/app_storage_service.dart';
import 'package:nutrition/core/utils/string_extensions.dart';
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

    _storage.setHealthProfileState(
      state.copyWith(
        birthdayModel: birthdayModel,
        genderModel: genderModel,
        heightModel: heightModel,
      ),
    );
  }

/* from page */
  void check() {
    setGender(state.genderModel.selectedIndex, isSaveLocal: false);
    _checkDate();
    setHeight(state.heightModel.value, isSaveLocal: false);
  }
}
