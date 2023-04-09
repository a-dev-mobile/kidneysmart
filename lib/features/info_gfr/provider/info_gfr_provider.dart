import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:nutrition/core/enum/enum.dart';
import 'package:nutrition/core/services/db/firebase/firebase.dart';
import 'package:nutrition/core/services/navigation/navigation.dart';
import 'package:nutrition/core/services/network/network_client_service.dart';
import 'package:nutrition/core/services/storage/app_storage_service.dart';
import 'package:nutrition/features/info_gfr/info_gfr.dart';
import 'package:nutrition/global.dart';
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
  // ignore: unused_field
  final AppLocalizations _l;
  // ignore: unused_field
  final NetworkClientService _client;

  // ignore: unused_field
  final AppRouterService _go;
  // ignore: unused_field
  final FirebaseServiceProvider _firebase;

  bool _isDarkTheme = false;






  /// preload
  Future<void> load() async {
    // final lang = EnumLang.fromValue(
    //   _l.localeName,
    //   fallback: EnumLang.en,
    // );

    _isDarkTheme = _storage.getThemeState().themeMode == ThemeMode.dark;

    // final realtimeDb = await _firebase.getRealtimeDbModel(storage: _storage);

    // final url = lang.mapValue(
    //   en: realtimeDb.features.gfr.info.en,
    //   ru: realtimeDb.features.gfr.info.ru,
    // );
    await Future<void>.delayed(const Duration(seconds: 1));

    state = state.copyWith(
      textHtml: getThemeHtmlText(body: _html, isDark: _isDarkTheme),
      enumResult: EnumResult.success,
    );
    try {
      // final response = await _client.request<dynamic>(
      //   method: Method.get,
      //   url: url,
      // );

      // if (response.statusCode == 200) {
      //   state = state.copyWith(
      //     enumResult: EnumResult.success,
      //     url: url,
      //     textMarkdown: response.data.toString(),
      //   );

      //   return;
      // }
    } on Object catch (e, stackTrace) {
      Error.throwWithStackTrace(e, stackTrace);
    }
    // state = state.copyWith(
    //   enumResult: EnumResult.error,
    // );
  }









  static String getThemeHtmlText({required String body, bool isDark = false}) {
    return '''
<html>
  <head>
    <meta
      name="viewport"
      content="width=device-width, initial-scale=1, maximum-scale=1"
    />
${isDark ? GlobalString.styleCssIsDark : GlobalString.styleCssIsLight}
$body

  </head>
    <body>

''';
  }

  static const _html = '''


<ul><li><a href="https://www.ncbi.nlm.nih.gov/pubmed/16339095">Rutgeerts P, Sandborn WJ, Feagan BG, Reinisch W, et al. Infliximab for induction and maintenance therapy for ulcerative colitis. N Engl J Med. 2005 Dec 8;353(23):2462-76</a></li><li>Рекомендации Российской гастроэнтерологической ассоциации и Ассоциации колопроктологов России по диагностике и лечению взрослых больных язвенным колитом // Российский журнал Гастроэнтерологии, Гепатологии, Колопроктологии 1'2015</li></ul>
''';
}
