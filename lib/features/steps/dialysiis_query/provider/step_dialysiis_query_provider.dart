import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:kidneysmart/core/data/local/shared_prefs/app_storage.dart';
import 'package:kidneysmart/core/enum/enum.dart';
import 'package:kidneysmart/core/utils/utils.dart';
import 'package:kidneysmart/features/steps/ckd_select/ckd.dart';
import 'package:kidneysmart/features/steps/dialysiis_query/dialysiis_query.dart';
import 'package:kidneysmart/features/steps/dialysis_type/dialysis_type.dart';
import 'package:kidneysmart/features/steps/weight_dry_query/weight_dry_query.dart';
import 'package:kidneysmart/localization/localization.dart';
import 'package:kidneysmart/navigation/navigation.dart';

final dialysisQueryProvider = StateNotifierProvider.autoDispose<
    DialysisQueryNotifier, DialysisQueryState>(
  (ref) {
    return DialysisQueryNotifier(
      l: ref.watch(appLocalizationsProvider),
      storage: ref.read(appStorageProvider),
      go: ref.read(appRouterProvider),
    )..load();
  },
);

class DialysisQueryNotifier extends StateNotifier<DialysisQueryState> {
  DialysisQueryNotifier({
    required AppLocalizations l,
    required AppStorage storage,
    required AppRouter go,
  })  : _storage = storage,
        _l = l,
        _go = go,
        super(storage.getDialysisQueryState());

  // ignore: unused_field
  final AppStorage _storage;
  // ignore: unused_field
  final AppLocalizations _l;

  // ignore: unused_field
  final AppRouter _go;

  /// preload

  List<DialysisQueryItemModel> get _initDialysisQuery {
    return <DialysisQueryItemModel>[
      DialysisQueryItemModel(
        enumDialysisQuery: EnumDialysisQuery.yes,
        value: _l.yes_caps,
      ),
      DialysisQueryItemModel(
        enumDialysisQuery: EnumDialysisQuery.no,
        value: _l.no_caps,
      ),
    ];
  }

  bool get isValid => state.enumValid.maybeMapValue(orElse: false, valid: true);

  void load() {
    state = state.copyWith(
      listDialysisQuery: _initDialysisQuery,
      listSelected: AppUtilsArray.getListBool(
        length: _initDialysisQuery.length,
        selectedIndex: state.selectedIndex,
      ),
    );
  }

  void setDialysisQuery(int? v) {
    var error = '';
    if (v == null && state.selectedIndex == null) {
      error = 'Выберите значение';
    }
    // update
    final selectedIndex = v ?? state.selectedIndex;
    final listDialysisQuery = state.listDialysisQuery;

    final listBool = AppUtilsArray.getListBool(
      length: listDialysisQuery.length,
      selectedIndex: selectedIndex,
    );

    state = state.copyWith(
      listDialysisQuery: listDialysisQuery,
      selectedIndex: v,
      listSelected: listBool,
      enumDialysisQuery: selectedIndex != null
          ? listDialysisQuery[selectedIndex].enumDialysisQuery
          : null,
      error: error,
      enumValid: error.isEmpty ? EnumValid.valid : EnumValid.error,
    );

    _storage.setDialysisQueryState(state);
  }

  void nextPressed() {
    final nextPage = state.enumDialysisQuery.maybeMapValue(
      yes: StepDialysisTypePage.name,
      orElse: StepWeightDryQueryPage.name,
    );

    _go.router.pushNamed<void>(nextPage);
  }

  void backPressed() {
    _go.router.goNamed(StepCkdSelectPage.name);
  }
}
