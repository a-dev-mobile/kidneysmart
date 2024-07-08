import 'dart:async';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:kidneysmart/core/data/local/shared_prefs/app_storage.dart';
import 'package:kidneysmart/core/enum/enum_lang.dart';

final localeProvider = StateNotifierProvider<LocaleNotifier, EnumLang>((ref) {
  final storage = ref.watch(appStorageProvider);

  return LocaleNotifier(storage: storage);
});

class LocaleNotifier extends StateNotifier<EnumLang> {
  LocaleNotifier({required this.storage})
      : super(EnumLang.fromValue(storage.getLocale()));
  final AppStorage storage;

  void setLocale(EnumLang locale) {
    state = locale;
    unawaited(storage.setLocale(locale.value));
  }

  void changeLocale() {
    final newLocale = state == EnumLang.en ? EnumLang.ru : EnumLang.en;
    setLocale(newLocale);
  }
}
