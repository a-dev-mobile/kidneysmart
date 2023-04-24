import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:nutrition/core/enum/enum.dart';

import 'package:nutrition/core/services/navigation/navigation.dart';
import 'package:nutrition/core/services/storage/app_storage_service.dart';
import 'package:nutrition/core/utils/utils.dart';
import 'package:nutrition/features/steps/birthday/birthday.dart';

import 'package:nutrition/features/steps/gender/gender.dart';

import 'package:nutrition/localization/localization.dart';

final genderProvider =
    StateNotifierProvider.autoDispose<GenderNotifier, GenderState>(
  (ref) {
    return GenderNotifier(
      l: ref.watch(appLocalizationsProvider),
      storage: ref.read(appStorageServiceProvider),
      go: ref.read(appRouterServiceProvider),
    )..load();
  },
);

class GenderNotifier extends StateNotifier<GenderState> {
  GenderNotifier({
    required AppLocalizations l,
    required AppStorageService storage,
    required AppRouterService go,
  })  : _storage = storage,
        _l = l,
        _go = go,
        super(storage.getGenderState());

  // ignore: unused_field
  final AppStorageService _storage;
  // ignore: unused_field
  final AppLocalizations _l;

  // ignore: unused_field
  final AppRouterService _go;

  /// preload

  List<GenderItemModel> get _initGender {
    return <GenderItemModel>[
      GenderItemModel(enumGender: EnumGender.male, value: _l.male),
      GenderItemModel(enumGender: EnumGender.female, value: _l.female),
    ];
  }

  bool get isValid => state.enumValid.maybeMapValue(orElse: false, valid: true);

  void load() {
    state = state.copyWith(
      listGender: _initGender,
      listSelected: AppUtilsArray.getListBool(
        length: _initGender.length,
        selectedIndex: state.selectedIndex,
      ),
    );
  }

  void setGender(int? v) {
    var error = '';
    if (v == null && state.selectedIndex == null) {
      error = _l.gender_not_selected;
    }
    // update
    final selectedIndex = v ?? state.selectedIndex;
    final listGender = state.listGender;

    final listBool = AppUtilsArray.getListBool(
      length: listGender.length,
      selectedIndex: selectedIndex,
    );

    state = state.copyWith(
      listGender: listGender,
      selectedIndex: v,
      listSelected: listBool,
      enumGender:
          selectedIndex != null ? listGender[selectedIndex].enumGender : null,
      error: error,
      enumValid: error.isEmpty ? EnumValid.valid : EnumValid.error,
    );

    _storage.setGenderState(state);
  }

  void backPage() {
    _go.router.pop();
  }

  void nextPage() {
    _go.router.pushNamed<void>(BirthdayPage.name);
  }
}
