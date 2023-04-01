// ignore_for_file: constant_identifier_names

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:nutrition/core/enum/enum.dart';
import 'package:nutrition/core/valid/valid_extension.dart';
import 'package:nutrition/features/health_profile/health_profile.dart';

final urineProvider = StateNotifierProvider<UrineNotifier, UrineState>(
  (ref) {
    return UrineNotifier();
  },
);

class UrineNotifier extends StateNotifier<UrineState> {
  UrineNotifier() : super(const UrineState());

  void setUrineOutput(String? v, {bool isSaveLocal = true}) {
    var error = '';

    error = _validUrineOutput(v);

    state = state.copyWith(
      result: v,
      enumValid: error.isEmpty ? EnumValid.valid : EnumValid.error,
      error: error,
      value: error.isEmpty ? double.tryParse(v!) : null,
    );

//     if (isSaveLocal) _saveState();
  }

  String _validUrineOutput(String? v) {
    if (v?.isEmpty ?? true && state.result.isEmpty) {
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
}
