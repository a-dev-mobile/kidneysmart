// ignore_for_file: constant_identifier_names

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:nutrition/core/enum/enum.dart';
import 'package:nutrition/core/services/storage/app_storage_service.dart';

import 'package:nutrition/features/health_profile/health_profile.dart';
import 'package:nutrition/localization/localization.dart';

final hypertensionProvider =
    StateNotifierProvider<HypertensionNotifier, HypertensionState>(
  (ref) {
    return HypertensionNotifier(
      ref: ref,
    )..load();
  },
);

class HypertensionNotifier extends StateNotifier<HypertensionState> {
  HypertensionNotifier({
    required Ref ref,
  })  : _ref = ref,
        _storage = ref.read(appStorageServiceProvider),
        _l = ref.watch(appLocalizationsProvider),
        super(
          const HypertensionState(),
        );

  // ignore: unused_field
  final Ref _ref;

  final AppLocalizations _l;
  // ignore: unused_field
  final AppStorageService _storage;
  void load([int? v]) {
    final itemsInit = <HypertensionItemModel>[
      HypertensionItemModel(
        enumHypertension: EnumHypertension.yes,
        value: _l.yes_caps,
      ),
      HypertensionItemModel(
        enumHypertension: EnumHypertension.no,
        value: _l.no_caps,
      ),
    ];

    final selectedIndex = v ?? state.selectedIndex;

    if (selectedIndex != null) {
      itemsInit[selectedIndex] =
          itemsInit[selectedIndex].copyWith(isSelected: true);
    }

    state = HypertensionState(hypertensionInfo: itemsInit);
  }

  void setHypertension(int? v, {bool isSaveLocal = true}) {
    var error = '';
    if (v == null && state.selectedIndex == null) {
      error = 'Подтвердите отсутствие или наличие гипертензии';
    }
    // update other provider
    load(v);
    state = state.copyWith(
      selectedIndex: v,
      error: error,
      enumValid: error.isEmpty ? EnumValid.valid : EnumValid.error,
    );
//     if (isSaveLocal) _saveState();
  }
}
