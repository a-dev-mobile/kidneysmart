import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:kidneysmart/core/data/local/shared_prefs/app_storage.dart';
import 'package:kidneysmart/core/enum/enum.dart';
import 'package:kidneysmart/core/utils/utils.dart';
import 'package:kidneysmart/features/calc_nutient/calc_nutient.dart';
import 'package:kidneysmart/features/steps/ckd_query/ckd_query.dart';
import 'package:kidneysmart/features/steps/ckd_select/ckd.dart';
import 'package:kidneysmart/features/steps/dialysiis_query/dialysiis_query.dart';
import 'package:kidneysmart/features/steps/urine_select/urine_select.dart';
import 'package:kidneysmart/localization/localization.dart';
import 'package:kidneysmart/navigation/navigation.dart';

final stepCkdSelectProvider = StateNotifierProvider.autoDispose<
    StepCkdSelectNotifier, StepCkdSelectState>(
  (ref) {
    return StepCkdSelectNotifier(
      l: ref.watch(appLocalizationsProvider),
      storage: ref.read(appStorageProvider),
      go: ref.read(appRouterProvider),
    )..load();
  },
);

class StepCkdSelectNotifier extends StateNotifier<StepCkdSelectState> {
  StepCkdSelectNotifier({
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
        enumCkd: EnumCkd.noKnow,
        value: _l.no_know,
      ),
    ];
  }

  bool get isValid => state.enumValid.maybeMapValue(orElse: false, valid: true);

  void load() {
    final enumGender = _storage.getGenderState().enumGender;

    state = state.copyWith(
      enumGender: enumGender,
      listCkd: _initCkd,
      listSelected: AppUtilsArray.getListBool(
        length: _initCkd.length,
        selectedIndex: state.selectedIndex,
      ),
    );
  }

  void setCkdSelect(int? v) {
    var error = '';
    if (v == null && state.selectedIndex == null) {
      error = 'Стадия ХБП не выбрана';
    }

    final selectedIndex = v ?? state.selectedIndex;
    final listCkd = state.listCkd;
    final activeItem = selectedIndex != null ? listCkd[selectedIndex] : null;
    final enumCkd = activeItem?.enumCkd ?? EnumCkd.none;

    final listBool = AppUtilsArray.getListBool(
      length: listCkd.length,
      selectedIndex: selectedIndex,
    );

    state = state.copyWith(
      listCkd: listCkd,
      selectedIndex: v,
      listSelected: listBool,
      enumCkd: enumCkd,
      error: error,
      enumValid: error.isEmpty ? EnumValid.valid : EnumValid.error,
    );

    _storage.setCkdState(state);
  }

  void nextPressed() {
    state.enumCkd.maybeMap(
      orElse: () => _go.router.goNamed(CalcNutrientPage.name),
      five: () => _go.router.goNamed(StepDialysisQueryPage.name),
      noKnow: () => _go.router.goNamed(StepCkdQueryPage.name),
    );
  }

  void backPressed() {
    _go.router.goNamed(StepUrineSelectPage.name);
  }
}
