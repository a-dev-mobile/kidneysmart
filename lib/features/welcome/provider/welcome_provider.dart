import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:kidneysmart/core/data/local/shared_prefs/app_storage.dart';
import 'package:kidneysmart/features/steps/name/name.dart';
import 'package:kidneysmart/features/welcome/welcome.dart';
import 'package:kidneysmart/localization/localization.dart';
import 'package:kidneysmart/navigation/navigation.dart';

final welcomeProvider =
    StateNotifierProvider.autoDispose<WelcomeNotifier, WelcomeState>(
  (ref) {
    return WelcomeNotifier(
      l: ref.watch(appLocalizationsProvider),
      storage: ref.read(appStorageProvider),
      go: ref.read(appRouterProvider),
    );
  },
);

class WelcomeNotifier extends StateNotifier<WelcomeState> {
  WelcomeNotifier({
    required AppLocalizations l,
    required AppStorage storage,
    required AppRouter go,
  })  : _storage = storage,
        _l = l,
        _go = go,
        super(const WelcomeState());

  // ignore: unused_field
  final AppStorage _storage;
  // ignore: unused_field
  final AppLocalizations _l;

  // ignore: unused_field
  final AppRouter _go;

  /// preload

  void nextPressed() {
    _go.router.goNamed(StepNamePage.name);
  }
}
