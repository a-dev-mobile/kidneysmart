import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:nutrition/core/enum/enum.dart';
import 'package:nutrition/core/services/db/firebase/firebase.dart';
import 'package:nutrition/core/services/db/sql/model/db_info_model.dart';
import 'package:nutrition/core/services/navigation/navigation.dart';
import 'package:nutrition/core/services/network/network_client_service.dart';
import 'package:nutrition/core/services/storage/app_storage_service.dart';
import 'package:nutrition/features/info_html/info_html.dart';

import 'package:nutrition/global/global.dart';
import 'package:nutrition/localization/localization.dart';
import 'package:sqflite/sqflite.dart';

final infoHtmlProvider = StateNotifierProvider.autoDispose
    .family<InfoHtmlNotifier, InfoHtmlState, EnumInfoType>(
  (ref, enumInfoType) {
    return InfoHtmlNotifier(
      l: ref.watch(appLocalizationsProvider),
      storage: ref.read(appStorageServiceProvider),
      client: ref.read(networkClientProvider),
      firebase: ref.read(firebaseServiceProvider),
      go: ref.read(appRouterServiceProvider),
    )..load(enumInfoType);
  },
);

class InfoHtmlNotifier extends StateNotifier<InfoHtmlState> {
  InfoHtmlNotifier({
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
          const InfoHtmlState(),
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
  Future<void> load(EnumInfoType enumInfo) async {
    final lang = EnumLang.fromValue(
      _l.localeName,
      fallback: EnumLang.en,
    );

    _isDarkTheme = _storage.getThemeState().themeMode == ThemeMode.dark;
    final dbPath = _storage.getAppState().dbPathUpdate;
    final db = await openDatabase(dbPath);

    final list =
        await db.rawQuery('SELECT * from info WHERE id = ${enumInfo.value}');

    final dbCkdInfo = DbInfoModel.fromMap(list.first);

    var desc = dbCkdInfo.en_desc;
    var title = dbCkdInfo.en_title;

    if (lang == EnumLang.ru) {
      desc = dbCkdInfo.ru_desc;
      title = dbCkdInfo.ru_title;
    }

    state = state.copyWith(
      title: title,
      desc: _getThemeHtmlText(body: desc, isDark: _isDarkTheme),
      enumResult: EnumResult.success,
    );
  }

  static String _getThemeHtmlText({required String body, bool isDark = false}) {
    return '''
<html>
  <head>
    <meta
      name="viewport"
      content="width=device-width, initial-scale=1, maximum-scale=1"
    />
${isDark ? AppStringConst.styleCssIsDark : AppStringConst.styleCssIsLight}
$body

  </head>
    <body>

''';
  }
}
