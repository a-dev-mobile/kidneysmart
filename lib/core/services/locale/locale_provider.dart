import 'dart:async';

import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:nutrition/core/enum/enum_lang.dart';
import 'package:nutrition/core/services/storage/app_storage_service.dart';

final localeProvider = StateNotifierProvider<LocaleNotifier, EnumLang>((ref) {
  final storage = ref.watch(appStorageServiceProvider);

  return LocaleNotifier(storage: storage);
});

class LocaleNotifier extends StateNotifier<EnumLang> {
  LocaleNotifier({required this.storage})
      : super(EnumLang.fromValue(storage.getLocale()));
  final AppStorageService storage;

  void setLocale(EnumLang locale) {
    state = locale;
    unawaited(storage.setLocale(locale.value));
  }

  void changeLocale() {
    final newLocale = state == EnumLang.en ? EnumLang.ru : EnumLang.en;
    setLocale(newLocale);
  }
}
