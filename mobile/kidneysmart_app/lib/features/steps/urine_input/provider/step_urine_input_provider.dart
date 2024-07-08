import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:kidneysmart/core/data/local/shared_prefs/app_storage.dart';
import 'package:kidneysmart/core/enum/enum.dart';
import 'package:kidneysmart/core/valid/valid_extension.dart';
import 'package:kidneysmart/features/steps/ckd_select/ckd.dart';
import 'package:kidneysmart/features/steps/urine_input/urine_input.dart';
import 'package:kidneysmart/features/steps/urine_select/urine_select.dart';
import 'package:kidneysmart/localization/localization.dart';
import 'package:kidneysmart/navigation/navigation.dart';

final stepUrineInputProvider = StateNotifierProvider.autoDispose<
    StepUrineInputNotifier, StepUrineInputState>(
  (ref) {
    return StepUrineInputNotifier(
      l: ref.watch(appLocalizationsProvider),
      storage: ref.read(appStorageProvider),
      go: ref.read(appRouterProvider),
    );
  },
);

class StepUrineInputNotifier extends StateNotifier<StepUrineInputState> {
  StepUrineInputNotifier({
    required AppLocalizations l,
    required AppStorage storage,
    required AppRouter go,
  })  : _storage = storage,
        _l = l,
        _go = go,
        super(storage.getUrineInputState());

  // ignore: unused_field
  final AppStorage _storage;
  // ignore: unused_field
  final AppLocalizations _l;

  // ignore: unused_field
  final AppRouter _go;

  /// preload

  bool get isValidInput =>
      state.enumValid.maybeMapValue(orElse: false, valid: true);

  void setUrineInput(String? v) {
    var error = '';

    error = _validUrineOutput(v);

    state = state.copyWith(
      result: v,
      enumValid: error.isEmpty ? EnumValid.valid : EnumValid.error,
      error: error,
      value: error.isEmpty ? double.tryParse(v!) : null,
    );
    _storage.setUrineInputState(state.copyWith(isKeyboardOpen: false));
  }

//   void setDailyDiuresis(int? v, {bool isSaveState = true}) {
//     var error = '';
//     if (v == null && state.dailyDiuresis.selectedIndex == null) {
//       error = 'Не указан уровень суточного диуреза';
//     }

//     final selectedIndex = v ?? state.dailyDiuresis.selectedIndex;
//     final listDailyDiuresis = state.dailyDiuresis.listDailyDiuresis;

//     final activeItem =
//         selectedIndex != null ? listDailyDiuresis[selectedIndex] : null;

//     final listBool = _getListBool(
//       length: listDailyDiuresis.length,
//       selectedIndex: selectedIndex,
//     );
//     state = state.copyWith(
//       dailyDiuresis: state.dailyDiuresis.copyWith(
//         listDailyDiuresis: listDailyDiuresis,
//         selectedIndex: v,
//         listSelected: listBool,
//         error: error,
//         enumValid: error.isEmpty ? EnumValid.valid : EnumValid.error,
//         isShowInput:
//             activeItem?.enumDailyDiuresis == EnumDailyDiuresis.enterValue,
//       ),
//     );

//     _saveState(isSaveState);
//   }

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
    if (doubleValue.isMaxValue(10000)) {
      return 'Указанное значение не поддерживается приложением';
    }

    return '';
  }

  void nextPressed() {
    _go.router.goNamed(StepCkdSelectPage.name);
  }

  void backPressed() {
    _go.router.goNamed(StepUrineSelectPage.name);
  }

  void setKeyboard({required bool isKeyboardOpen}) {
    if (state.isKeyboardOpen == isKeyboardOpen) return;

    state = state.copyWith(isKeyboardOpen: isKeyboardOpen);
  }
}
