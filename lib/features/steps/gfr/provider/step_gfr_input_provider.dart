import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:nutrition/features/steps/gfr/gfr.dart';

import 'package:nutrition/localization/localization.dart';
import 'package:nutrition/navigation/navigation.dart';
import 'package:nutrition/shared/data/local/shared_prefs/app_storage.dart';
import 'package:nutrition/shared/enum/enum.dart';
import 'package:nutrition/shared/valid/valid_extension.dart';

final stepGfrInputProvider =
    StateNotifierProvider.autoDispose<StepGfrInputNotifier, StepGfrInputState>(
  (ref) {
    return StepGfrInputNotifier(
      l: ref.watch(appLocalizationsProvider),
      storage: ref.read(appStorageProvider),
      go: ref.read(appRouterProvider),
    );
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

  void changeTypeCreatinine(EnumInputTypeCreatinine? value) {
    state = state.copyWith(inputTypeCreatinine: value);
  }

  void setCreatinine(String? v) {
    var error = '';
    final vNew = v ?? state.result;
    error = _validCreatinine(v);
    final enumValid = error.isEmpty ? EnumValid.valid : EnumValid.error;
    state = state.copyWith(
      result: v,
      value: error.isEmpty ? double.tryParse(vNew) : null,
      error: error,
      enumValid: enumValid,
    );

    // _calcGfr();
    _storage.setGfrState(state);
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
    if (doubleValue.isMaxValue(3000)) {
      return 'Указанный креатинин не поддерживается приложением';
    }

    return '';
  }

  void nextPage() {
    // final nextPage = state.enumUrine.maybeMapValue(
    //     orElse: StepCkdSelectPage.name,
    //     enterValue: StepUrineInputPage.name,
    //   );

    //   _go.router.pushNamed<void>(nextPage);
  }

  void setKeyboard({required bool isKeyboardOpen}) {
    if (state.isKeyboardOpen == isKeyboardOpen) return;

    state = state.copyWith(isKeyboardOpen: isKeyboardOpen);
  }
}
