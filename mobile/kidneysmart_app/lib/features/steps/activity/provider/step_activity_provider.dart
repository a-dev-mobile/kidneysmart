import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:kidneysmart/core/data/local/shared_prefs/app_storage.dart';
import 'package:kidneysmart/core/enum/enum.dart';
import 'package:kidneysmart/core/utils/app_utils.dart';
import 'package:kidneysmart/core/utils/utils.dart';
import 'package:kidneysmart/features/steps/activity/activity.dart';
import 'package:kidneysmart/features/steps/hypertension/hypertension.dart';
import 'package:kidneysmart/features/steps/weight/view/step_weight_page.dart';
import 'package:kidneysmart/localization/localization.dart';
import 'package:kidneysmart/navigation/navigation.dart';

final stepActivityProvider =
    StateNotifierProvider.autoDispose<StepActivityNotifier, StepActivityState>(
  (ref) {
    return StepActivityNotifier(
      l: ref.watch(appLocalizationsProvider),
      storage: ref.read(appStorageProvider),
      go: ref.read(appRouterProvider),
    )..load();
  },
);

class StepActivityNotifier extends StateNotifier<StepActivityState> {
  StepActivityNotifier({
    required AppLocalizations l,
    required AppStorage storage,
    required AppRouter go,
  })  : _storage = storage,
        _l = l,
        _go = go,
        super(storage.getActivityState());

  // ignore: unused_field
  final AppStorage _storage;
  // ignore: unused_field
  final AppLocalizations _l;

  // ignore: unused_field
  final AppRouter _go;

  /// preload

  List<StepActivityItemModel> get _initActivity {
    return <StepActivityItemModel>[
      const StepActivityItemModel(
        enumActivity: EnumActivity.slightlyActive_1,
        title: 'Слегка активный',
        content: 'Сидячая работа, напр., офисный служащий',
      ),
      const StepActivityItemModel(
        enumActivity: EnumActivity.moderatelyActive_2,
        title: 'Умеренно активный',
        content: 'Стоячая работа, например, учителем',
      ),
      const StepActivityItemModel(
        enumActivity: EnumActivity.active_3,
        title: 'Aктивный',
        content: 'Ходячая работа, например, продавец',
      ),
      const StepActivityItemModel(
        enumActivity: EnumActivity.veryActive_4,
        title: 'Очень активный',
        content: 'Физическая работа, например, строитель',
      ),
    ];
  }

  bool get isValid => state.enumValid.maybeMapValue(orElse: false, valid: true);

  void load() {
    state = state.copyWith(
      listActivity: _initActivity,
      listSelected: AppUtilsArray.getListBool(
        length: _initActivity.length,
        selectedIndex: state.selectedIndex,
      ),
    );
  }

  void setActivity(int? v) {
    var error = '';
    if (v == null && state.selectedIndex == null) {
      error = _l.activity_not_selected;
    }
    // update
    final selectedIndex = v ?? state.selectedIndex;
    final listActivity = state.listActivity;

    final listBool = AppUtilsArray.getListBool(
      length: listActivity.length,
      selectedIndex: selectedIndex,
    );

    state = state.copyWith(
      listActivity: listActivity,
      selectedIndex: v,
      listSelected: listBool,
      enumActivity: selectedIndex != null
          ? listActivity[selectedIndex].enumActivity
          : null,
      error: error,
      enumValid: error.isEmpty ? EnumValid.valid : EnumValid.error,
    );

    _storage.setActivityState(state);
  }

  void nextPressed() {
    _go.router.goNamed(StepHypertensionPage.name);
  }

  void backPressed() {
    _go.router.goNamed(StepWeightPage.name);
  }
}
