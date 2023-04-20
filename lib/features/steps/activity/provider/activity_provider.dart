import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:nutrition/core/enum/enum.dart';

import 'package:nutrition/core/services/navigation/navigation.dart';
import 'package:nutrition/core/services/storage/app_storage_service.dart';
import 'package:nutrition/core/utils/utils.dart';
import 'package:nutrition/features/steps/activity/activity.dart';
import 'package:nutrition/features/steps/hypertension/hypertension.dart';

import 'package:nutrition/localization/localization.dart';

final activityProvider =
    StateNotifierProvider.autoDispose<ActivityNotifier, ActivityState>(
  (ref) {
    return ActivityNotifier(
      l: ref.watch(appLocalizationsProvider),
      storage: ref.read(appStorageServiceProvider),
      go: ref.read(appRouterServiceProvider),
    )..load();
  },
);

class ActivityNotifier extends StateNotifier<ActivityState> {
  ActivityNotifier({
    required AppLocalizations l,
    required AppStorageService storage,
    required AppRouterService go,
  })  : _storage = storage,
        _l = l,
        _go = go,
        super(storage.getActivityState());

  // ignore: unused_field
  final AppStorageService _storage;
  // ignore: unused_field
  final AppLocalizations _l;

  // ignore: unused_field
  final AppRouterService _go;

  /// preload

  List<ActivityItemModel> get _initActivity {
    return <ActivityItemModel>[
      ActivityItemModel(enumActivity: EnumActivity.light, value: _l.light),
      ActivityItemModel(enumActivity: EnumActivity.normal, value: _l.normal),
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

  void nextPage() {
    _go.router.pushNamed<void>(HypertensionPage.name);
  }
}
