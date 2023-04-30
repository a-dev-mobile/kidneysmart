import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:nutrition/features/steps/ckd/ckd.dart';
import 'package:nutrition/localization/localization.dart';
import 'package:nutrition/navigation/navigation.dart';
import 'package:nutrition/shared/data/local/shared_prefs/app_storage.dart';
import 'package:nutrition/shared/enum/enum.dart';
import 'package:nutrition/shared/utils/utils.dart';
import 'package:nutrition/shared/valid/valid_extension.dart';

final ckdProvider = StateNotifierProvider.autoDispose<CkdNotifier, CkdState>(
  (ref) {
    return CkdNotifier(
      l: ref.watch(appLocalizationsProvider),
      storage: ref.read(appStorageProvider),
      go: ref.read(appRouterProvider),
    )..load();
  },
);

class CkdNotifier extends StateNotifier<CkdState> {
  CkdNotifier({
    required AppLocalizations l,
    required AppStorage storage,
    required AppRouter go,
  })  : _storage = storage,
        _l = l,
        _go = go,
        super(storage.getCkdState());

  // ignore: unused_field
  final AppStorage _storage;
  // ignore: unused_field
  final AppLocalizations _l;

  // ignore: unused_field
  final AppRouter _go;

  /// preload

  List<CkdItemModel> get _initCkd {
    return <CkdItemModel>[
      const CkdItemModel(
        enumCkd: EnumCkd.one,
        value: '1',
      ),
      const CkdItemModel(
        enumCkd: EnumCkd.two,
        value: '2',
      ),
      const CkdItemModel(
        enumCkd: EnumCkd.threeA,
        value: '3a',
      ),
      const CkdItemModel(
        enumCkd: EnumCkd.threeB,
        value: '3b',
      ),
      const CkdItemModel(
        enumCkd: EnumCkd.four,
        value: '4',
      ),
      const CkdItemModel(
        enumCkd: EnumCkd.five,
        value: '5',
      ),
      CkdItemModel(
        enumCkd: EnumCkd.calculate,
        value: _l.calculate,
      ),
    ];
  }

  bool get isValidSelect =>
      state.select.enumValid.maybeMapValue(orElse: false, valid: true);
  bool get isValidInput =>
      state.input.enumValid.maybeMapValue(orElse: false, valid: true);

  bool get isValidAll => isValidSelect && isValidInput;

  bool get isShowInput =>
      state.select.enumCkd.maybeMapValue(orElse: false, calculate: true);

  void load() {
    state = state.copyWith(
      select: state.select.copyWith(
        listCkd: _initCkd,
        listSelected: AppUtilsArray.getListBool(
          length: _initCkd.length,
          selectedIndex: state.select.selectedIndex,
        ),
      ),
    );
  }

  void changeTypeCreatinine(EnumInputTypeCreatinine? value) {
    state = state.copyWith(
      input: state.input.copyWith(inputTypeCreatinine: value),
    );

    // setCkdSelect(null);
  }

  void setCkdSelect(int? v) {
    var error = '';
    if (v == null && state.select.selectedIndex == null) {
      error = 'Стадия ХБП не выбрана';
    }

    final selectedIndex = v ?? state.select.selectedIndex;
    final listCkd = state.select.listCkd;
    final activeItem = selectedIndex != null ? listCkd[selectedIndex] : null;
    final enumCkd = activeItem?.enumCkd ?? EnumCkd.none;

    final listBool = AppUtilsArray.getListBool(
      length: listCkd.length,
      selectedIndex: selectedIndex,
    );

    final isValidSelect = enumCkd.maybeMapValue(orElse: true, calculate: false);

    state = state.copyWith(
      input: state.input.copyWith(
        enumValid: isValidSelect ? EnumValid.valid : EnumValid.error,
      ),
      select: state.select.copyWith(
        listCkd: listCkd,
        selectedIndex: v,
        listSelected: listBool,
        enumCkd: enumCkd,
        error: error,
        enumValid: error.isEmpty ? EnumValid.valid : EnumValid.error,
      ),
    );

    if (enumCkd == EnumCkd.calculate) setCkdInput(null);
    _storage.setCkdState(state);
  }

  void setCkdInput(String? v) {
    var error = '';
    final vNew = v ?? state.input.result;
    error = _validCreatinine(v);
    final enumValid = error.isEmpty ? EnumValid.valid : EnumValid.error;
    state = state.copyWith(
      input: state.input.copyWith(
        result: v,
        value: error.isEmpty ? double.tryParse(vNew) : null,
        error: error,
        enumValid: enumValid,
      ),
    );

    // _calcGfr();
    _storage.setCkdState(state);
  }

  String _validCreatinine(String? v) {
    if (v?.isEmpty ?? true && state.input.result.isEmpty) {
      return 'Креатинин не указан';
    }

    final updateV = v ?? state.input.result;

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
    // _go.router.pushNamed<void>(BirthdayPage.name);
  }
}
