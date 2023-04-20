// ignore_for_file: constant_identifier_names

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:nutrition/core/enum/enum.dart';

import 'package:nutrition/core/services/navigation/navigation.dart';
import 'package:nutrition/core/services/storage/app_storage_service.dart';
import 'package:nutrition/core/valid/valid.dart';
import 'package:nutrition/features/steps/activity/activity.dart';

import 'package:nutrition/features/steps/weight/weight.dart';

import 'package:nutrition/localization/localization.dart';

final weightProvider =
    StateNotifierProvider.autoDispose<WeightNotifier, WeightState>(
  (ref) {
    return WeightNotifier(
      l: ref.watch(appLocalizationsProvider),
      storage: ref.read(appStorageServiceProvider),
      go: ref.read(appRouterServiceProvider),
    );
  },
);

class WeightNotifier extends StateNotifier<WeightState> {
  WeightNotifier({
    required AppLocalizations l,
    required AppStorageService storage,
    required AppRouterService go,
  })  : _storage = storage,
        _l = l,
        _go = go,
        super(storage.getWeightState());

  // ignore: unused_field
  final AppStorageService _storage;
  // ignore: unused_field
  final AppLocalizations _l;

  // ignore: unused_field
  final AppRouterService _go;

  /// preload

  bool get isValid => state.enumValid.maybeMapValue(orElse: false, valid: true);

  void changeTypeUnitWeight(EnumUnitWeight? value) {
    state = state.copyWith(enumUnitWeight: value);
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

    _storage.setWeightState(state);
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

  void nextPage() {
    _go.router.pushNamed<void>(ActivityPage.name);
  }
}
