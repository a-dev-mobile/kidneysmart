import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:nutrition/features/steps/name/name.dart';
import 'package:nutrition/features/welcome/welcome.dart';
import 'package:nutrition/localization/localization.dart';
import 'package:nutrition/navigation/navigation.dart';
import 'package:nutrition/shared/data/local/shared_prefs/app_storage.dart';

final welcomeProvider =
    StateNotifierProvider.autoDispose<WelcomeNotifier, WelcomeState>(
  (ref) {
    return WelcomeNotifier(
      l: ref.watch(appLocalizationsProvider),
      storage: ref.read(appStorageProvider),
      go: ref.read(appRouterServiceProvider),
    );
  },
);

class WelcomeNotifier extends StateNotifier<WelcomeState> {
  WelcomeNotifier({
    required AppLocalizations l,
    required AppStorage storage,
    required AppRouterService go,
  })  : _storage = storage,
        _l = l,
        _go = go,
        super(const WelcomeState());

  // ignore: unused_field
  final AppStorage _storage;
  // ignore: unused_field
  final AppLocalizations _l;

  // ignore: unused_field
  final AppRouterService _go;

  /// preload

  void nextPage() {
    _go.router.pushNamed<void>(StepNamePage.name);
  }
}
