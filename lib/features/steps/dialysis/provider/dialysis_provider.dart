import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:nutrition/core/enum/enum.dart';

import 'package:nutrition/core/services/navigation/navigation.dart';
import 'package:nutrition/core/services/storage/app_storage_service.dart';
import 'package:nutrition/core/utils/utils.dart';
import 'package:nutrition/features/steps/birthday/birthday.dart';

import 'package:nutrition/features/steps/dialysis/dialysis.dart';

import 'package:nutrition/localization/localization.dart';

final dialysisProvider =
    StateNotifierProvider.autoDispose<DialysisNotifier, DialysisState>(
  (ref) {
    return DialysisNotifier(
      l: ref.watch(appLocalizationsProvider),
      storage: ref.read(appStorageServiceProvider),
      go: ref.read(appRouterServiceProvider),
    )..load();
  },
);

class DialysisNotifier extends StateNotifier<DialysisState> {
  DialysisNotifier({
    required AppLocalizations l,
    required AppStorageService storage,
    required AppRouterService go,
  })  : _storage = storage,
        _l = l,
        _go = go,
        super(storage.getDialysisState());

  // ignore: unused_field
  final AppStorageService _storage;
  // ignore: unused_field
  final AppLocalizations _l;

  // ignore: unused_field
  final AppRouterService _go;

  /// preload

  List<DialysisItemModel> get _initDialysis {
    return <DialysisItemModel>[
      const DialysisItemModel(
        enumDialysis: EnumDialysis.homodialysis,
        value: 'Гомодиализ',
      ),
      const DialysisItemModel(
        enumDialysis: EnumDialysis.perinatal,
        value: 'Перинатальный',
      ),
      DialysisItemModel(enumDialysis: EnumDialysis.no, value: _l.no),
    ];
  }

  bool get isValid => state.enumValid.maybeMapValue(orElse: false, valid: true);

  void load() {
    state = state.copyWith(
      listDialysis: _initDialysis,
      listSelected: AppUtilsArray.getListBool(
        length: _initDialysis.length,
        selectedIndex: state.selectedIndex,
      ),
    );
  }

  void setDialysis(
    int? v,
  ) {
    var error = '';
    if (v == null && state.selectedIndex == null) {
      error = 'Укажите есть у вас диализ или нет';
    }
    // update
    final selectedIndex = v ?? state.selectedIndex;
    final listDialysis = state.listDialysis;

    final listBool = AppUtilsArray.getListBool(
      length: listDialysis.length,
      selectedIndex: selectedIndex,
    );

    final enumDialysis = selectedIndex != null
        ? listDialysis[selectedIndex].enumDialysis
        : EnumDialysis.none;

    state = state.copyWith(
      listDialysis: listDialysis,
      selectedIndex: v,
      listSelected: listBool,
      enumDialysis: enumDialysis,
      error: error,
      enumValid: error.isEmpty ? EnumValid.valid : EnumValid.error,
    );
    _storage.setDialysisState(state);
  }

  // void setDialysis(int? v) {
  //   var error = '';
  //   if (v == null && state.selectedIndex == null) {
  //     error = _l.dialysis_not_selected;
  //   }
  //   // update
  //   final selectedIndex = v ?? state.selectedIndex;
  //   final listDialysis = state.listDialysis;

  //   final listBool = AppUtilsArray.getListBool(
  //     length: listDialysis.length,
  //     selectedIndex: selectedIndex,
  //   );

  //   state = state.copyWith(
  //     listDialysis: listDialysis,
  //     selectedIndex: v,
  //     listSelected: listBool,
  //     enumDialysis: selectedIndex != null
  //         ? listDialysis[selectedIndex].enumDialysis
  //         : null,
  //     error: error,
  //     enumValid: error.isEmpty ? EnumValid.valid : EnumValid.error,
  //   );

  //   _storage.setDialysisState(state);
  // }

  void nextPage() {
    _go.router.pushNamed<void>(BirthdayPage.name);
  }
}
