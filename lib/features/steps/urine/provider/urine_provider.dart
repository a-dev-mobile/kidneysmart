import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:nutrition/core/enum/enum.dart';

import 'package:nutrition/core/services/navigation/navigation.dart';
import 'package:nutrition/core/services/storage/app_storage_service.dart';
import 'package:nutrition/core/utils/utils.dart';
import 'package:nutrition/core/valid/valid_extension.dart';
import 'package:nutrition/features/steps/ckd/ckd.dart';
import 'package:nutrition/features/steps/urine/urine.dart';

import 'package:nutrition/localization/localization.dart';

final urineProvider =
    StateNotifierProvider.autoDispose<UrineNotifier, UrineState>(
  (ref) {
    return UrineNotifier(
      l: ref.watch(appLocalizationsProvider),
      storage: ref.read(appStorageServiceProvider),
      go: ref.read(appRouterServiceProvider),
    )..load();
  },
);

class UrineNotifier extends StateNotifier<UrineState> {
  UrineNotifier({
    required AppLocalizations l,
    required AppStorageService storage,
    required AppRouterService go,
  })  : _storage = storage,
        _l = l,
        _go = go,
        super(storage.getUrineState());

  // ignore: unused_field
  final AppStorageService _storage;
  // ignore: unused_field
  final AppLocalizations _l;

  // ignore: unused_field
  final AppRouterService _go;

  /// preload

  List<UrineItemModel> get _initUrine {
    return <UrineItemModel>[
      const UrineItemModel(
        enumUrine: EnumUrine.no,
        value: 'Отсутствует',
      ),
      const UrineItemModel(
        enumUrine: EnumUrine.normal,
        value: 'Нормальный',
      ),
      const UrineItemModel(
        enumUrine: EnumUrine.enterValue,
        value: 'Ввести значение',
      ),
    ];
  }

  bool get isValidSelect =>
      state.select.enumValid.maybeMapValue(orElse: false, valid: true);
  bool get isValidInput =>
      state.input.enumValid.maybeMapValue(orElse: false, valid: true);

  bool get isValidAll => isValidSelect && isValidInput;

  bool get isShowInput =>
      state.select.enumUrine.maybeMapValue(orElse: false, enterValue: true);

  void load() {
    state = state.copyWith(
      select: state.select.copyWith(
        listUrine: _initUrine,
        listSelected: AppUtilsArray.getListBool(
          length: _initUrine.length,
          selectedIndex: state.select.selectedIndex,
        ),
      ),
    );
  }

  void setUrineSelect(
    int? v,
  ) {
    var error = '';
    if (v == null && state.select.selectedIndex == null) {
      error = 'Не указан уровень суточного диуреза';
    }

    final selectedIndex = v ?? state.select.selectedIndex;
    final listSelected = state.select.listUrine;

    final activeItem =
        selectedIndex != null ? listSelected[selectedIndex] : null;

    final enumUrine = activeItem?.enumUrine ?? EnumUrine.none;

    final listBool = AppUtilsArray.getListBool(
      length: listSelected.length,
      selectedIndex: selectedIndex,
    );

    final isValidSelect =
        enumUrine.maybeMapValue(orElse: false, no: true, normal: true);

    state = state.copyWith(
      input: state.input.copyWith(
        enumValid: isValidSelect ? EnumValid.valid : EnumValid.error,
      ),
      select: state.select.copyWith(
        listUrine: listSelected,
        selectedIndex: v,
        enumUrine: enumUrine,
        listSelected: listBool,
        error: error,
        enumValid: error.isEmpty ? EnumValid.valid : EnumValid.error,
      ),
    );

    _storage.setUrineState(state);
  }

  void setUrineInput(String? v) {
    var error = '';

    error = _validUrineOutput(v);

    state = state.copyWith(
      input: state.input.copyWith(
        result: v,
        enumValid: error.isEmpty ? EnumValid.valid : EnumValid.error,
        error: error,
        value: error.isEmpty ? double.tryParse(v!) : null,
      ),
    );
    _storage.setUrineState(state);
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
    if (v?.isEmpty ?? true && state.input.result.isEmpty) {
      return 'Не указано значение';
    }
    final updateV = v ?? state.input.result;

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

  void nextPage() {
    _go.router.pushNamed<void>(CkdPage.name);
  }
}
