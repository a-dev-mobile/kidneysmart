// ignore_for_file: constant_identifier_names

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:nutrition/core/enum/enum.dart';
import 'package:nutrition/core/valid/valid_extension.dart';
import 'package:nutrition/features/health_profile/health_profile.dart';

final weightProvider = StateNotifierProvider<WeightNotifier, WeightState>(
  (ref) {
    return WeightNotifier();
  },
);

class WeightNotifier extends StateNotifier<WeightState> {
  WeightNotifier()
      : super(
          const WeightState(),
        );

  void setWeight(String? v, {bool isSaveLocal = true}) {
    var error = '';

    error = _validWeight(v);

    state = state.copyWith(
      result: v,
      value: error.isEmpty ? double.tryParse(v!) : null,
      errorMessage: error,
      enumValid: error.isEmpty ? EnumValid.valid : EnumValid.error,
    );

//     if (isSaveLocal) _saveState();
  }

  String _validWeight(String? v) {
    if (v?.isEmpty ?? true && state.result.isEmpty) {
      return 'Вес не указан';
    }

    final doubleValue = double.tryParse(v!) ?? -1;

    if (doubleValue.isNegative) return 'Неправильное значение';

    if (doubleValue.isMinValue(20)) {
      return 'Указанный вес не поддерживается приложением';
    }
    if (doubleValue.isMaxValue(1000)) {
      return 'Указанный вес не поддерживается приложением';
    }

    return '';
  }

  void changeTypeUnitWeight(EnumUnitWeight? value) {
    state = state.copyWith(enumUnitWeight: value);
  }
}
