import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:kidneysmart/core/data/local/shared_prefs/app_storage.dart';
import 'package:kidneysmart/core/enum/enum.dart';
import 'package:kidneysmart/core/utils/utils.dart';
import 'package:kidneysmart/features/steps/birthday/birthday.dart';
import 'package:kidneysmart/features/steps/gender/gender.dart';
import 'package:kidneysmart/features/steps/name/name.dart';
import 'package:kidneysmart/localization/localization.dart';
import 'package:kidneysmart/navigation/navigation.dart';

final stepGenderProvider =
    StateNotifierProvider.autoDispose<StepGenderNotifier, StepGenderState>(
  (ref) {
    return StepGenderNotifier(
      l: ref.watch(appLocalizationsProvider),
      storage: ref.read(appStorageProvider),
      go: ref.read(appRouterProvider),
    )..load();
  },
);

class StepGenderNotifier extends StateNotifier<StepGenderState> {
  StepGenderNotifier({
    required AppLocalizations l,
    required AppStorage storage,
    required AppRouter go,
  })  : _storage = storage,
        _l = l,
        _go = go,
        super(storage.getGenderState());

  // ignore: unused_field
  final AppStorage _storage;
  // ignore: unused_field
  final AppLocalizations _l;

  // ignore: unused_field
  final AppRouter _go;

  /// preload

  List<GenderItemModel> get _initGender {
    return <GenderItemModel>[
      GenderItemModel(enumGender: EnumGender.male, value: _l.male),
      GenderItemModel(enumGender: EnumGender.female, value: _l.female),
    ];
  }

  bool get isValid => state.enumValid.maybeMapValue(orElse: false, valid: true);

  void load() {
    final stateStepName = _storage.getStepNameState();

    state = state.copyWith(
      listGender: _initGender,
      name: stateStepName.result,
      listSelected: AppUtilsArray.getListBool(
        length: _initGender.length,
        selectedIndex: state.selectedIndex,
      ),
    );
// если на предыдущем шаге определен пол
    var selectedIndex = state.selectedIndex;
    if (selectedIndex == null &&
        stateStepName.enumGender.maybeMapValue(orElse: true, none: false)) {
      selectedIndex = _initGender
          .indexWhere((e) => e.enumGender == stateStepName.enumGender);

      setGender(selectedIndex, true);
    }
  }

  // ignore: avoid_positional_boolean_parameters
  void setGender(int? v, [bool isDefinedGenderInStepName = false]) {
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
      isDefinedGenderInStepName: isDefinedGenderInStepName,
      listSelected: listBool,
      enumGender:
          selectedIndex != null ? listGender[selectedIndex].enumGender : null,
      error: error,
      enumValid: error.isEmpty ? EnumValid.valid : EnumValid.error,
    );

    _storage.setGenderState(state);
  }

  void nextPressed() {
    _go.router.goNamed(StepBirthdayPage.name);
  }

  void backPressed() {
    _go.router.goNamed(StepNamePage.name);
  }
}
