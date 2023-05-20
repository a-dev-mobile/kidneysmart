import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:kidneysmart/core/data/local/shared_prefs/app_storage.dart';
import 'package:kidneysmart/core/enum/enum.dart';
import 'package:kidneysmart/core/utils/utils.dart';
import 'package:kidneysmart/features/calc_nutient/calc_nutient.dart';
import 'package:kidneysmart/features/steps/ckd_query/ckd_query.dart';
import 'package:kidneysmart/features/steps/ckd_select/ckd.dart';
import 'package:kidneysmart/features/steps/gfr/gfr.dart';
import 'package:kidneysmart/localization/localization.dart';
import 'package:kidneysmart/navigation/navigation.dart';

final ckdQueryProvider =
    StateNotifierProvider.autoDispose<CkdQueryNotifier, CkdQueryState>(
  (ref) {
    return CkdQueryNotifier(
      l: ref.watch(appLocalizationsProvider),
      storage: ref.read(appStorageProvider),
      go: ref.read(appRouterProvider),
    )..load();
  },
);

class CkdQueryNotifier extends StateNotifier<CkdQueryState> {
  CkdQueryNotifier({
    required AppLocalizations l,
    required AppStorage storage,
    required AppRouter go,
  })  : _storage = storage,
        _l = l,
        _go = go,
        super(storage.getCkdQueryState());

  // ignore: unused_field
  final AppStorage _storage;
  // ignore: unused_field
  final AppLocalizations _l;

  // ignore: unused_field
  final AppRouter _go;

  /// preload

  List<CkdQueryItemModel> get _initCkdQuery {
    return <CkdQueryItemModel>[
      CkdQueryItemModel(
        enumCkdQuery: EnumCkdQuery.yes,
        value: _l.yes_caps,
      ),
      CkdQueryItemModel(
        enumCkdQuery: EnumCkdQuery.no,
        value: _l.no_caps,
      ),
    ];
  }

  bool get isValid => state.enumValid.maybeMapValue(orElse: false, valid: true);

  void load() {
    state = state.copyWith(
      listCkdQuery: _initCkdQuery,
      listSelected: AppUtilsArray.getListBool(
        length: _initCkdQuery.length,
        selectedIndex: state.selectedIndex,
      ),
    );
  }

  void setCkdQuery(int? v) {
    var error = '';
    if (v == null && state.selectedIndex == null) {
      error = 'Выберите значение';
    }
    // update
    final selectedIndex = v ?? state.selectedIndex;
    final listCkdQuery = state.listCkdQuery;

    final listBool = AppUtilsArray.getListBool(
      length: listCkdQuery.length,
      selectedIndex: selectedIndex,
    );

    state = state.copyWith(
      listCkdQuery: listCkdQuery,
      selectedIndex: v,
      listSelected: listBool,
      enumCkdQuery: selectedIndex != null
          ? listCkdQuery[selectedIndex].enumCkdQuery
          : null,
      error: error,
      enumValid: error.isEmpty ? EnumValid.valid : EnumValid.error,
    );

    _storage.setCkdQueryState(state);
  }

  void nextPressed() {
    final namePage = state.enumCkdQuery.maybeMapValue(
      orElse: CalcNutrientPage.name,
      yes: StepGfrInputPage.name,
    );

    _go.router.goNamed(namePage);
  }

  void backPressed() {
    _go.router.goNamed(StepCkdSelectPage.name);
  }
}
