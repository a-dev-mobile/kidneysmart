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

    <div class="containerHead">
      <div class="content"><h2>Лейкоцитарная формула</h2></div>
      <!-- end .containerHead  </div> -->
    </div>
    <div class="containerMid">
      <div class="content">
        <p>
          Лейкоцитарная формула крови или лейкограмма – это соотношение в
          периферической крови различных форм лейкоцитов, выраженное в
          процентах.
        </p>
        <p></p>
        <div class="containerRef">
          <h3><strong>Референсные значения:</strong></h3>
          <p><br /></p>
          <h4>Процент содержания:</h4>
          <ul>
            <h3>
              <li>Лимфоциты: 19 - 37 %</li>
              <li>Моноциты: 3 - 11 %</li>
              <li>Нейтрофилы палочко-ядерные: 1 - 6 %</li>
              <li>Нейтрофилы сегменто-ядерные: 47 - 72 %</li>
              <li>Базофилы: 0 - 1 %</li>
              <li>Эозинофилы: 0,5 - 5,0%</li>
            </h3>
          </ul>
          <br />
          <h4>Абсолютное значение лейкоцитов в крови:</h4>
          <ul>
            <h3>
              <li>Лимфоциты: 1,20 - 3,00 ×10<sup>9</sup>/л</li>
              <li>Моноциты: 0,09 - 0,60 ×10<sup>9</sup>/л</li>
              <li>Нейтрофилы палочко-ядерные: 0,04 - 0,30 ×10<sup>9</sup>/л</li>
              <li>
                Нейтрофилы сегменто-ядерные: 2,00 - 5,50 ×10<sup>9</sup>/л
              </li>
              <li>Базофилы: 0 - 0,065 ×10<sup>9</sup>/л</li>
              <li>Эозинофилы: 0,02 - 0,30 ×10<sup>9</sup>/л</li>
            </h3>
          </ul>
        </div>
        <p></p>
        <p style="text-indent: 30px">
          Абсолютным изменением лейкоцитарной формулы принято считать выход за
          пределы нормы процентного содержания лейкоцитов в лейкоцитарной
          формуле крови вместе с абсолютным содержанием в одном литре крови. В
          случае, если из нормы выходит только процентное содержание, то говорят
          об относительном изменении лейкоцитарной формулы крови.
        </p>
        <p></p>
        <h3>
          Заболевания и состояния, сопровождающиеся сдвигом лейкоцитарной
          формулы:
        </h3>
        <ul>
          <li>
            Сдвиг влево с омоложением (в крови присутствуют метамиелоциты,
            миелоциты): острые воспалительные процессы, гнойные инфекции,
            интоксикации, острые геморрагии, ацидоз и коматозные состояния,
            физическое перенапряжение
          </li>
          <li>
            Сдвиг влево с омоложением (в крови присутствуют метамиелоциты,
            миелоциты, промиелоциты, миелобласты): хронические лейкозы,
            эритролейкоз, миелофиброз, метастазы новообразований, острые
            лейкозы, коматозные состояния
          </li>
          <li>
            Сдвиг вправо (уменьшение количества палочкоядерных нейтрофилов в
            сочетании с гиперсегментированными ядрами нейтрофилов):
            мегалобластная анемия, болезни почек и печени, состояния после
            переливания крови
          </li>
        </ul>
      </div>
      <!-- end .containerHead -->
    </div>


''';
}
