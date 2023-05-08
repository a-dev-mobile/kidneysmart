import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:nutrition/features/steps/dialysis_type/dialysis_type.dart';
import 'package:nutrition/features/steps/weight_dry_query/weight_dry_query.dart';
import 'package:nutrition/localization/localization.dart';
import 'package:nutrition/navigation/navigation.dart';
import 'package:nutrition/shared/data/local/shared_prefs/app_storage.dart';
import 'package:nutrition/shared/enum/enum.dart';
import 'package:nutrition/shared/utils/utils.dart';

final dialysisTypeProvider =
    StateNotifierProvider.autoDispose<DialysisTypeNotifier, DialysisTypeState>(
  (ref) {
    return DialysisTypeNotifier(
      l: ref.watch(appLocalizationsProvider),
      storage: ref.read(appStorageProvider),
      go: ref.read(appRouterProvider),
    )..load();
  },
);

class DialysisTypeNotifier extends StateNotifier<DialysisTypeState> {
  DialysisTypeNotifier({
    required AppLocalizations l,
    required AppStorage storage,
    required AppRouter go,
  })  : _storage = storage,
        _l = l,
        _go = go,
        super(storage.getDialysisTypeState());

  // ignore: unused_field
  final AppStorage _storage;
  // ignore: unused_field
  final AppLocalizations _l;

  // ignore: unused_field
  final AppRouter _go;

  /// preload

  List<DialysisTypeItemModel> get _initDialysisType {
    return <DialysisTypeItemModel>[
      const DialysisTypeItemModel(
        enumDialysisType: EnumDialysisType.homodialysisType,
        value: 'Гомодиализ',
      ),
      const DialysisTypeItemModel(
        enumDialysisType: EnumDialysisType.perinatal,
        value: 'Перинатальный',
      ),
    ];
  }

  bool get isValid => state.enumValid.maybeMapValue(orElse: false, valid: true);

  void load() {
    state = state.copyWith(
      listDialysisType: _initDialysisType,
      listSelected: AppUtilsArray.getListBool(
        length: _initDialysisType.length,
        selectedIndex: state.selectedIndex,
      ),
    );
  }

  void setDialysisType(
    int? v,
  ) {
    var error = '';
    if (v == null && state.selectedIndex == null) {
      error = 'Укажите есть у вас диализ или нет';
    }
    // update
    final selectedIndex = v ?? state.selectedIndex;
    final listDialysisType = state.listDialysisType;

    final listBool = AppUtilsArray.getListBool(
      length: listDialysisType.length,
      selectedIndex: selectedIndex,
    );

    final enumDialysisType = selectedIndex != null
        ? listDialysisType[selectedIndex].enumDialysisType
        : EnumDialysisType.none;

    state = state.copyWith(
      listDialysisType: listDialysisType,
      selectedIndex: v,
      listSelected: listBool,
      enumDialysisType: enumDialysisType,
      error: error,
      enumValid: error.isEmpty ? EnumValid.valid : EnumValid.error,
    );
    _storage.setDialysisTypeState(state);
  }

  void nextPage() {
    _go.router.pushNamed<void>(StepWeightDryQueryPage.name);
  }
}
