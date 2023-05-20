import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:kidneysmart/core/data/local/shared_prefs/app_storage.dart';
import 'package:kidneysmart/core/enum/enum.dart';
import 'package:kidneysmart/core/valid/valid_extension.dart';
import 'package:kidneysmart/features/calc_nutient/calc_nutient.dart';
import 'package:kidneysmart/features/steps/weight_dry_input/weight_dry_input.dart';
import 'package:kidneysmart/features/steps/weight_dry_query/view/step_weight_dry_query_page.dart';
import 'package:kidneysmart/localization/localization.dart';
import 'package:kidneysmart/navigation/navigation.dart';

final stepWeightDryInputProvider = StateNotifierProvider.autoDispose<
    StepWeightDryInputNotifier, WeightDryInputState>(
  (ref) {
    return StepWeightDryInputNotifier(
      l: ref.watch(appLocalizationsProvider),
      storage: ref.read(appStorageProvider),
      go: ref.read(appRouterProvider),
    );
  },
);

class StepWeightDryInputNotifier extends StateNotifier<WeightDryInputState> {
  StepWeightDryInputNotifier({
    required AppLocalizations l,
    required AppStorage storage,
    required AppRouter go,
  })  : _storage = storage,
        _l = l,
        _go = go,
        super(storage.getWeightDryInputState());

  // ignore: unused_field
  final AppStorage _storage;
  // ignore: unused_field
  final AppLocalizations _l;

  // ignore: unused_field
  final AppRouter _go;

  /// preload

  bool get isValidInput =>
      state.enumValid.maybeMapValue(orElse: false, valid: true);

  void setWeightDryInput(String? v) {
    var error = '';

    error = _validUrineOutput(v);

    state = state.copyWith(
      result: v,
      enumValid: error.isEmpty ? EnumValid.valid : EnumValid.error,
      error: error,
      value: error.isEmpty ? double.tryParse(v!) : null,
    );
    _storage.setWeightDryInputState(state.copyWith(isKeyboardOpen: false));
  }

  String _validUrineOutput(String? v) {
    if (v?.isEmpty ?? true && state.result.isEmpty) {
      return 'Не указано значение';
    }
    final updateV = v ?? state.result;

    final doubleValue = double.tryParse(updateV) ?? -1;

    if (doubleValue.isNegative) return 'Неправильное значение';

    if (doubleValue.isMinValue(0)) {
      return 'Указанное значение не поддерживается приложением';
    }
    if (doubleValue.isMaxValue(300)) {
      return 'Указанное значение не поддерживается приложением';
    }

    return '';
  }

  void nextPressed() {
    _go.router.goNamed(CalcNutrientPage.name);
  }

  void backPressed() {
    _go.router.goNamed(StepWeightDryQueryPage.name);
  }

  void setKeyboard({required bool isKeyboardOpen}) {
    if (state.isKeyboardOpen == isKeyboardOpen) return;

    state = state.copyWith(isKeyboardOpen: isKeyboardOpen);
  }
}
