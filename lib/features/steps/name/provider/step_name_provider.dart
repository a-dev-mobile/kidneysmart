import 'dart:async';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:nutrition/features/steps/gender/gender.dart';
import 'package:nutrition/features/steps/name/name.dart';
import 'package:nutrition/localization/localization.dart';
import 'package:nutrition/navigation/navigation.dart';
import 'package:nutrition/shared/data/local/shared_prefs/app_storage.dart';
import 'package:nutrition/shared/data/remote/dadata/dadata.dart';
import 'package:nutrition/shared/enum/enum.dart';

final stepNameProvider =
    StateNotifierProvider.autoDispose<StepNameNotifier, StepNameState>(
  (ref) {
    return StepNameNotifier(
      l: ref.watch(appLocalizationsProvider),
      storage: ref.read(appStorageProvider),
      go: ref.read(appRouterProvider),
      clienTips: ref.read(daDataClientProvider),
    );
  },
);

class StepNameNotifier extends StateNotifier<StepNameState> {
  StepNameNotifier({
    required AppLocalizations l,
    required AppStorage storage,
    required AppRouter go,
    required DaDataClient clienTips,
  })  : _storage = storage,
        _l = l,
        _go = go,
        _clienTips = clienTips,
        super(storage.getStepNameState());

  // ignore: unused_field
  final AppStorage _storage;
  // ignore: unused_field
  final AppLocalizations _l;

  final DaDataClient _clienTips;

  // ignore: unused_field
  final AppRouter _go;

  bool get isValid => state.enumValid.maybeMapValue(orElse: false, valid: true);

  /// preload

  void nextPage() {
    _go.router.pushNamed<void>(StepGenderPage.name);
  }

  void backPage() {
    _go.router.pop();
  }

  void setName(
    String? v,
  ) {
    String? error;

    error = v?.isEmpty ?? true && state.result.isEmpty ? 'Введите имя' : null;

    state = state.copyWith(
      result: v,
      error: error,
      enumValid: error == null ? EnumValid.valid : EnumValid.error,
    );

    _saveState();
  }

  void _saveState() {
    _storage.setStepNameState(state.copyWith(isKeyboardOpen: false));
  }

  List<DataFio> _getTips(FioTooltip result) {
    final list = <DataFio>[];

    if (result.suggestions.isEmpty) return list;

    for (final suggestion in result.suggestions) {
      list.add(suggestion.data);
    }

    return list;
  }

  FutureOr<Iterable<DataFio>> getSuggestionsName(String value) async {
    final result = await _clienTips.fetchFioTooltip(value, DaDataEnum.name);

    return _getTips(result);
  }

  void setGender(String v) {
    final enumGender = EnumGender.fromValue(v, fallback: EnumGender.none);
    state = state.copyWith(enumGender: enumGender);

    _saveState();
    // if guessed right gender - for next page - clean state
    if (enumGender != EnumGender.none) {
      _storage.setGenderState(const StepGenderState());
    }
  }

  void setKeyboard({required bool isKeyboardOpen}) {
    if (state.isKeyboardOpen == isKeyboardOpen) return;

    state = state.copyWith(isKeyboardOpen: isKeyboardOpen);
  }
}
