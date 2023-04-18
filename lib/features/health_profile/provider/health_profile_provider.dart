// ignore_for_file: constant_identifier_names, prefer_if_elements_to_conditional_expressions, prefer_int_literals

import 'dart:math';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:nutrition/core/enum/enum.dart';
import 'package:nutrition/core/services/storage/app_storage_service.dart';
import 'package:nutrition/core/utils/app_utils.dart';
import 'package:nutrition/core/valid/valid_extension.dart';

import 'package:nutrition/features/health_profile/health_profile.dart';
import 'package:nutrition/localization/localization.dart';

part 'init_data_extension.dart';
part 'text_translate_extension.dart';
part 'helper_method_extension.dart';
part 'valid_extension.dart';

final healthProfileProvider = StateNotifierProvider.autoDispose<
    HealthProfileNotifier, HealthProfileState>(
  (ref) {
    return HealthProfileNotifier(
      l: ref.watch(appLocalizationsProvider),
      storage: ref.read(appStorageServiceProvider),
    )..load();
  },
);

class HealthProfileNotifier extends StateNotifier<HealthProfileState> {
  HealthProfileNotifier({
    required AppLocalizations l,
    required AppStorageService storage,
  })  : _storage = storage,
        _l = l,
        super(
          storage.getHealthProfileState(),
        );

  final AppStorageService _storage;
  final AppLocalizations _l;

  /// preload
  void load() {
    // init date
    final days = _initDayMonth(start: 1, end: 31);
    final months = _initDayMonth(start: 1, end: 12);
    final years = _initYears();
    // init height
    final listHeight = _initHeight();
    // init gender
    final listGender = _initGender;
    // init dialysis
    final listDialysis = _initDialysis;
    // init dry weight
    final listDryWeight = _initDryWeigth;
    // init diabet
    final listDiabet = <DiabetesItemModel>[
      DiabetesItemModel(
        enumDiabetes: EnumDiabetes.yes,
        value: _l.yes_caps,
      ),
      DiabetesItemModel(
        enumDiabetes: EnumDiabetes.no,
        value: _l.no_caps,
      ),
    ];
    // init DailyDiuresis
    final listDailyDiuresis = _initDailyDiuresis;
    // init Hypertension
    final listHypertension = _initHypertension;
    // Activity
    final listActivity = <ActivityItemModel>[
      ActivityItemModel(enumActivity: EnumActivity.light, value: _l.light),
      ActivityItemModel(enumActivity: EnumActivity.normal, value: _l.normal),
    ];

    // init ckd
    final listCkd = _initCkdStage;

    state = state.copyWith(
      ckd: state.ckd.copyWith(
        listCkd: listCkd,
        listSelected: _getListBool(
          length: listCkd.length,
          selectedIndex: state.ckd.selectedIndex,
        ),
      ),
      activity: state.activity.copyWith(
        listActivity: listActivity,
        listSelected: _getListBool(
          length: listActivity.length,
          selectedIndex: state.activity.selectedIndex,
        ),
      ),
      hypertension: state.hypertension.copyWith(
        listHypertension: listHypertension,
        listSelected: _getListBool(
          length: listHypertension.length,
          selectedIndex: state.hypertension.selectedIndex,
        ),
      ),
      dailyDiuresis: state.dailyDiuresis.copyWith(
        listDailyDiuresis: listDailyDiuresis,
        listSelected: _getListBool(
          length: listDailyDiuresis.length,
          selectedIndex: state.dailyDiuresis.selectedIndex,
        ),
      ),
      diabet: state.diabet.copyWith(
        listDiabet: listDiabet,
        listSelected: _getListBool(
          length: listDiabet.length,
          selectedIndex: state.diabet.selectedIndex,
        ),
      ),
      dialysis: state.dialysis.copyWith(
        listDialysis: listDialysis,
        listSelected: _getListBool(
          length: listDialysis.length,
          selectedIndex: state.dialysis.selectedIndex,
        ),
      ),
      dryWeightSelect: state.dryWeightSelect.copyWith(
        listDryWeight: listDryWeight,
        listSelected: _getListBool(
          length: listDryWeight.length,
          selectedIndex: state.dryWeightSelect.selectedIndex,
        ),
      ),
      gender: state.gender.copyWith(
        listGender: listGender,
        listSelected: _getListBool(
          length: listGender.length,
          selectedIndex: state.gender.selectedIndex,
        ),
      ),
      dateBirthday:
          state.dateBirthday.copyWith(days: days, months: months, years: years),
      height: state.height.copyWith(heightList: listHeight),
    );

    _calcBmi();
    _calcGfr();
  }

  void setGender(int? v, {bool isSaveState = true}) {
    var error = '';
    if (v == null && state.gender.selectedIndex == null) {
      error = _l.gender_not_selected;
    }
    // update
    final selectedIndex = v ?? state.gender.selectedIndex;
    final listGender = state.gender.listGender;

    final listBool =
        _getListBool(length: listGender.length, selectedIndex: selectedIndex);

    state = state.copyWith(
      gender: state.gender.copyWith(
        listGender: listGender,
        selectedIndex: v,
        listSelected: listBool,
        enumGender:
            selectedIndex != null ? listGender[selectedIndex].enumGender : null,
        error: error,
        enumValid: error.isEmpty ? EnumValid.valid : EnumValid.error,
      ),
    );

    _saveState(isSaveState);
    setCreatinine(null);
  }

  void setDialysis(int? v, {bool isSaveState = true}) {
    var error = '';
    if (v == null && state.dialysis.selectedIndex == null) {
      error = 'Укажите есть у вас диализ или нет';
    }
    // update
    final selectedIndex = v ?? state.dialysis.selectedIndex;
    final listDialysis = state.dialysis.listDialysis;

    final listBool =
        _getListBool(length: listDialysis.length, selectedIndex: selectedIndex);

    final enumDialysis = selectedIndex != null
        ? listDialysis[selectedIndex].enumDialysis
        : EnumDialysis.none;

// расчет если у нас 5 стадия и есть диализ, то меняем на 5стадию с диализом
    var enumCkd = state.ckd.enumCkdSelected;

    final isFiveStage =
        enumCkd == EnumCkd.five || enumCkd == EnumCkd.fiveDialysis;
    final isDialysis = enumDialysis == EnumDialysis.homodialysis ||
        enumDialysis == EnumDialysis.perinatal;
    if (isFiveStage && isDialysis) {
      enumCkd = EnumCkd.fiveDialysis;
    } else if (isFiveStage && enumDialysis == EnumDialysis.no) {
      enumCkd = EnumCkd.five;
    }

    state = state.copyWith(
      ckd: state.ckd.copyWith(enumCkdSelected: enumCkd),
      dialysis: state.dialysis.copyWith(
        listDialysis: listDialysis,
        selectedIndex: v,
        listSelected: listBool,
        enumDialysis: enumDialysis,
        error: error,
        enumValid: error.isEmpty ? EnumValid.valid : EnumValid.error,
      ),
    );
    _calcGfr();
    _saveState(isSaveState);
  }

  void setDate({EnumDate? enumDate, String? v, bool isSaveState = true}) {
    if (enumDate != null) {
      enumDate.map(
        day: () {
          state =
              state.copyWith(dateBirthday: state.dateBirthday.copyWith(day: v));
        },
        month: () {
          state = state.copyWith(
            dateBirthday: state.dateBirthday.copyWith(month: v),
          );
        },
        year: () {
          state = state.copyWith(
            dateBirthday: state.dateBirthday.copyWith(year: v),
          );
        },
      );
    }
    final error = _getErrorValidBirthDay(state);
    final day = state.dateBirthday.day;
    final month = state.dateBirthday.month;
    final year = state.dateBirthday.year;
    final enumValid = error.isEmpty ? EnumValid.valid : EnumValid.error;

    final dateTime = error.isEmpty ? DateTime.parse('$year-$month-$day') : null;

    final dateTimeNow = DateTime.now();

    var userYearFine = error.isEmpty
        ? dateTimeNow.year - dateTime!.year
        : state.dateBirthday.userYearFine;
    var userMonth = error.isEmpty
        ? dateTimeNow.month - dateTime!.month
        : state.dateBirthday.userMonth;

// более точное преобразование с учетом месяцев
    final userYearCoarse = userYearFine;
    if (userMonth.isNegative) {
      userYearFine = userYearFine - 1;
      userMonth = userMonth + 12;
    }

    state = state.copyWith(
      dateBirthday: state.dateBirthday.copyWith(
        dateTime: dateTime,
        enumValid: enumValid,
        error: error,
        userYearCoarse: userYearCoarse,
        userYearFine: userYearFine,
        userMonth: userMonth,
      ),
    );

    // _upgradeCreatinine(error);

    _saveState(isSaveState);

    _calcBmi();

    setCreatinine(null);
  }

  void setHeight(String? v, {bool isSaveState = true}) {
    var error = '';

    if (v?.isEmpty ?? true && state.height.result.isEmpty) {
      error = 'Рост не указан';
    }
    state = state.copyWith(
      height: state.height.copyWith(
        result: v,
        value: double.tryParse(v ?? ''),
        error: error,
        enumValid: error.isEmpty ? EnumValid.valid : EnumValid.error,
      ),
    );
    _saveState(isSaveState);
    _calcBmi();
  }

  void setWeight(String? v, {bool isSaveState = true}) {
    var error = '';

    error = _validWeight(v, state);

    state = state.copyWith(
      weight: state.weight.copyWith(
        result: v,
        value: error.isEmpty ? _parseValue(v, state) : null,
        error: error,
        enumValid: error.isEmpty ? EnumValid.valid : EnumValid.error,
      ),
    );

    _saveState(isSaveState);
    _calcBmi();
  }

  void setFieldDryWeight(String? v, {bool isSaveState = true}) {
    var error = '';

    error = _validWeightDry(v, state);

    state = state.copyWith(
      dryWeightField: state.dryWeightField.copyWith(
        result: v,
        value: error.isEmpty ? _parseValue(v, state) : null,
        error: error,
        enumValid: error.isEmpty ? EnumValid.valid : EnumValid.error,
      ),
    );

    _saveState(isSaveState);
  }

  void changeTypeUnitWeight(EnumUnitWeight? value) {
    state =
        state.copyWith(weight: state.weight.copyWith(enumUnitWeight: value));
  }

  void setDiabetes(int? v, {bool isSaveState = true}) {
    var error = '';
    if (v == null && state.diabet.selectedIndex == null) {
      error = 'Подтвердите отсутствие или наличие диабета';
    }

    final selectedIndex = v ?? state.diabet.selectedIndex;
    final listDiabet = state.diabet.listDiabet;
    final listBool =
        _getListBool(length: listDiabet.length, selectedIndex: selectedIndex);

    state = state.copyWith(
      diabet: state.diabet.copyWith(
        listDiabet: listDiabet,
        listSelected: listBool,
        selectedIndex: v,
        error: error,
        enumValid: error.isEmpty ? EnumValid.valid : EnumValid.error,
      ),
    );

    _saveState(isSaveState);
  }

  void setDailyDiuresis(int? v, {bool isSaveState = true}) {
    var error = '';
    if (v == null && state.dailyDiuresis.selectedIndex == null) {
      error = 'Не указан уровень суточного диуреза';
    }

    final selectedIndex = v ?? state.dailyDiuresis.selectedIndex;
    final listDailyDiuresis = state.dailyDiuresis.listDailyDiuresis;

    final activeItem =
        selectedIndex != null ? listDailyDiuresis[selectedIndex] : null;

    final listBool = _getListBool(
      length: listDailyDiuresis.length,
      selectedIndex: selectedIndex,
    );
    state = state.copyWith(
      dailyDiuresis: state.dailyDiuresis.copyWith(
        listDailyDiuresis: listDailyDiuresis,
        selectedIndex: v,
        listSelected: listBool,
        error: error,
        enumValid: error.isEmpty ? EnumValid.valid : EnumValid.error,
        isShowInput:
            activeItem?.enumDailyDiuresis == EnumDailyDiuresis.enterValue,
      ),
    );

    _saveState(isSaveState);
  }

  void setHypertension(int? v, {bool isSaveState = true}) {
    var error = '';
    if (v == null && state.hypertension.selectedIndex == null) {
      error = 'Подтвердите отсутствие или наличие гипертензии';
    }

    final selectedIndex = v ?? state.hypertension.selectedIndex;
    final listHypertension = state.hypertension.listHypertension;
    final listBool = _getListBool(
      length: listHypertension.length,
      selectedIndex: selectedIndex,
    );

    state = state.copyWith(
      hypertension: state.hypertension.copyWith(
        listHypertension: listHypertension,
        listSelected: listBool,
        selectedIndex: v,
        error: error,
        enumValid: error.isEmpty ? EnumValid.valid : EnumValid.error,
      ),
    );

    _saveState(isSaveState);
  }

  void setUrineOutput(String? v, {bool isSaveState = true}) {
    var error = '';

    error = _validUrineOutput(v, state);

    state = state.copyWith(
      urine: state.urine.copyWith(
        result: v,
        enumValid: error.isEmpty ? EnumValid.valid : EnumValid.error,
        error: error,
        value: error.isEmpty ? double.tryParse(v!) : null,
      ),
    );

    _saveState(isSaveState);
  }

  void setCreatinine(String? v, {bool isSaveState = true}) {
    var error = '';
    final vNew = v ?? state.creatinine.result;
    error = _validCreatinine(v, state);
    final enumValid = error.isEmpty ? EnumValid.valid : EnumValid.error;
    state = state.copyWith(
      creatinine: state.creatinine.copyWith(
        result: v,
        value: error.isEmpty ? double.tryParse(vNew) : null,
        error: error,
        enumValid: enumValid,
      ),
    );

    _calcGfr();
    _saveState(isSaveState);
  }

  void changeTypeCreatinine(EnumInputTypeCreatinine? value) {
    state = state.copyWith(
      creatinine: state.creatinine.copyWith(inputTypeCreatinine: value),
    );

    setCreatinine(null);
  }

  // void _upgradeCreatinine(String error) {
  //   if (error.isEmpty) setCreatinine(state.value);
  // }

  void setActivity(int? v, {bool isSaveState = true}) {
    var error = '';
    if (v == null && state.activity.selectedIndex == null) {
      error = _l.activity_not_selected;
    }

    final selectedIndex = v ?? state.activity.selectedIndex;
    final listActivity = state.activity.listActivity;
    final listBool =
        _getListBool(length: listActivity.length, selectedIndex: selectedIndex);

    state = state.copyWith(
      activity: state.activity.copyWith(
        listActivity: listActivity,
        selectedIndex: v,
        error: error,
        listSelected: listBool,
        enumValid: error.isEmpty ? EnumValid.valid : EnumValid.error,
      ),
    );

    _saveState(isSaveState);
  }

  void setCkd(int? v, {bool isSaveState = true}) {
    var error = '';
    if (v == null && state.ckd.selectedIndex == null) {
      error = 'Стадия ХБП не выбрана';
    }

    final selectedIndex = v ?? state.ckd.selectedIndex;
    final listCkd = state.ckd.listCkd;
    final activeItem = selectedIndex != null ? listCkd[selectedIndex] : null;
    final selectedCkd = activeItem?.enumCkd ?? EnumCkd.none;

    final listBool = _getListBool(
      length: listCkd.length,
      selectedIndex: selectedIndex,
    );
    state = state.copyWith(
      ckd: state.ckd.copyWith(
        listCkd: listCkd,
        selectedIndex: v,
        listSelected: listBool,
        enumCkdSelected: selectedCkd,
        error: error,
        isShowCalcCreatinine: selectedCkd == EnumCkd.calculate,
        enumValid: error.isEmpty ? EnumValid.valid : EnumValid.error,
      ),
    );

    if (selectedCkd == EnumCkd.calculate) _calcGfr();

    _saveState(isSaveState);
  }

  void _calcBmi() {
    final errorMarkdown = _getErrorMarkdownValidCalcBmi(state);

    if (errorMarkdown.isNotEmpty) {
      state = state.copyWith(
        bmi: state.bmi.copyWith(
          enumResult: EnumResult.error,
          markdownError: errorMarkdown,
        ),
      );

      return;
    }

    final weight = state.weight.value!;
    final height = state.height.value!;

    final result = _roundDouble(weight / pow(height / 100, 2), 1);

    final recomWeightMin =
        EnumWeightStatus.normal.minValue * pow(height / 100, 2);
    final recomWeightMax =
        EnumWeightStatus.normal.maxValue * pow(height / 100, 2);

    final bmiStatus = result >= EnumWeightStatus.obesity_4.minValue
        ? EnumWeightStatus.obesity_4
        : result >= EnumWeightStatus.obesity_3.minValue
            ? EnumWeightStatus.obesity_3
            : result >= EnumWeightStatus.obesity_2.minValue
                ? EnumWeightStatus.obesity_2
                : result >= EnumWeightStatus.obesity_1.minValue
                    ? EnumWeightStatus.obesity_1
                    : result >= EnumWeightStatus.overweight.minValue
                        ? EnumWeightStatus.overweight
                        : result >= EnumWeightStatus.normal.minValue
                            ? EnumWeightStatus.normal
                            : result >= EnumWeightStatus.mild_thinness.minValue
                                ? EnumWeightStatus.mild_thinness
                                : result >=
                                        EnumWeightStatus
                                            .moderate_thinness.minValue
                                    ? EnumWeightStatus.moderate_thinness
                                    : EnumWeightStatus.severe_thinness;

    final enumBmiYear = state.dateBirthday.userYearCoarse > 20
        ? EnumTypeCalcBmiPeople.adults
        : EnumTypeCalcBmiPeople.children;

    final userYear = state.dateBirthday.userYearFine;
    final userMonth = state.dateBirthday.userMonth;
// https://allcalc.ru/node/190
    final weightDevineWomen = 45.5 + 2.3 * (height * 0.394 - 60);
    final weightDevineMen = 50 + 2.3 * (height * 0.394 - 60);
    final weightRobinsonWomen = 49 + 1.7 * (height * 0.394 - 60);
    final weightRobinsonMen = 52 + 1.9 * (height * 0.394 - 60);
    final gender = state.gender.enumGender;
    final weightDevine = gender.mapValue(
      female: weightDevineWomen,
      male: weightDevineMen,
      none: 0.0,
    );
    final weightRobinson = gender.mapValue(
      female: weightRobinsonWomen,
      male: weightRobinsonMen,
      none: 0.0,
    );

    final resultMarkdown = '''

### ${_getTypeCalcBmiPeople(enumBmiYear)}:

---
Ваш возраст - **$userYear** ${_getTextYearRu(userYear)} **$userMonth** ${_getTextYearMonth(userMonth)}

Ваш ИМТ составляет - **${AppUtilsNumber.getFormatNumber(num: result)}**

Ваш вес находится в категории - **${_getBmiStatus(bmiStatus)}**

### Ваш рекомендуемый вес:
* Минимальный - **${AppUtilsNumber.getFormatNumber(num: recomWeightMin, numberDigitsAfterPoint: 0)} кг**
* Максимальный - **${AppUtilsNumber.getFormatNumber(num: recomWeightMax, numberDigitsAfterPoint: 0)} кг**
### Ваш идеальный вес по методу:
* Devine (рекомендуемый) - **${AppUtilsNumber.getFormatNumber(num: weightDevine, numberDigitsAfterPoint: 1)} кг**
* Robinson - **${AppUtilsNumber.getFormatNumber(num: weightRobinson, numberDigitsAfterPoint: 1)} кг**
''';

    state = state.copyWith(
      bmi: state.bmi.copyWith(
        markdownSuccess: resultMarkdown,
        enumResult: EnumResult.success,
        weightRobinson: weightRobinson,
        weightDevine: weightDevine,
      ),
    );
  }

/* ****************************** */
  void _calcGfr() {
    final errorText = _getErrorMarkdownValidCalcGfr(state);

    if (errorText.isNotEmpty) {
      state = state.copyWith(
        gfr: state.gfr.copyWith(
          enumResult: EnumResult.error,
          markdownError: errorText,
        ),
      );

      return;
    }

    final baseValueCreatinine = state.creatinine.value!;
//  in mgDl
    final valueMgDl = state.creatinine.inputTypeCreatinine.mapValue(
      mgDl: baseValueCreatinine,
      mmolL: baseValueCreatinine * 11.3097,
      mcmolL: baseValueCreatinine * 0.0113,
    );
    final gender = state.gender.enumGender;
    final genderCoeff = gender.mapValue(female: 1.012, male: 1, none: 0);

    final kCoeff = gender.mapValue(female: 0.7, male: 0.9, none: 0);
    final yearUser = state.dateBirthday.userYearFine;
    var alpha = 0.0;

    if (gender == EnumGender.female && valueMgDl <= kCoeff) {
      alpha = -0.241;
    } else if (gender == EnumGender.female && valueMgDl > kCoeff) {
      alpha = -1.2;
    } else if (gender == EnumGender.male && valueMgDl <= kCoeff) {
      alpha = -0.302;
    } else {
      alpha = -1.2;
    }

    final estimatedGFR = 142 *
        pow(valueMgDl / kCoeff, alpha) *
        pow(0.9938, yearUser) *
        genderCoeff;

    final userYear = state.dateBirthday.userYearFine;
    final userMonth = state.dateBirthday.userMonth;

    final ckdStatus = estimatedGFR >= EnumCkd.one.minValue
        ? EnumCkd.one
        : estimatedGFR >= EnumCkd.two.minValue
            ? EnumCkd.two
            : estimatedGFR >= EnumCkd.threeA.minValue
                ? EnumCkd.threeA
                : estimatedGFR >= EnumCkd.threeB.minValue
                    ? EnumCkd.threeB
                    : estimatedGFR >= EnumCkd.four.minValue
                        ? EnumCkd.four
                        : EnumCkd.five;

    final updateCkdStatus = ckdStatus.maybeMapValue(
      orElse: ckdStatus,
      five: state.dialysis.enumDialysis.maybeMapValue(
        orElse: ckdStatus,
        homodialysis: EnumCkd.fiveDialysis,
        perinatal: EnumCkd.fiveDialysis,
      ),
    );

    final resultMarkdown = '''

---
Ваш возраст - **$userYear** ${_getTextYearRu(userYear)} **$userMonth** ${_getTextYearMonth(userMonth)}

Ваш СКФ составляет - **${AppUtilsNumber.getFormatNumber(num: estimatedGFR.toDouble())}** ml/min/1.73 m²

Стадия ХБП - **${_getCkdStage(updateCkdStatus)}**

''';

    state = state.copyWith(
      ckd: state.ckd.copyWith(
        enumCkdSelected: updateCkdStatus,
      ),
      gfr: state.gfr.copyWith(
        markdownSuccess: resultMarkdown,
        enumResult: EnumResult.success,
      ),
    );
  }

  void setSelectDryWeight(int? v, {bool isSaveState = true}) {
    var error = '';
    if (v == null && state.dryWeightSelect.selectedIndex == null) {
      error = 'Выберите значение';
    }
    // update
    final selectedIndex = v ?? state.dryWeightSelect.selectedIndex;
    final listDryWeight = state.dryWeightSelect.listDryWeight;

    final listBool = _getListBool(
      length: listDryWeight.length,
      selectedIndex: selectedIndex,
    );

    final enumDryWeight = selectedIndex != null
        ? listDryWeight[selectedIndex].enumDryWeight
        : EnumDryWeight.none;

    state = state.copyWith(
      dryWeightSelect: state.dryWeightSelect.copyWith(
        listDryWeight: listDryWeight,
        selectedIndex: v,
        listSelected: listBool,
        enumDryWeight: enumDryWeight,
        error: error,
        enumValid: error.isEmpty ? EnumValid.valid : EnumValid.error,
      ),
    );
    _saveState(isSaveState);
  }

  void _saveState(bool isSaveState) {
    if (isSaveState) _storage.setHealthProfileState(state);
  }

  bool get isDialysis => state.dialysis.enumDialysis
      .maybeMapValue(orElse: false, homodialysis: true, perinatal: true);
  bool get isKnowDryWeight => state.dryWeightSelect.enumDryWeight
      .maybeMapValue(orElse: false, yes: true);

  bool get isCkdFive => state.ckd.enumCkdSelected
      .maybeMapValue(orElse: false, five: true, fiveDialysis: true);

  bool isValid() {
    setGender(null, isSaveState: false);
    setDate(isSaveState: false);
    setHeight(null, isSaveState: false);
    setHypertension(null, isSaveState: false);
    setWeight(null, isSaveState: false);
    setSelectDryWeight(null, isSaveState: false);
    setFieldDryWeight(null, isSaveState: false);
    setActivity(null, isSaveState: false);
    setCkd(null, isSaveState: false);
    setCreatinine(null, isSaveState: false);
    setDailyDiuresis(null, isSaveState: false);
    setDiabetes(null, isSaveState: false);
    setDialysis(null, isSaveState: false);

    final listError = [
      state.gender.enumValid.maybeMapOrNullValue(error: 'Укажите пол'),
      state.dateBirthday.enumValid
          .maybeMapOrNullValue(error: 'Укажите дату рождения'),
      state.height.enumValid.maybeMapOrNullValue(error: 'Укажите рост'),
      state.weight.enumValid.maybeMapOrNullValue(error: 'Укажите вес'),
      state.activity.enumValid
          .maybeMapOrNullValue(error: 'Укажите физическую активность'),
      state.ckd.enumValid.maybeMapOrNullValue(error: 'Укажите стадию ХБП'),
      state.diabet.enumValid
          .maybeMapOrNullValue(error: 'Укажите наличие или нет - диабета'),
      state.hypertension.enumValid
          .maybeMapOrNullValue(error: 'Укажите наличие или нет - гипертензии'),
      state.dailyDiuresis.enumValid.maybeMapOrNullValue(
        error: 'Укажите уровень суточного диуреза',
      ),
      if (state.ckd.enumCkdSelected
          .maybeMapValue(calculate: true, orElse: false))
        state.creatinine.enumValid.maybeMapOrNullValue(
          error: 'Укажите свой креатинин',
        ),

      if (isCkdFive)
        state.dialysis.enumValid.maybeMapOrNullValue(
          error: 'Укажите наличие или нет - диализа',
        ),
      if (isCkdFive && isDialysis)
        state.dryWeightSelect.enumValid.maybeMapOrNullValue(
          error: 'Укажите знаете ли вы свой "сухой" вес',
        ),

      if (isCkdFive && isDialysis && isKnowDryWeight)
        state.dryWeightField.enumValid
            .maybeMapOrNullValue(error: 'Укажите "сухой" вес'),
      // state.ckd.enumCkdSelected.maybeMapOrNull(
      //   five: () => {
      //     state.creatinine.enumValid.maybeMapOrNullValue(
      //       error: 'Укажите свой креатинин',
      //     ),
      //   },
      // ),
    ];
    // ignore: cascade_invocations
    listError.removeWhere((element) => element == null);
    final sb = StringBuffer();
    for (final e in listError) {
      if (e == null || e.isEmpty) continue;

      sb.write('- $e\n');
    }

    state = state.copyWith(
      isValid: listError.isEmpty,
      markdownError: sb.toString(),
    );

    // сброс ошибки
    state = state.copyWith(
      markdownError: '',
    );

    return listError.isEmpty;
  }
}
