import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:nutrition/core/services/navigation/navigation.dart';
import 'package:nutrition/core/services/storage/app_storage_service.dart';

import 'package:nutrition/features/welcome/welcome.dart';

import 'package:nutrition/localization/localization.dart';

final welcomeProvider =
    StateNotifierProvider.autoDispose<WelcomeNotifier, WelcomeState>(
  (ref) {
    return WelcomeNotifier(
      l: ref.watch(appLocalizationsProvider),
      storage: ref.read(appStorageServiceProvider),
      go: ref.read(appRouterServiceProvider),
    );
  },
);

class WelcomeNotifier extends StateNotifier<WelcomeState> {
  WelcomeNotifier({
    required AppLocalizations l,
    required AppStorageService storage,
    required AppRouterService go,
  })  : _storage = storage,
        _l = l,
        _go = go,
        super(const WelcomeState());

  // ignore: unused_field
  final AppStorageService _storage;
  // ignore: unused_field
  final AppLocalizations _l;

  // ignore: unused_field
  final AppRouterService _go;

  /// preload

  void nextPage() {
    // _go.router.pushNamed<void>(HypertensionPage.name);
  }
}
