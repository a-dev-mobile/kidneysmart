import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:nutrition/features/steps/diabetes/diabetes.dart';
import 'package:nutrition/features/steps/hypertension/hypertension.dart';
import 'package:nutrition/localization/localization.dart';
import 'package:nutrition/navigation/navigation.dart';
import 'package:nutrition/shared/data/local/shared_prefs/app_storage.dart';
import 'package:nutrition/shared/enum/enum.dart';
import 'package:nutrition/shared/utils/utils.dart';

final hypertensionProvider =
    StateNotifierProvider.autoDispose<HypertensionNotifier, HypertensionState>(
  (ref) {
    return HypertensionNotifier(
      l: ref.watch(appLocalizationsProvider),
      storage: ref.read(appStorageProvider),
      go: ref.read(appRouterServiceProvider),
    )..load();
  },
);

class HypertensionNotifier extends StateNotifier<HypertensionState> {
  HypertensionNotifier({
    required AppLocalizations l,
    required AppStorage storage,
    required AppRouterService go,
  })  : _storage = storage,
        _l = l,
        _go = go,
        super(storage.getHypertensionState());

  // ignore: unused_field
  final AppStorage _storage;
  // ignore: unused_field
  final AppLocalizations _l;

  // ignore: unused_field
  final AppRouterService _go;

  /// preload

  List<HypertensionItemModel> get _initHypertension {
    return <HypertensionItemModel>[
      HypertensionItemModel(
        enumHypertension: EnumHypertension.yes,
        value: _l.yes_caps,
      ),
      HypertensionItemModel(
        enumHypertension: EnumHypertension.no,
        value: _l.no_caps,
      ),
    ];
  }

  bool get isValid => state.enumValid.maybeMapValue(orElse: false, valid: true);

  void load() {
    state = state.copyWith(
      listHypertension: _initHypertension,
      listSelected: AppUtilsArray.getListBool(
        length: _initHypertension.length,
        selectedIndex: state.selectedIndex,
      ),
    );
  }

  void setHypertension(int? v) {
    var error = '';
    if (v == null && state.selectedIndex == null) {
      error = 'Выберите значение';
    }
    // update
    final selectedIndex = v ?? state.selectedIndex;
    final listHypertension = state.listHypertension;

    final listBool = AppUtilsArray.getListBool(
      length: listHypertension.length,
      selectedIndex: selectedIndex,
    );

    state = state.copyWith(
      listHypertension: listHypertension,
      selectedIndex: v,
      listSelected: listBool,
      enumHypertension: selectedIndex != null
          ? listHypertension[selectedIndex].enumHypertension
          : null,
      error: error,
      enumValid: error.isEmpty ? EnumValid.valid : EnumValid.error,
    );

    _storage.setHypertensionState(state);
  }

  void nextPage() {
    _go.router.pushNamed<void>(DiabetesPage.name);
  }
}
