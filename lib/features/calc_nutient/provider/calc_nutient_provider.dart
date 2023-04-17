// ignore_for_file: unused_field

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:nutrition/core/enum/enum.dart';
import 'package:nutrition/core/services/db/db.dart';

import 'package:nutrition/core/services/storage/app_storage_service.dart';
import 'package:nutrition/features/calc_nutient/calc_nutient.dart';

import 'package:nutrition/localization/localization.dart';
import 'package:sqflite/sqflite.dart';

final calcNutientProvider =
    StateNotifierProvider.autoDispose<CalcNutientNotifier, CalcNutientState>(
  (ref) {
    return CalcNutientNotifier(
      l: ref.watch(appLocalizationsProvider),
      storage: ref.read(appStorageServiceProvider),
    )..load();
  },
);

class CalcNutientNotifier extends StateNotifier<CalcNutientState> {
  CalcNutientNotifier({
    required AppLocalizations l,
    required AppStorageService storage,
  })  : _storage = storage,
        _l = l,
        super(
          const CalcNutientState(),
        );

  final AppStorageService _storage;
  final AppLocalizations _l;

  /// preload
  bool _isDarkTheme = false;
  Future<void> load() async {
    state = state.copyWith(enumResult: EnumResult.load);

    // await Future<void>.delayed(const Duration(seconds: 2));

    final lang = EnumLang.fromValue(
      _l.localeName,
      fallback: EnumLang.en,
    );
    final profileState = _storage.getHealthProfileState();
    final enumCkdIndex = profileState.ckd.enumCkdSelected.index;
    _isDarkTheme = _storage.getThemeState().themeMode == ThemeMode.dark;
    final dbPath = _storage.getAppState().dbPathUpdate;
    final db = await openDatabase(dbPath);

    final list =
        await db.rawQuery('SELECT * from nutrient WHERE id = $enumCkdIndex');

    // ignore: unused_local_variable
    final dbNutrient = DbNutrientModel.fromMap(list.first);

    if (lang == EnumLang.ru) {
      state = state.copyWith(
        enumResult: EnumResult.success,
      );
    }
    state = state.copyWith(
      markdownResult: dbNutrient.toString(),
      enumResult: EnumResult.success,
    );
  }
}
