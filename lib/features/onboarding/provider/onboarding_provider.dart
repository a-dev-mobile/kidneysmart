// ignore_for_file: unused_field

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:kidneysmart/core/data/local/shared_prefs/app_storage.dart';
import 'package:kidneysmart/core/domain/network/network_client_service.dart';
import 'package:kidneysmart/features/onboarding/provider/onboarding_state.dart';
import 'package:kidneysmart/localization/localization.dart';
import 'package:kidneysmart/navigation/navigation.dart';

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
      : _storage = ref.read(appStorageProvider),
        _client = ref.read(networkClientProvider),
        _go = ref.read(appRouterProvider),
        _loc = ref.watch(appLocalizationsProvider),
        super(
          const OnboardingState.load(),
        );
  final NetworkClientService _client;
  final AppStorage _storage;
  final AppLocalizations _loc;
  final AppRouter _go;

  void load() {
    // final lang = EnumLang.fromValue(
    //   _loc.localeName,
    //   fallback: EnumLang.ru,
    // );

    // final realtimeDb = await _firestore.getRealtimeDbModel(storage: _storage);

    // final url = lang.mapValue(
    //   en: realtimeDb.features.onboarding.info.en,
    //   ru: realtimeDb.features.onboarding.info.ru,
    // );

    try {
      // final response = await _client.request<dynamic>(
      //   method: Method.get,
      //   url: url,
      // );

      // if (response.statusCode == 200) {
      //   state = OnboardingState.success(
      //     textMarkdown: response.data.toString(),
      //   );

      //   return;
      // } else {
      //   state = const OnboardingState.error('Wrong page address');
      // }
    } on Object catch (e, stackTrace) {
      state = OnboardingState.error(e.toString());

      Error.throwWithStackTrace(e, stackTrace);
    }

    state = const OnboardingState.error('Error loading');
  }

  void onDone() {
    final appState = _storage.getAppState().copyWith();

    _storage.setAppState(appState);

    _go.nextPage(appState);
  }
}
