import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:nutrition/core/enum/enum_lang.dart';
import 'package:nutrition/core/services/db/db.dart';
import 'package:nutrition/core/services/navigation/navigation.dart';

import 'package:nutrition/core/services/network/network_client_service.dart';
import 'package:nutrition/core/services/storage/app_storage_service.dart';

import 'package:nutrition/features/onboarding/provider/onboarding_state.dart';
import 'package:nutrition/features/registration/name/name.dart';

import 'package:nutrition/localization/localization.dart';

final onboardingProvider =
    StateNotifierProvider.autoDispose<OndoardingNotifier, OnboardingState>(
  (ref) {
    return OndoardingNotifier(
      ref: ref,
    )..load();
  },
);

class OndoardingNotifier extends StateNotifier<OnboardingState> {
  OndoardingNotifier({required Ref ref})
      : _storage = ref.read(appStorageServiceProvider),
        _client = ref.read(networkClientProvider),
        _firestore = ref.read(firebaseServiceProvider),
        _go = ref.read(appRouterServiceProvider),
        _loc = ref.watch(appLocalizationsProvider),
        super(
          const OnboardingState.load(),
        );
  final NetworkClientService _client;
  final AppStorageService _storage;
  final AppLocalizations _loc;
  final AppRouterService _go;
  final FirebaseServiceProvider _firestore;

  void nextPage() {
    _storage.setAppState(
      _storage.getAppState().copyWith(isOnboardingCompleted: true),
    );

    _go.router.goNamed(RegistrationNamePage.name);
  }

  Future<void> load() async {
    final lang = EnumLang.fromValue(
      _loc.localeName,
      fallback: EnumLang.ru,
    );

    final realtimeDb = await _firestore.getRealtimeDbModel(storage: _storage);

    final url = lang.mapValue(
      en: realtimeDb.features.onboarding.info.url_en,
      ru: realtimeDb.features.onboarding.info.url_ru,
    );

    try {
      final response = await _client.request<dynamic>(
        method: Method.get,
        url: url,
      );

      if (response.statusCode == 200) {
        state = OnboardingState.success(
          textMarkdown: response.data.toString(),
        );

        return;
      } else {
        state = const OnboardingState.error('Wrong page address');
      }
    } on Object catch (e, stackTrace) {
      state = OnboardingState.error(e.toString());

      Error.throwWithStackTrace(e, stackTrace);
    }

    state = const OnboardingState.error('Error loading');
  }
}
