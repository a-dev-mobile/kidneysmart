// // ignore_for_file: avoid_print

// import 'dart:convert';

// import 'package:flutter/material.dart';
// import 'package:flutter_inappwebview/flutter_inappwebview.dart';
// import 'package:flutter_riverpod/flutter_riverpod.dart';
// import 'package:nutrition/core/widget/widget.dart';
// import 'package:nutrition/features/info_gfr/info_gfr.dart';
// import 'package:url_launcher/url_launcher.dart';
// import 'package:webview_flutter/webview_flutter.dart';

// // ignore_for_file: prefer-extracting-callbacks
// /// {@template info_gfr_page}
// /// InfoGfrPage widget
// /// {@endtemplate}
// class InfoGfrPage extends ConsumerWidget {
//   /// {@macro info_gfr_page}
//   const InfoGfrPage({super.key});

//   static const path = '/InfoGfrPage';
//   static const name = 'InfoGfrPage';

//   @override
//   Widget build(BuildContext context, WidgetRef ref) {
//     // final l = context.l10n;
//     InAppWebViewController? webViewController;
//     final state = ref.watch(infoGfrProvider);
//     // ignore: unused_local_variable
//     final notifier = ref.watch(infoGfrProvider.notifier);

//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Информация'),
//       ),
//       body: SafeArea(
//         child: Stack(
//           children: [
//             InAppWebView(
//               // initialFile: _html,
//               // initialUrlRequest:
//               initialData: ,
//               // initialUrlRequest:
//                   // URLRequest(url: Uri.parse('https://inappwebview.dev/')),
//                   // URLRequest(url: Uri.parse('https://inappwebview.dev/')),
//               initialOptions: webViewOption(),
//               onWebViewCreated: (controller) {
//                 webViewController = controller;
//               },
//               onLoadStart: (controller, url) {
//                 print('-- $url $controller');
//                 // setState(() {
//                 //   this.url = url.toString();
//                 //   urlController.text = this.url;
//                 // });
//               },
//               androidOnPermissionRequest:
//                   (controller, origin, resources) async {
//                 return PermissionRequestResponse(
//                   resources: resources,
//                   action: PermissionRequestResponseAction.GRANT,
//                 );
//               },
//               shouldOverrideUrlLoading: (controller, navigationAction) async {
//                 var uri = navigationAction.request.url!;

//                  print('--shouldOverrideUrlLoading $uri $navigationAction $controller');

//                  return null;
//               },
//               onLoadStop: (controller, url)  {
//                  print('--onLoadStop $url  $controller');

//               },
//               onLoadError: (controller, url, code, message) {
//                 print('--onLoadError $url  $controller');
//               },
//               onProgressChanged: (controller, progress) {
//                 print('--onProgressChanged $progress  $controller');

//               },
//               onUpdateVisitedHistory: (controller, url, androidIsReload) {
//                 print('--onUpdateVisitedHistory $url  $controller');

//               },
//               onConsoleMessage: (controller, consoleMessage) {
//                 print('--onConsoleMessage $consoleMessage  $controller');

//               },
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// String htmlToURI(String code) {
//   return Uri.dataFromString(code,
//           mimeType: 'text/html', encoding: Encoding.getByName('utf-8'))
//       .toString();
// }
//   InAppWebViewGroupOptions webViewOption() {
//     return InAppWebViewGroupOptions(
//       crossPlatform: InAppWebViewOptions(
//         useShouldOverrideUrlLoading: true,
//         mediaPlaybackRequiresUserGesture: false,
//       ),
//       android: AndroidInAppWebViewOptions(
//         useHybridComposition: true,
//       ),
//       ios: IOSInAppWebViewOptions(
//         allowsInlineMediaPlayback: true,
//       ),
//     );
//   }

// static void _launchExternalUrl(Uri uri) {

//     final _ = launchUrl(
//       uri,
//       mode: LaunchMode.externalApplication,
//     );
//   }

// }

// const _html = '''

// <div class="containerHead">
//   <div class="content"><h2>Лейкоцитарная формула</h2></div>
//   <!-- end .containerHead  </div> -->
// </div>
// <div class="containerMid">
//   <div class="content">
//     <p>
//       Лейкоцитарная формула крови или лейкограмма – это соотношение в
//       периферической крови различных форм лейкоцитов, выраженное в процентах.
//     </p>
//     <p></p>
//     <div class="containerRef">
//       <h3><strong>Референсные значения:</strong></h3>
//       <p><br /></p>
//       <h4>Процент содержания:</h4>
//       <ul>
//         <h3>
//           <li>Лимфоциты: 19 - 37 %</li>
//           <li>Моноциты: 3 - 11 %</li>
//           <li>Нейтрофилы палочко-ядерные: 1 - 6 %</li>
//           <li>Нейтрофилы сегменто-ядерные: 47 - 72 %</li>
//           <li>Базофилы: 0 - 1 %</li>
//           <li>Эозинофилы: 0,5 - 5,0%</li>
//         </h3>
//       </ul>
//       <br />
//       <h4>Абсолютное значение лейкоцитов в крови:</h4>
//       <ul>
//         <h3>
//           <li>Лимфоциты: 1,20 - 3,00 ×10<sup>9</sup>/л</li>
//           <li>Моноциты: 0,09 - 0,60 ×10<sup>9</sup>/л</li>
//           <li>Нейтрофилы палочко-ядерные: 0,04 - 0,30 ×10<sup>9</sup>/л</li>
//           <li>Нейтрофилы сегменто-ядерные: 2,00 - 5,50 ×10<sup>9</sup>/л</li>
//           <li>Базофилы: 0 - 0,065 ×10<sup>9</sup>/л</li>
//           <li>Эозинофилы: 0,02 - 0,30 ×10<sup>9</sup>/л</li>
//         </h3>
//       </ul>
//     </div>
//     <p></p>
//     <p style="text-indent: 30px">
//       Абсолютным изменением лейкоцитарной формулы принято считать выход за
//       пределы нормы процентного содержания лейкоцитов в лейкоцитарной формуле
//       крови вместе с абсолютным содержанием в одном литре крови. В случае, если
//       из нормы выходит только процентное содержание, то говорят об относительном
//       изменении лейкоцитарной формулы крови.
//     </p>
//     <p></p>
//     <h3>
//       Заболевания и состояния, сопровождающиеся сдвигом лейкоцитарной формулы:
//     </h3>
//     <ul>
//       <li>
//         Сдвиг влево с омоложением (в крови присутствуют метамиелоциты,
//         миелоциты): острые воспалительные процессы, гнойные инфекции,
//         интоксикации, острые геморрагии, ацидоз и коматозные состояния,
//         физическое перенапряжение
//       </li>
//       <li>
//         Сдвиг влево с омоложением (в крови присутствуют метамиелоциты,
//         миелоциты, промиелоциты, миелобласты): хронические лейкозы,
//         эритролейкоз, миелофиброз, метастазы новообразований, острые лейкозы,
//         коматозные состояния
//       </li>
//       <li>
//         Сдвиг вправо (уменьшение количества палочкоядерных нейтрофилов в
//         сочетании с гиперсегментированными ядрами нейтрофилов): мегалобластная
//         анемия, болезни почек и печени, состояния после переливания крови
//       </li>
//     </ul>
//   </div>
//   <!-- end .containerHead -->
// </div>

// ''';
