import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:kidneysmart/core/data/local/shared_prefs/app_storage.dart';
import 'package:kidneysmart/core/enum/enum.dart';
import 'package:kidneysmart/core/utils/utils.dart';
import 'package:kidneysmart/features/steps/ckd_select/ckd.dart';
import 'package:kidneysmart/features/steps/diabetes/diabetes.dart';
import 'package:kidneysmart/features/steps/urine_input/urine_input.dart';
import 'package:kidneysmart/features/steps/urine_select/urine_select.dart';
import 'package:kidneysmart/localization/localization.dart';
import 'package:kidneysmart/navigation/navigation.dart';

final stepUrineSelectProvider = StateNotifierProvider.autoDispose<
    StepUrineSelectNotifier, StepUrineSelectState>(
  (ref) {
    return StepUrineSelectNotifier(
      l: ref.watch(appLocalizationsProvider),
      storage: ref.read(appStorageProvider),
      go: ref.read(appRouterProvider),
    )..load();
  },
);

class StepUrineSelectNotifier extends StateNotifier<StepUrineSelectState> {
  StepUrineSelectNotifier({
    required AppLocalizations l,
    required AppStorage storage,
    required AppRouter go,
  })  : _storage = storage,
        _l = l,
        _go = go,
        super(storage.getUrineSelectState());

  // ignore: unused_field
  final AppStorage _storage;
  // ignore: unused_field
  final AppLocalizations _l;

  // ignore: unused_field
  final AppRouter _go;

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

  bool get isValid => state.enumValid.maybeMapValue(orElse: false, valid: true);

  void load() {
    state = state.copyWith(
      listUrine: _initUrine,
      listSelected: AppUtilsArray.getListBool(
        length: _initUrine.length,
        selectedIndex: state.selectedIndex,
      ),
    );
  }

  void setUrineSelect(
    int? v,
  ) {
    var enumValid = EnumValid.valid;

    if (v == null && state.selectedIndex == null) {
      enumValid = EnumValid.error;
    }

    final selectedIndex = v ?? state.selectedIndex;
    final listSelected = state.listUrine;

    final activeItem =
        selectedIndex != null ? listSelected[selectedIndex] : null;

    final enumUrine = activeItem?.enumUrine ?? EnumUrine.none;

    final listBool = AppUtilsArray.getListBool(
      length: listSelected.length,
      selectedIndex: selectedIndex,
    );

    state = state.copyWith(
      listUrine: listSelected,
      selectedIndex: v,
      enumUrine: enumUrine,
      listSelected: listBool,
      enumValid: enumValid,
    );

    _storage.setUrineSelectState(state);
  }

  void nextPressed() {
    final nextPage = state.enumUrine.maybeMapValue(
      orElse: StepCkdSelectPage.name,
      enterValue: StepUrineInputPage.name,
    );

    _go.router.goNamed(nextPage);
  }

  void backPressed() {
    _go.router.goNamed(StepDiabetesPage.name);
  }
}
