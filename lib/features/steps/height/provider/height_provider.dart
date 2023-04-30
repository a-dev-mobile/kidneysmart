// ignore_for_file: constant_identifier_names

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:nutrition/features/steps/height/height.dart';
import 'package:nutrition/features/steps/weight/view/weight_page.dart';
import 'package:nutrition/localization/localization.dart';
import 'package:nutrition/navigation/navigation.dart';
import 'package:nutrition/shared/data/local/shared_prefs/app_storage.dart';
import 'package:nutrition/shared/enum/enum.dart';

final heightProvider =
    StateNotifierProvider.autoDispose<HeightNotifier, HeightState>(
  (ref) {
    return HeightNotifier(
      l: ref.watch(appLocalizationsProvider),
      storage: ref.read(appStorageProvider),
      go: ref.read(appRouterProvider),
    )..load();
  },
);

class HeightNotifier extends StateNotifier<HeightState> {
  HeightNotifier({
    required AppLocalizations l,
    required AppStorage storage,
    required AppRouter go,
  })  : _storage = storage,
        _l = l,
        _go = go,
        super(storage.getHeightState());

  // ignore: unused_field
  final AppStorage _storage;
  // ignore: unused_field
  final AppLocalizations _l;

  // ignore: unused_field
  final AppRouter _go;

  /// preload

  bool get isValid => state.enumValid.maybeMapValue(orElse: false, valid: true);

  static const _MIN_HEIGHT = 50;
  static const _MAX_HEIGHT = 220;
  void load() {
    state = state.copyWith(heightList: _initHeight());
  }

  List<String> _initHeight() {
    final listHeight = <String>[];
    for (var i = _MAX_HEIGHT; i > _MIN_HEIGHT; i--) {
      listHeight.add(i.toString());
    }

    return listHeight;
  }

  void setHeight(
    String? v,
  ) {
    var error = '';

    if (v?.isEmpty ?? true && state.result.isEmpty) {
      error = 'Рост не указан';
    }
    state = state.copyWith(
      result: v,
      value: double.tryParse(v ?? ''),
      error: error,
      enumValid: error.isEmpty ? EnumValid.valid : EnumValid.error,
    );

    _storage.setHeightState(state);
  }

  void nextPage() {
    _go.router.pushNamed<void>(WeightPage.name);
  }
}
