// ignore_for_file: constant_identifier_names

import 'package:collection/collection.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:nutrition/core/services/storage/app_storage_service.dart';
import 'package:nutrition/features/health_profile/health_profile.dart';

import 'package:nutrition/localization/localization.dart';

final ckdProvider = StateNotifierProvider.autoDispose<CkdNotifier, CkdState>(
  (ref) {
    return CkdNotifier(
      ref: ref,
    )..load();
  },
);

class CkdNotifier extends StateNotifier<CkdState> {
  CkdNotifier({
    required Ref ref,
  })  : _ref = ref,
        _storage = ref.read(appStorageServiceProvider),
        _l = ref.watch(appLocalizationsProvider),
        super(
          const CkdState(),
        );

  // ignore: unused_field
  final Ref _ref;

  // ignore: unused_field
  final AppLocalizations _l;
  final AppStorageService _storage;
  void load([int? v]) {
    final itemsInit = <CkdItemModel>[
      const CkdItemModel(
        enumCkd: EnumCkd.one,
        value: '1',
      ),
      const CkdItemModel(
        enumCkd: EnumCkd.two,
        value: '2',
      ),
      const CkdItemModel(
        enumCkd: EnumCkd.threeA,
        value: '3a',
      ),
      const CkdItemModel(
        enumCkd: EnumCkd.threeB,
        value: '3b',
      ),
      const CkdItemModel(
        enumCkd: EnumCkd.four,
        value: '4',
      ),
      const CkdItemModel(
        enumCkd: EnumCkd.five,
        value: '5',
      ),
      const CkdItemModel(
        enumCkd: EnumCkd.calculate,
        value: 'Рассчитать',
      ),
    ];

    final selectedIndex =
        v ?? _storage.getHealthProfileState().validCkdModel.selectedIndex;

    if (selectedIndex != null) {
      itemsInit[selectedIndex] =
          itemsInit[selectedIndex].copyWith(isSelected: true);
    }

    state = CkdState(
      ckdInfo: itemsInit,
    );
    _setVisiblyInput();
  }

  void _setVisiblyInput() {
    final activeItem = state.ckdInfo.firstWhereOrNull((e) => e.isSelected);

    state = state.copyWith(
      isShowInput: activeItem?.enumCkd == EnumCkd.calculate,
    );
  }

  void changeTypeCreatinine(EnumInputTypeCreatinine? value) {
    state =
        state.copyWith(inputTypeCreatinine: value ?? state.inputTypeCreatinine);
  }
}
