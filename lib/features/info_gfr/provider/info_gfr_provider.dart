import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:nutrition/core/enum/enum.dart';
import 'package:nutrition/core/services/db/db.dart';
import 'package:nutrition/core/services/navigation/navigation.dart';
import 'package:nutrition/core/services/network/network_client_service.dart';
import 'package:nutrition/core/services/storage/app_storage_service.dart';
import 'package:nutrition/features/info_gfr/info_gfr.dart';
import 'package:nutrition/localization/localization.dart';

final infoGfrProvider =
    StateNotifierProvider.autoDispose<InfoGfrNotifier, InfoGfrState>(
  (ref) {
    return InfoGfrNotifier(
      l: ref.watch(appLocalizationsProvider),
      storage: ref.read(appStorageServiceProvider),
      client: ref.read(networkClientProvider),
      firebase: ref.read(firebaseServiceProvider),
      go: ref.read(appRouterServiceProvider),
    )..load();
  },
);

class InfoGfrNotifier extends StateNotifier<InfoGfrState> {
  InfoGfrNotifier({
    required AppLocalizations l,
    required AppStorageService storage,
    required NetworkClientService client,
    required AppRouterService go,
    required FirebaseServiceProvider firebase,
  })  : _storage = storage,
        _l = l,
        _client = client,
        _go = go,
        _firebase = firebase,
        super(
          const InfoGfrState(),
        );

  final AppStorageService _storage;
  final AppLocalizations _l;
  final NetworkClientService _client;

  // ignore: unused_field
  final AppRouterService _go;
  final FirebaseServiceProvider _firebase;

  /// preload
  Future<void> load() async {
    final lang = EnumLang.fromValue(
      _l.localeName,
      fallback: EnumLang.en,
    );

    final realtimeDb = await _firebase.getRealtimeDbModel(storage: _storage);

    final url = lang.mapValue(
      en: realtimeDb.features.gfr.info.en,
      ru: realtimeDb.features.gfr.info.ru,
    );

    try {
      final response = await _client.request<dynamic>(
        method: Method.get,
        url: url,
      );

      if (response.statusCode == 200) {
        state = state.copyWith(
          
          enumResult: EnumResult.success,
          url: url,
          textMarkdown: response.data.toString(),
        );

        return;
      }
    } on Object catch (e, stackTrace) {
      Error.throwWithStackTrace(e, stackTrace);
    }
    state = state.copyWith(
      enumResult: EnumResult.error,
    );
  }
}
