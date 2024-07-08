import 'dart:math';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:kidneysmart/core/data/local/shared_prefs/app_storage.dart';
import 'package:kidneysmart/core/enum/enum.dart';
import 'package:kidneysmart/core/valid/valid_extension.dart';
import 'package:kidneysmart/features/steps/ckd_select/ckd.dart';
import 'package:kidneysmart/features/steps/dialysiis_query/dialysiis_query.dart';
import 'package:kidneysmart/features/steps/gender/enum/enum_gender.dart';
import 'package:kidneysmart/features/steps/gfr/gfr.dart';
import 'package:kidneysmart/localization/localization.dart';
import 'package:kidneysmart/navigation/navigation.dart';

final stepGfrInputProvider =
    StateNotifierProvider.autoDispose<StepGfrInputNotifier, StepGfrInputState>(
  (ref) {
    return StepGfrInputNotifier(
      l: ref.watch(appLocalizationsProvider),
      storage: ref.read(appStorageProvider),
      go: ref.read(appRouterProvider),
    ).._load();
  },
);

class StepGfrInputNotifier extends StateNotifier<StepGfrInputState> {
  StepGfrInputNotifier({
    required AppLocalizations l,
    required AppStorage storage,
    required AppRouter go,
  })  : _storage = storage,
        _l = l,
        _go = go,
        super(storage.getGfrState());

  // ignore: unused_field
  final AppStorage _storage;
  // ignore: unused_field
  final AppLocalizations _l;

  // ignore: unused_field
  final AppRouter _go;

  /// preload

  bool get isValid => state.enumValid.maybeMapValue(orElse: false, valid: true);
  EnumGender _gender = EnumGender.male;
  int _yearUser = 0;

  void _load() {
    state = state.copyWith(enumResult: EnumResult.load);

    _gender = _storage.getGenderState().enumGender;
    final birthDay = _storage.getBirthdayState();
    _yearUser = birthDay.userYearFine;

    state = state.copyWith(enumResult: EnumResult.success);
  }

  void changeTypeCreatinine(EnumInputTypeCreatinine? value) {
    state = state.copyWith(inputTypeCreatinine: value);
  }

  void setCreatinine(String? v) {
    var error = '';
    final vNew = v ?? state.result;
    error = _validCreatinine(v);
    final enumValid = error.isEmpty ? EnumValid.valid : EnumValid.error;

    final enumCkd = enumValid == EnumValid.valid ? _calcGfr(v) : EnumCkd.none;

    state = state.copyWith(
      result: v,
      value: error.isEmpty ? double.tryParse(vNew) : null,
      error: error,
      enumValid: enumValid,
      enumCkd: enumCkd,
    );

    _storage.setGfrState(state.copyWith(isKeyboardOpen: false));
  }

  String _validCreatinine(String? v) {
    if (v?.isEmpty ?? true && state.result.isEmpty) {
      return 'Креатинин не указан';
    }

    final updateV = v ?? state.result;

    final doubleValue = double.tryParse(updateV) ?? -1;

    if (doubleValue.isNegative) return 'Неправильное значение';

    if (doubleValue.isMinValue(0)) {
      return 'Указанный креатинин не поддерживается приложением';
    }
    if (doubleValue.isMaxValue(10000)) {
      return 'Указанный креатинин не поддерживается приложением';
    }

    return '';
  }

  EnumCkd _calcGfr(String? v) {
    final baseValueCreatinine = double.parse(v ?? '0');
//  in mgDl
    final valueMgDl = state.inputTypeCreatinine.mapValue(
      mgDl: baseValueCreatinine,
      mmolL: baseValueCreatinine * 11.3097,
      mcmolL: baseValueCreatinine * 0.0113,
    );

    final genderCoeff = _gender.mapValue(female: 1.012, male: 1, none: 0);

    final kCoeff = _gender.mapValue(female: 0.7, male: 0.9, none: 0);

    var alpha = 0.0;

    if (_gender == EnumGender.female && valueMgDl <= kCoeff) {
      alpha = -0.241;
    } else if (_gender == EnumGender.female && valueMgDl > kCoeff) {
      alpha = -1.2;
    } else if (_gender == EnumGender.male && valueMgDl <= kCoeff) {
      alpha = -0.302;
    } else {
      alpha = -1.2;
    }

    final estimatedGFR = 142 *
        pow(valueMgDl / kCoeff, alpha) *
        pow(0.9938, _yearUser) *
        genderCoeff;

    return estimatedGFR >= EnumCkd.one.minValue
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
  }

  void nextPressed() {
    final nextPage = state.enumCkd.maybeMapValue(
      orElse: StepCkdSelectPage.name,
      five: StepDialysisQueryPage.name,
    );

    _go.router.goNamed(nextPage);
  }

  void backPressed() {
    _go.router.goNamed(StepCkdSelectPage.name);
  }

  void setKeyboard({required bool isKeyboardOpen}) {
    if (state.isKeyboardOpen == isKeyboardOpen) return;

    state = state.copyWith(isKeyboardOpen: isKeyboardOpen);
  }
}
