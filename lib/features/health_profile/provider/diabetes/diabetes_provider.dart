// ignore_for_file: constant_identifier_names

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:nutrition/core/enum/enum.dart';
import 'package:nutrition/core/services/storage/app_storage_service.dart';

import 'package:nutrition/features/health_profile/health_profile.dart';
import 'package:nutrition/localization/localization.dart';

final diabetesProvider = StateNotifierProvider<DiabetesNotifier, DiabetesState>(
  (ref) {
    return DiabetesNotifier(
      ref: ref,
    )..load();
  },
);

class DiabetesNotifier extends StateNotifier<DiabetesState> {
  DiabetesNotifier({
    required Ref ref,
  })  : _ref = ref,
        _storage = ref.read(appStorageServiceProvider),
        _l = ref.watch(appLocalizationsProvider),
        super(
          const DiabetesState(),
        );

  // ignore: unused_field
  final Ref _ref;

  final AppLocalizations _l;
  // ignore: unused_field
  final AppStorageService _storage;
  void load([int? v]) {
    final itemsInit = <DiabetesItemModel>[
      DiabetesItemModel(
        enumDiabetes: EnumDiabetes.yes,
        value: _l.yes_caps,
      ),
      DiabetesItemModel(
        enumDiabetes: EnumDiabetes.no,
        value: _l.no_caps,
      ),
    ];

    final selectedIndex = v ?? state.selectedIndex;

    if (selectedIndex != null) {
      itemsInit[selectedIndex] =
          itemsInit[selectedIndex].copyWith(isSelected: true);
    }

    state = DiabetesState(diabetesInfo: itemsInit);
  }

  void setDiabetes(int? v, {bool isSaveLocal = true}) {
    var error = '';
    if (v == null && state.selectedIndex == null) {
      error = 'Подтвердите отсутствие или наличие диабета';
    }
    // update other provider
    final _ = _ref.read(diabetesProvider.notifier).load(v);
    state = state.copyWith(
      selectedIndex: v,
      error: error,
      enumValid: error.isEmpty ? EnumValid.valid : EnumValid.error,
    );
//     if (isSaveLocal) _saveState();
  }
}
