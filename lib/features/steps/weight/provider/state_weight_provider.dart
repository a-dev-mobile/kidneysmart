// ignore_for_file: constant_identifier_names

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:kidneysmart/core/data/local/shared_prefs/app_storage.dart';
import 'package:kidneysmart/core/enum/enum.dart';
import 'package:kidneysmart/core/valid/valid.dart';
import 'package:kidneysmart/features/steps/activity/activity.dart';
import 'package:kidneysmart/features/steps/height/height.dart';
import 'package:kidneysmart/features/steps/weight/weight.dart';
import 'package:kidneysmart/localization/localization.dart';
import 'package:kidneysmart/navigation/navigation.dart';

final weightProvider =
    StateNotifierProvider.autoDispose<WeightNotifier, WeightState>(
  (ref) {
    return WeightNotifier(
      l: ref.watch(appLocalizationsProvider),
      storage: ref.read(appStorageProvider),
      go: ref.read(appRouterProvider),
    ).._load();
  },
);

class WeightNotifier extends StateNotifier<WeightState> {
  WeightNotifier({
    required AppLocalizations l,
    required AppStorage storage,
    required AppRouter go,
  })  : _storage = storage,
        _l = l,
        _go = go,
        super(storage.getWeightState());

  // ignore: unused_field
  final AppStorage _storage;
  // ignore: unused_field
  final AppLocalizations _l;

  // ignore: unused_field
  final AppRouter _go;

  /// preload

  bool get isValid => state.enumValid.maybeMapValue(orElse: false, valid: true);

  void changeTypeUnitWeight(EnumUnitWeight? value) {
    state = state.copyWith(enumUnitWeight: value);
  }

  void _load() {
    final stateGender = _storage.getGenderState();
    state = state.copyWith(
      enumGender: stateGender.enumGender,
    );
  }

  void setWeight(
    String? v,
  ) {
    var error = '';

    error = _validWeight(v);

    state = state.copyWith(
      result: v,
      value: error.isEmpty ? _parseValue(v) : null,
      error: error,
      enumValid: error.isEmpty ? EnumValid.valid : EnumValid.error,
    );

    _storage.setWeightState(state.copyWith(isKeyboardOpen: false));
  }

  String _validWeight(
    String? v,
  ) {
    if (v?.isEmpty ?? true && state.result.isEmpty) {
      return 'Вес не указан';
    }

    final doubleValue = _parseValue(v);

    if (doubleValue.isNegative) return 'Неправильное значение';

    if (doubleValue.isMinValue(20)) {
      return 'Указанный вес не поддерживается приложением';
    }
    if (doubleValue.isMaxValue(350)) {
      return 'Указанный вес не поддерживается приложением';
    }

    return '';
  }

  double _parseValue(
    String? v,
  ) {
    return double.tryParse(v ?? state.result) ?? -1;
  }

  void nextPressed() {
    _go.router.goNamed(StepActivityPage.name);
  }

  void backPressed() {
    _go.router.goNamed(StepHeightPage.name);
  }

  void setKeyboard({required bool isKeyboardOpen}) {
    if (state.isKeyboardOpen == isKeyboardOpen) return;

    state = state.copyWith(isKeyboardOpen: isKeyboardOpen);
  }
}
