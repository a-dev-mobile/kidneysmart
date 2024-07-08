import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:kidneysmart/core/data/local/shared_prefs/app_storage.dart';
import 'package:kidneysmart/core/enum/enum.dart';
import 'package:kidneysmart/core/utils/utils.dart';
import 'package:kidneysmart/features/steps/diabetes/diabetes.dart';
import 'package:kidneysmart/features/steps/hypertension/hypertension.dart';
import 'package:kidneysmart/features/steps/urine_select/urine_select.dart';
import 'package:kidneysmart/localization/localization.dart';
import 'package:kidneysmart/navigation/navigation.dart';

final diabetesProvider =
    StateNotifierProvider.autoDispose<DiabetesNotifier, DiabetesState>(
  (ref) {
    return DiabetesNotifier(
      l: ref.watch(appLocalizationsProvider),
      storage: ref.read(appStorageProvider),
      go: ref.read(appRouterProvider),
    )..load();
  },
);

class DiabetesNotifier extends StateNotifier<DiabetesState> {
  DiabetesNotifier({
    required AppLocalizations l,
    required AppStorage storage,
    required AppRouter go,
  })  : _storage = storage,
        _l = l,
        _go = go,
        super(storage.getDiabetesState());

  // ignore: unused_field
  final AppStorage _storage;
  // ignore: unused_field
  final AppLocalizations _l;

  // ignore: unused_field
  final AppRouter _go;

  /// preload

  List<DiabetesItemModel> get _initDiabetes {
    return <DiabetesItemModel>[
      DiabetesItemModel(
        enumDiabetes: EnumDiabetes.yes,
        value: _l.yes_caps,
      ),
      DiabetesItemModel(
        enumDiabetes: EnumDiabetes.no,
        value: _l.no_caps,
      ),
    ];
  }

  bool get isValid => state.enumValid.maybeMapValue(orElse: false, valid: true);

  void load() {
    state = state.copyWith(
      listDiabetes: _initDiabetes,
      listSelected: AppUtilsArray.getListBool(
        length: _initDiabetes.length,
        selectedIndex: state.selectedIndex,
      ),
    );
  }

  void setDiabetes(int? v) {
    var error = '';
    if (v == null && state.selectedIndex == null) {
      error = 'Выберите значение';
    }
    // update
    final selectedIndex = v ?? state.selectedIndex;
    final listDiabetes = state.listDiabetes;

    final listBool = AppUtilsArray.getListBool(
      length: listDiabetes.length,
      selectedIndex: selectedIndex,
    );

    state = state.copyWith(
      listDiabetes: listDiabetes,
      selectedIndex: v,
      listSelected: listBool,
      enumDiabetes: selectedIndex != null
          ? listDiabetes[selectedIndex].enumDiabetes
          : null,
      error: error,
      enumValid: error.isEmpty ? EnumValid.valid : EnumValid.error,
    );

    _storage.setDiabetesState(state);
  }

  void nextPressed() {
    _go.router.goNamed(StepUrineSelectPage.name);
  }

  void backPressed() {
    _go.router.goNamed(StepHypertensionPage.name);
  }
}
