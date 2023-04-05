// ignore_for_file: constant_identifier_names, prefer_if_elements_to_conditional_expressions

import 'dart:math';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:nutrition/core/enum/enum.dart';
import 'package:nutrition/core/services/storage/app_storage_service.dart';
import 'package:nutrition/core/utils/app_utils.dart';
import 'package:nutrition/core/valid/valid_extension.dart';

import 'package:nutrition/features/health_profile/health_profile.dart';
import 'package:nutrition/localization/localization.dart';

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

  static const _MIN_AGE = 2;
  static const _MAX_AGE = 150;
  static const _MIN_HEIGHT = 50;
  static const _MAX_HEIGHT = 220;

  /// preload
  void load() {
    // init date
    final days = _initDayMonth(start: 1, end: 31);
    final months = _initDayMonth(start: 1, end: 12);
    final years = _initYears();
    // init height
    final listHeight = <String>[];
    for (var i = _MAX_HEIGHT; i > _MIN_HEIGHT; i--) {
      listHeight.add(i.toString());
    }
    // init gender
    final listGender = <GenderItemModel>[
      GenderItemModel(enumGender: EnumGender.male, value: _l.male),
      GenderItemModel(enumGender: EnumGender.female, value: _l.female),
    ];

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
    final listDailyDiuresis = <DailyDiuresisItemModel>[
      const DailyDiuresisItemModel(
        enumDailyDiuresis: EnumDailyDiuresis.no,
        value: 'Отсутствует',
      ),
      const DailyDiuresisItemModel(
        enumDailyDiuresis: EnumDailyDiuresis.normal,
        value: 'Нормальный',
      ),
      const DailyDiuresisItemModel(
        enumDailyDiuresis: EnumDailyDiuresis.enterValue,
        value: 'Ввести значение',
      ),
    ];
    // init Hypertension
    final listHypertension = <HypertensionItemModel>[
      HypertensionItemModel(
        enumHypertension: EnumHypertension.yes,
        value: _l.yes_caps,
      ),
      HypertensionItemModel(
        enumHypertension: EnumHypertension.no,
        value: _l.no_caps,
      ),
    ];
    // Activity
    final listActivity = <ActivityItemModel>[
      ActivityItemModel(enumActivity: EnumActivity.light, value: _l.light),
      ActivityItemModel(enumActivity: EnumActivity.normal, value: _l.normal),
    ];
    // init ckd
    final listCkd = <CkdItemModel>[
      const CkdItemModel(
        enumCkd: EnumCkd.one,
        value: '1',
      ),
      const CkdItemModel(
        enumCkd: EnumCkd.two,
        value: '2',
      ),
      const CkdItemModel(
        enumCkd: EnumCkd.threeA,
        value: '3a',
      ),
      const CkdItemModel(
        enumCkd: EnumCkd.threeB,
        value: '3b',
      ),
      const CkdItemModel(
        enumCkd: EnumCkd.four,
        value: '4',
      ),
      const CkdItemModel(
        enumCkd: EnumCkd.five,
        value: '5',
      ),
      const CkdItemModel(
        enumCkd: EnumCkd.calculate,
        value: 'Рассчитать',
      ),
    ];

// init calc bmi

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

    calcBmi();
  }

  void calcBmi() {
    if (!_isValidForCalcBmi()) return;
    final dateTimeNow = DateTime.now();
    var userYear = dateTimeNow.year - state.dateBirthday.dateTime!.year;
    var userMonth = dateTimeNow.month - state.dateBirthday.dateTime!.month;

    if (userMonth.isNegative) {
      userYear = userYear - 1;
      userMonth = userMonth + 12;
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

    final enumBmiYear = userYear > 20
        ? EnumTypeCalcBmiPeople.adults
        : EnumTypeCalcBmiPeople.children;

    final resultMarkdown = '''

## ${_getTypeCalcBmiPeople(enumBmiYear)}

---
Ваш возраст - **$userYear** ${_getTextYearRu(userYear)} **$userMonth** ${_getTextYearMonth(userMonth)}

Ваш ИМТ составляет - **${AppUtilsNumber.getFormatNumber(num: result)}**

Ваш вес находится в категории - **${_getBmiStatus(bmiStatus)}**

### Ваш рекомендуемый вес:
* Минимальный - **${AppUtilsNumber.getFormatNumber(num: recomWeightMin, numberDigitsAfterPoint: 0)} кг**
* Максимальный - **${AppUtilsNumber.getFormatNumber(num: recomWeightMax, numberDigitsAfterPoint: 0)} кг**
''';

    state = state.copyWith(
      bmi: state.bmi.copyWith(
        markdownSuccess: resultMarkdown,
        enumResult: EnumResult.valid,
      ),
    );
  }

  String _getBmiStatus(EnumWeightStatus status) {
    return status.mapValue(
      severe_thinness: 'Выраженный дефицит массы тела',
      moderate_thinness: 'Умеренный (дефицит) массы тела',
      mild_thinness: 'Легкий (дефицит) массы тела',
      normal: 'Норма',
      overweight: 'Избыточная масса тела (предожирение)',
      obesity_1: 'Ожирение первой степени',
      obesity_2: 'Ожирение второй степени',
      obesity_3: 'Ожирение третьей степени',
      obesity_4: 'Ожирение четвертой степени',
      none: '',
    );
  }

  String _getTypeCalcBmiPeople(EnumTypeCalcBmiPeople enumBmiCalc) {
    return enumBmiCalc.mapValue(
      children: 'Расчет ИМТ для детей или подросков',
      adults: 'Расчет ИМТ для взрослых',
      none: '',
    );
  }

  String _getTextYearRu(int num) {
    // ignore: parameter_assignments
    num = num % 100;
    if (num > 19) {
      // ignore: parameter_assignments
      num = num % 10;
    }
    switch (num) {
      case 1:
        {
          return 'год';
        }
      case 2:
      case 3:
      case 4:
        {
          return 'года';
        }

      default:
        {
          return 'лет';
        }
    }
  }

  String _getTextYearMonth(int num) {
    switch (num) {
      case 1:
        return 'месяц';

      case 2:
      case 3:
      case 4:
        return 'месяца';

      default:
        return 'месяцев';
    }
  }

  bool _isValidForCalcBmi() {
    final isValidBirthday = state.dateBirthday.enumValid == EnumResult.valid;
    final isValidHeight = state.height.enumValid == EnumResult.valid;
    final isValidWeight = state.weight.enumValid == EnumResult.valid;

    if (isValidWeight && isValidHeight && isValidBirthday) {
      return true;
    }

    final baseText = _l.calculate_bmi_enter;

    var changeText = '';

    if (isValidHeight && isValidWeight) {
      changeText = '''
$baseText
* **Дата рождения**
''';
    } else if (isValidBirthday && isValidWeight) {
      changeText = '''
$baseText
* **Рост**
''';
    } else if (isValidBirthday && isValidHeight) {
      changeText = '''
$baseText
* **Вес** 
''';
    } else if (isValidBirthday) {
      changeText = '''
$baseText
* **Рост**
* **Вес** 
''';
    } else if (isValidHeight) {
      changeText = '''
$baseText
* **Вес** 
* **Дата рождения**
''';
    } else if (isValidWeight) {
      changeText = '''
$baseText
* **Рост**
* **Дата рождения**
''';
    } else {
      changeText = '''
$baseText
* **Рост**
* **Вес** 
* **Дата рождения**
''';
    }
    state = state.copyWith(
      bmi: state.bmi.copyWith(
        enumResult: EnumResult.error,
        markdownError: changeText,
      ),
    );

    return false;
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
        enumValid: error.isEmpty ? EnumResult.valid : EnumResult.error,
      ),
    );
    _saveState(isSaveState);
    calcBmi();
  }

  void setWeight(String? v, {bool isSaveState = true}) {
    var error = '';

    error = _validWeight(v);

    state = state.copyWith(
      weight: state.weight.copyWith(
        result: v,
        value: error.isEmpty ? _parseValue(v) : null,
        error: error,
        enumValid: error.isEmpty ? EnumResult.valid : EnumResult.error,
      ),
    );

    _saveState(isSaveState);
    calcBmi();
  }

  String _validWeight(String? v) {
    if (v?.isEmpty ?? true && state.weight.result.isEmpty) {
      return 'Вес не указан';
    }

    final doubleValue = _parseValue(v);

    if (doubleValue.isNegative) return 'Неправильное значение';

    if (doubleValue.isMinValue(20)) {
      return 'Указанный вес не поддерживается приложением';
    }
    if (doubleValue.isMaxValue(1000)) {
      return 'Указанный вес не поддерживается приложением';
    }

    return '';
  }

  double _parseValue(String? v) {
    return double.tryParse(v ?? state.weight.result) ?? -1;
  }

  void changeTypeUnitWeight(EnumUnitWeight? value) {
    state =
        state.copyWith(weight: state.weight.copyWith(enumUnitWeight: value));
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
        error: error,
        enumValid: error.isEmpty ? EnumResult.valid : EnumResult.error,
      ),
    );

    _saveState(isSaveState);
  }

  List<bool> _getListBool({
    required int length,
    int? selectedIndex = -1,
  }) {
    return List.generate(
      length,
      (i) => selectedIndex == i,
    );
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
        enumValid: error.isEmpty ? EnumResult.valid : EnumResult.error,
      ),
    );

    _saveState(isSaveState);
  }

  static List<String> _initYears() {
    final listYear = <String>[];
    final yearStart = DateTime.now().year - _MAX_AGE;
    final yearEnd = DateTime.now().year - _MIN_AGE;
    for (var i = yearEnd; i > yearStart; i--) {
      listYear.add(i.toString());
    }

    return listYear;
  }

  static List<String> _initDayMonth({required int start, required int end}) {
    final list = <String>[];
    for (var i = start; i <= end; i++) {
      if (i < 10) {
        list.add('0$i');
        continue;
      }

      list.add(i.toString());
    }

    return list;
  }

  String _getErrorValidBirthDay() {
    final day = state.dateBirthday.day;
    final month = state.dateBirthday.month;
    final year = state.dateBirthday.year;
    final isValidDay = day.isNotEmpty;
    final isValidMonth = month.isNotEmpty;
    final isValidYear = year.isNotEmpty;

    var errorMsg = '';

    if ((isValidDay && isValidMonth && isValidYear) &&
        !'$year-$month-$day'.isDate()) {
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
    final error = _getErrorValidBirthDay();
    final day = state.dateBirthday.day;
    final month = state.dateBirthday.month;
    final year = state.dateBirthday.year;
    state = state.copyWith(
      dateBirthday: state.dateBirthday.copyWith(
        dateTime: error.isEmpty ? DateTime.parse('$year-$month-$day') : null,
        enumValid: error.isEmpty ? EnumResult.valid : EnumResult.error,
        error: error,
      ),
    );

    // _upgradeCreatinine(error);

    _saveState(isSaveState);
    calcBmi();
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
        enumValid: error.isEmpty ? EnumResult.valid : EnumResult.error,
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
        enumValid: error.isEmpty ? EnumResult.valid : EnumResult.error,
      ),
    );

    _saveState(isSaveState);
  }

  void setUrineOutput(String? v, {bool isSaveState = true}) {
    var error = '';

    error = _validUrineOutput(v);

    state = state.copyWith(
      urine: state.urine.copyWith(
        result: v,
        enumValid: error.isEmpty ? EnumResult.valid : EnumResult.error,
        error: error,
        value: error.isEmpty ? double.tryParse(v!) : null,
      ),
    );

    _saveState(isSaveState);
  }

  String _validUrineOutput(String? v) {
    if (v?.isEmpty ?? true && state.urine.result.isEmpty) {
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

  double _roundDouble(double value, int places) {
    final mod = pow(10.0, places);

    return (value * mod).round().toDouble() / mod;
  }

  // bool _isValid() {
  //   final isValidBirthday = _dateTimeBirthday != null;
  //   final isValidHeight = _height != null;
  //   final isValidWeight = _weight != null;

  //   if (isValidBirthday && isValidHeight && isValidBirthday) return true;

  //   final baseText = _l.calculate_bmi_enter;

  //   var changeText = '';

  //   if (isValidHeight && isValidWeight) {
  //     changeText = 'дату рождения';
  //   } else if (isValidBirthday && isValidWeight) {
  //     changeText = 'рост';
  //   } else if (isValidBirthday && isValidHeight) {
  //     changeText = 'вес';
  //   } else if (isValidBirthday) {
  //     changeText = 'вес и рост';
  //   } else if (isValidHeight) {
  //     changeText = 'дату рождения и вес';
  //   } else if (isValidWeight) {
  //     changeText = 'дату рождения и рост';
  //   } else {
  //     changeText = 'вес, дату рождения и рост';
  //   }
  //   state = state.copyWith(markdownError: '$baseText **$changeText**');

  //   return false;
  // }

  void setCreatinine(String? v, {bool isSaveState = true}) {
    var error = '';

    error = _validCreatinine(v);

    state = state.copyWith(
      creatinine: state.creatinine.copyWith(
        result: v,
        value: error.isEmpty ? double.tryParse(v!) : null,
        error: error,
        enumValid: error.isEmpty ? EnumResult.valid : EnumResult.error,
      ),
    );

    _saveState(isSaveState);
  }

  void changeTypeCreatinine(EnumInputTypeCreatinine? value) {
    state = state.copyWith(
      creatinine: state.creatinine.copyWith(inputTypeCreatinine: value),
    );
  }

  String _validCreatinine(String? v) {
    if (v?.isEmpty ?? true) {
      return 'Креатинин не указан';
    }

    // if (state.validGenderModel.errorMessage.isNotEmpty) {
    //   return 'Укажите ваш пол';
    // }
    // if (state.validBirthdayModel.enumValid == EnumResult.error) {
    //   return 'Укажите дату своего рождения';
    // }
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
        enumValid: error.isEmpty ? EnumResult.valid : EnumResult.error,
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

    final listBool = _getListBool(
      length: listCkd.length,
      selectedIndex: selectedIndex,
    );
    state = state.copyWith(
      ckd: state.ckd.copyWith(
        listCkd: listCkd,
        selectedIndex: v,
        listSelected: listBool,
        enumCkdSelected: activeItem?.enumCkd,
        error: error,
        isShowCalcCreatinine: activeItem?.enumCkd == EnumCkd.calculate,
        enumValid: error.isEmpty ? EnumResult.valid : EnumResult.error,
      ),
    );

    _saveState(isSaveState);
  }

  void checkValid() {
    setGender(null, isSaveState: false);
    setDate(isSaveState: false);
    setHeight(null, isSaveState: false);
    setWeight(null, isSaveState: false);
    setActivity(null, isSaveState: false);
    setCkd(null, isSaveState: false);
    setCreatinine(null, isSaveState: false);
    setDailyDiuresis(null, isSaveState: false);
    setDiabetes(null, isSaveState: false);

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
      state.dailyDiuresis.enumValid.maybeMapOrNullValue(
        error: 'Укажите уровень суточного диуреза',
      ),
      if (state.ckd.enumCkdSelected
          .maybeMapValue(calculate: true, orElse: false))
        state.creatinine.enumValid.maybeMapOrNullValue(
          error: 'Укажите свой креатинин',
        ),
    ];

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
  }

  bool isValid() {
    // final gender = _ref.read(genderProvider).enumValid == EnumResult.valid;
    // final birthday =
    //     _ref.read(dateBirthdayProvider).enumValid == EnumResult.valid;

    // if (gender && birthday) {
    //   return true;
    // }

    return false;
  }

/* from page */

/* from page */

/* from page */

/* from page */

/* from page */

  void _saveState(bool isSaveState) {
    if (isSaveState) _storage.setHealthProfileState(state);

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
  }

/* from page */
  void check() {
    // setGender(state.validGenderModel.selectedIndex, isSaveState: false);
    // setActivity(state.validActivityModel.selectedIndex, isSaveState: false);
    // setHypertension(
    //   state.validHypertensionModel.selectedIndex,
    //   isSaveState: false,
    // );
    // setDiabetes(state.validHypertensionModel.selectedIndex, isSaveState: false);
    // _checkDate();
    // setHeight(state.validHeightModel.result, isSaveState: false);
    // setWeight(state.validWeightModel.result, isSaveState: false);
    // setDailyDiuresis(
    //   state.validDailyDiuresisModel.selectedIndex,
    //   isSaveState: false,
    // );
    // setCkd(
    //   state.validCkdModel.selectedIndex,
    //   isSaveState: false,
    // );
    // setCreatinine(
    //   state.validCreatinineModel.value,
    //   isSaveState: false,
    // );
  }
}
