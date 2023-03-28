// ignore_for_file: constant_identifier_names

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:nutrition/core/services/storage/app_storage_service.dart';

import 'package:nutrition/features/health_profile/health_profile.dart';
import 'package:nutrition/localization/localization.dart';

final diabetesProvider =
    StateNotifierProvider.autoDispose<DiabetesNotifier, DiabetesState>(
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

    final selectedIndex =
        v ?? _storage.getHealthProfileState().validDiabetesModel.selectedIndex;

    if (selectedIndex != null) {
      itemsInit[selectedIndex] =
          itemsInit[selectedIndex].copyWith(isSelected: true);
    }

    state = DiabetesState(diabetesInfo: itemsInit);
  }
}
