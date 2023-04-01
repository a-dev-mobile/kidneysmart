// ignore_for_file: constant_identifier_names

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:nutrition/core/enum/enum.dart';
import 'package:nutrition/core/valid/valid_extension.dart';
import 'package:nutrition/features/health_profile/health_profile.dart';

final creatinineProvider =
    StateNotifierProvider<CreatinineNotifier, CreatinineState>(
  (ref) {
    return CreatinineNotifier();
  },
);

class CreatinineNotifier extends StateNotifier<CreatinineState> {
  CreatinineNotifier()
      : super(
          const CreatinineState(),
        );

  void setCreatinine(String? v, {bool isSaveLocal = true}) {
    var error = '';

    error = _validCreatinine(v);

    state = state.copyWith(
      result: v,
      value: error.isEmpty ? double.tryParse(v!) : null,
      error: error,
      enumValid: error.isEmpty ? EnumValid.valid : EnumValid.error,
    );

//     if (isSaveLocal) _saveState();
  }

  void changeTypeCreatinine(EnumInputTypeCreatinine? value) {
    state =
        state.copyWith(inputTypeCreatinine: value ?? state.inputTypeCreatinine);
  }

  String _validCreatinine(String? v) {
    if (v?.isEmpty ?? true) {
      return 'Креатинин не указан';
    }

    // if (state.validGenderModel.errorMessage.isNotEmpty) {
    //   return 'Укажите ваш пол';
    // }
    // if (state.validBirthdayModel.enumValid == EnumValid.error) {
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
}
