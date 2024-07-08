// import 'package:flutter_riverpod/flutter_riverpod.dart';
// import 'package:kidneysmart/features/info_html/info_html.dart';
// import 'package:kidneysmart/global/global.dart';
// import 'package:kidneysmart/localization/localization.dart';
// import 'package:kidneysmart/navigation/navigation.dart';
// import 'package:kidneysmart/shared/data/local/db/db.dart';
// import 'package:kidneysmart/shared/data/local/shared_prefs/app_storage.dart';
// import 'package:kidneysmart/shared/domain/network/network_client_service.dart';
// import 'package:kidneysmart/shared/enum/enum.dart';
// import 'package:sqflite/sqflite.dart';

// final infoHtmlProvider = StateNotifierProvider.autoDispose
//     .family<InfoHtmlNotifier, InfoHtmlState, EnumInfoType>(
//   (ref, enumInfoType) {
//     return InfoHtmlNotifier(
//       l: ref.watch(appLocalizationsProvider),
//       storage: ref.read(appStorageProvider),
//       client: ref.read(networkClientProvider),
//       go: ref.read(appRouterProvider),
//     )..load(enumInfoType);
//   },
// );

// class InfoHtmlNotifier extends StateNotifier<InfoHtmlState> {
//   InfoHtmlNotifier({
//     required AppLocalizations l,
//     required AppStorage storage,
//     required NetworkClientService client,
//     required AppRouter go,
//   })  : _storage = storage,
//         _l = l,
//         _client = client,
//         _go = go,
//         super(
//           const InfoHtmlState(),
//         );

//   final AppStorage _storage;
//   // ignore: unused_field
//   final AppLocalizations _l;
//   // ignore: unused_field
//   final NetworkClientService _client;

//   // ignore: unused_field
//   final AppRouter _go;
//   // ignore: unused_field

//   bool _isDarkTheme = false;

//   /// preload
//   Future<void> load(EnumInfoType enumInfo) async {
//     final lang = EnumLang.fromValue(
//       _l.localeName,
//       fallback: EnumLang.en,
//     );

//     _isDarkTheme = true;
//     // _isDarkTheme = _storage.getThemeState().themeMode == ThemeMode.dark;
//     final dbPath = _storage.getAppState().dbPath;
//     final db = await openDatabase(dbPath);

//     final list =
//         await db.rawQuery('SELECT * from info WHERE id = ${enumInfo.value}');

//     final dbCkdInfo = DbInfoModel.fromMap(list.first);

//     var desc = dbCkdInfo.en_desc;
//     var title = dbCkdInfo.en_title;

//     if (lang == EnumLang.ru) {
//       desc = dbCkdInfo.ru_desc;
//       title = dbCkdInfo.ru_title;
//     }

//     state = state.copyWith(
//       title: title,
//       desc: _getThemeHtmlText(body: desc, isDark: _isDarkTheme),
//       enumResult: EnumResult.success,
//     );
//   }

//   static String _getThemeHtmlText({required String body, bool isDark = false}) {
//     return '''
// <html>
//   <head>
//     <meta
//       name="viewport"
//       content="width=device-width, initial-scale=1, maximum-scale=1"
//     />
// ${isDark ? AppStringConst.styleCssIsDark : AppStringConst.styleCssIsLight}
// $body

//   </head>
//     <body>

// ''';
//   }
// }
