// ignore_for_file: constant_identifier_names

import 'package:collection/collection.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:nutrition/core/services/storage/app_storage_service.dart';

import 'package:nutrition/features/health_profile/health_profile.dart';
import 'package:nutrition/localization/localization.dart';

final dailyDiuresisProvider = StateNotifierProvider.autoDispose<
    DailyDiuresisNotifier, DailyDiuresisState>(
  (ref) {
    return DailyDiuresisNotifier(
      ref: ref,
    )..load();
  },
);

class DailyDiuresisNotifier extends StateNotifier<DailyDiuresisState> {
  DailyDiuresisNotifier({
    required Ref ref,
  })  : _ref = ref,
        _storage = ref.read(appStorageServiceProvider),
        _l = ref.watch(appLocalizationsProvider),
        super(
          const DailyDiuresisState(),
        );

  // ignore: unused_field
  final Ref _ref;

  // ignore: unused_field
  final AppLocalizations _l;
  final AppStorageService _storage;
  void load([int? v]) {
    final itemsInit = <DailyDiuresisItemModel>[
      const DailyDiuresisItemModel(
        enumDailyDiuresis: EnumDailyDiuresis.no,
        value: 'Отсутствует',
      ),
      const DailyDiuresisItemModel(
        enumDailyDiuresis: EnumDailyDiuresis.normal,
        value: 'Нормальный',
      ),
      const DailyDiuresisItemModel(
        enumDailyDiuresis: EnumDailyDiuresis.enterValue,
        value: 'Ввести значение',
      ),
    ];

    final selectedIndex =
        v ?? _storage.getHealthProfileState().dailyDiuresisModel.selectedIndex;

    if (selectedIndex != null) {
      itemsInit[selectedIndex] =
          itemsInit[selectedIndex].copyWith(isSelected: true);
    }

    state = DailyDiuresisState(
      dailyDiuresisInfo: itemsInit,
    );
    _setVisiblyInput();
  }

  void _setVisiblyInput() {
    final activeItem =
        state.dailyDiuresisInfo.firstWhereOrNull((e) => e.isSelected == true);

    state = state.copyWith(
      isShowInput:
          activeItem?.enumDailyDiuresis == EnumDailyDiuresis.enterValue,
    );
  }
}
