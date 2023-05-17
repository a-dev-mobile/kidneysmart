// import 'package:flutter/material.dart';
// import 'package:flutter_riverpod/flutter_riverpod.dart';
// import 'package:kidneysmart/features/info_html/info_html.dart';
// import 'package:kidneysmart/shared/widget/widget.dart';

// // ignore_for_file: prefer-extracting-callbacks
// /// {@template info_gfr_page}
// /// InfoHtmlPage widget
// /// {@endtemplate}
// class InfoHtmlPage extends ConsumerWidget {
//   /// {@macro info_gfr_page}
//   const InfoHtmlPage({required this.enumInfoType, super.key});

//   static const path = '/InfoHtml';
//   static const name = 'InfoHtml';
//   final EnumInfoType enumInfoType;
//   @override
//   Widget build(BuildContext context, WidgetRef ref) {
//     // final l = context.l10n;

//     final state = ref.watch(infoHtmlProvider(enumInfoType));

//     return Scaffold(
//       appBar: AppBar(
//         title: Text(state.title),
//       ),
//       body: SafeArea(
//         child: state.enumResult.maybeMap(
//           orElse: () => const AppLoadPage(),
//           success: () => AppWebviewPage(html: state.desc),
//         ),
//       ),
//     );
//   }
// }
