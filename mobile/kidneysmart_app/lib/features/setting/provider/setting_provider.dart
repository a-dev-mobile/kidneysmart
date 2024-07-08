import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:kidneysmart/core/data/local/shared_prefs/app_storage.dart';
import 'package:kidneysmart/core/utils/utils.dart';
import 'package:kidneysmart/features/setting/setting.dart';
import 'package:kidneysmart/localization/localization.dart';
import 'package:kidneysmart/navigation/navigation.dart';

final settingProvider =
    StateNotifierProvider.autoDispose<SettingNotifier, SettingState>(
  (ref) {
    return SettingNotifier(
      l: ref.watch(appLocalizationsProvider),
      storage: ref.read(appStorageProvider),
      go: ref.read(appRouterProvider),
    )..load();
  },
);

class SettingNotifier extends StateNotifier<SettingState> {
  SettingNotifier({
    required AppLocalizations l,
    required AppStorage storage,
    required AppRouter go,
  })  : _storage = storage,
        _l = l,
        _go = go,
        super(storage.getSettingState());

  // ignore: unused_field
  final AppStorage _storage;
  // ignore: unused_field
  final AppLocalizations _l;

  // ignore: unused_field
  final AppRouter _go;

  List<ThemeItemModel> get _initThemeSetting {
    return <ThemeItemModel>[
      ThemeItemModel(enumTheme: EnumTheme.light, value: _l.light_theme),
      ThemeItemModel(enumTheme: EnumTheme.dark, value: _l.dark_theme),
    ];
  }

  ThemeMode get themeMode => state.themeSetting.enumTheme
      .mapValue(light: ThemeMode.light, dark: ThemeMode.dark);

  void load() {
    final selectedIndexTheme = _initThemeSetting
        .indexWhere((e) => e.enumTheme == state.themeSetting.enumTheme);

    state = state.copyWith(
      themeSetting: state.themeSetting.copyWith(
        listTheme: _initThemeSetting,
        listSelected: AppUtilsArray.getListBool(
          length: _initThemeSetting.length,
          selectedIndex: selectedIndexTheme,
        ),
      ),
    );
  }

  void setTheme(int? v) {
    // update
    final selectedIndex = v ?? state.themeSetting.selectedIndex;
    final listTheme = state.themeSetting.listTheme;

    final listBool = AppUtilsArray.getListBool(
      length: listTheme.length,
      selectedIndex: selectedIndex,
    );
    state = state.copyWith(
      themeSetting: state.themeSetting.copyWith(
        listTheme: listTheme,
        listSelected: listBool,
        enumTheme:
            selectedIndex != null ? listTheme[selectedIndex].enumTheme : null,
      ),
    );

    _storage.setSettingState(state);
  }

  void backPage() {
    _go.router.pop();
  }
}
