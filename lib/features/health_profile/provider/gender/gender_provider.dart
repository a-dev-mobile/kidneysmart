// ignore_for_file: constant_identifier_names

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:nutrition/core/enum/enum.dart';
import 'package:nutrition/core/services/storage/app_storage_service.dart';

import 'package:nutrition/features/health_profile/health_profile.dart';
import 'package:nutrition/localization/localization.dart';

final genderProvider = StateNotifierProvider<GenderNotifier, GenderState>(
  (ref) {
    return GenderNotifier(
      ref: ref,
    )..load();
  },
);

class GenderNotifier extends StateNotifier<GenderState> {
  GenderNotifier({
    required Ref ref,
  })  : _ref = ref,
        _storage = ref.read(appStorageServiceProvider),
        _l = ref.watch(appLocalizationsProvider),
        super(
          const GenderState(),
        );

  // ignore: unused_field
  final Ref _ref;

  final AppLocalizations _l;
  // ignore: unused_field
  final AppStorageService _storage;
  void load([int? v]) {
    final itemsInit = <GenderItemModel>[
      GenderItemModel(enumGender: EnumGender.male, value: _l.male),
      GenderItemModel(enumGender: EnumGender.female, value: _l.female),
    ];

    final selectedIndex = v ?? state.selectedIndex;

    if (selectedIndex != null) {
      itemsInit[selectedIndex] =
          itemsInit[selectedIndex].copyWith(isSelected: true);
    }

    state = GenderState(gender: itemsInit);
  }

  void setGender(int? v, {bool isSaveLocal = true}) {
    var error = '';
    if (v == null && state.selectedIndex == null) {
      error = _l.gender_not_selected;
    }
    // update other provider
    _ref.read(genderProvider.notifier).load(v);
    state = state.copyWith(
      selectedIndex: v,
      error: error,
      enumValid: error.isEmpty ? EnumValid.valid : EnumValid.error,
    );
//     if (isSaveLocal) _saveState();

    // _upgradeCreatinine(error);
  }
}
