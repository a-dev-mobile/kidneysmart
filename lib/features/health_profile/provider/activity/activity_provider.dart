// ignore_for_file: constant_identifier_names

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:nutrition/core/services/storage/app_storage_service.dart';

import 'package:nutrition/features/health_profile/health_profile.dart';
import 'package:nutrition/localization/localization.dart';

final activityProvider = StateNotifierProvider<ActivityNotifier, ActivityState>(
  (ref) {
    return ActivityNotifier(
      ref: ref,
    )..load();
  },
);

class ActivityNotifier extends StateNotifier<ActivityState> {
  ActivityNotifier({
    required Ref ref,
  })  : _ref = ref,
        _storage = ref.read(appStorageServiceProvider),
        _l = ref.watch(appLocalizationsProvider),
        super(
          const ActivityState(),
        );

  // ignore: unused_field
  final Ref _ref;

  final AppLocalizations _l;
  // ignore: unused_field
  final AppStorageService _storage;
  void load([int? v]) {
    final itemsInit = <ActivityItemModel>[
      ActivityItemModel(enumActivity: EnumActivity.light, value: _l.light),
      ActivityItemModel(enumActivity: EnumActivity.normal, value: _l.normal),
    ];

    final selectedIndex = v ?? state.selectedIndex;

    if (selectedIndex != null) {
      itemsInit[selectedIndex] =
          itemsInit[selectedIndex].copyWith(isSelected: true);
    }

    state = ActivityState(activityInfo: itemsInit);
  }

  void setActivity(int? v, {bool isSaveLocal = true}) {
    var error = '';
    if (v == null && state.selectedIndex == null) {
      error = _l.activity_not_selected;
    }
    // update  provider
    load(v);

    state = state.copyWith(
      selectedIndex: v,
      error: error,
    );
//     if (isSaveLocal) _saveState();
  }
}
