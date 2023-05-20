import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:kidneysmart/core/data/local/shared_prefs/app_storage.dart';
import 'package:kidneysmart/core/enum/enum.dart';
import 'package:kidneysmart/core/utils/utils.dart';
import 'package:kidneysmart/features/calc_nutient/calc_nutient.dart';
import 'package:kidneysmart/features/steps/dialysis_type/dialysis_type.dart';
import 'package:kidneysmart/features/steps/weight_dry_input/weight_dry_input.dart';
import 'package:kidneysmart/features/steps/weight_dry_query/weight_dry_query.dart';
import 'package:kidneysmart/localization/localization.dart';
import 'package:kidneysmart/navigation/navigation.dart';

final weightDryQueryProvider = StateNotifierProvider.autoDispose<
    WeightDryQueryNotifier, WeightDryQueryState>(
  (ref) {
    return WeightDryQueryNotifier(
      l: ref.watch(appLocalizationsProvider),
      storage: ref.read(appStorageProvider),
      go: ref.read(appRouterProvider),
    )..load();
  },
);

class WeightDryQueryNotifier extends StateNotifier<WeightDryQueryState> {
  WeightDryQueryNotifier({
    required AppLocalizations l,
    required AppStorage storage,
    required AppRouter go,
  })  : _storage = storage,
        _l = l,
        _go = go,
        super(storage.getWeightDryQueryState());

  // ignore: unused_field
  final AppStorage _storage;
  // ignore: unused_field
  final AppLocalizations _l;

  // ignore: unused_field
  final AppRouter _go;

  /// preload

  List<WeightDryQueryItemModel> get _initWeightDryQuery {
    return <WeightDryQueryItemModel>[
      WeightDryQueryItemModel(
        enumWeightDryQuery: EnumWeightDryQuery.yes,
        value: _l.yes_caps,
      ),
      WeightDryQueryItemModel(
        enumWeightDryQuery: EnumWeightDryQuery.no,
        value: _l.no_caps,
      ),
    ];
  }

  bool get isValid => state.enumValid.maybeMapValue(orElse: false, valid: true);

  void load() {
    state = state.copyWith(
      listWeightDryQuery: _initWeightDryQuery,
      listSelected: AppUtilsArray.getListBool(
        length: _initWeightDryQuery.length,
        selectedIndex: state.selectedIndex,
      ),
    );
  }

  void setWeightDryQuery(int? v) {
    var error = '';
    if (v == null && state.selectedIndex == null) {
      error = 'Выберите значение';
    }
    // update
    final selectedIndex = v ?? state.selectedIndex;
    final listWeightDryQuery = state.listWeightDryQuery;

    final listBool = AppUtilsArray.getListBool(
      length: listWeightDryQuery.length,
      selectedIndex: selectedIndex,
    );

    state = state.copyWith(
      listWeightDryQuery: listWeightDryQuery,
      selectedIndex: v,
      listSelected: listBool,
      enumWeightDryQuery: selectedIndex != null
          ? listWeightDryQuery[selectedIndex].enumWeightDryQuery
          : null,
      error: error,
      enumValid: error.isEmpty ? EnumValid.valid : EnumValid.error,
    );

    _storage.setWeightDryQueryState(state);
  }

  void nextPressed() {
    state.enumWeightDryQuery.maybeMap(
      yes: () => _go.router.goNamed(StepWeightDryInputPage.name),
      orElse: () => _go.router.goNamed(CalcNutrientPage.name),
    );
  }

  void backPressed() {
    _go.router.goNamed(StepDialysisTypePage.name);
  }
}
