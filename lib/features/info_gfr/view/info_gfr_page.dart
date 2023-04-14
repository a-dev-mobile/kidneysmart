import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:nutrition/core/widget/widget.dart';
import 'package:nutrition/features/info_gfr/info_gfr.dart';
import 'package:webview_flutter/webview_flutter.dart';

// ignore_for_file: prefer-extracting-callbacks
/// {@template info_gfr_page}
/// InfoGfrPage widget
/// {@endtemplate}
class InfoGfrPage extends ConsumerWidget {
  /// {@macro info_gfr_page}
  const InfoGfrPage({required this.enumInfoType, super.key});

  static const path = '/InfoGfrPage';
  static const name = 'InfoGfrPage';
  final EnumInfoType enumInfoType;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // final l = context.l10n;

    final state = ref.watch(infoGfrProvider(enumInfoType));

    return Scaffold(
      appBar: AppBar(
        title: Text(state.title),
      ),
      body: SafeArea(
        child: state.enumResult.maybeMap(
          orElse: () => const AppLoadPage(),
          success: () => WebViewWidget(
            controller: controller(context, state.desc),
          ),
        ),
      ),
    );
  }

  WebViewController controller(BuildContext context, String htmlText) {
    return WebViewController()
      ..setJavaScriptMode(JavaScriptMode.unrestricted)
      ..setBackgroundColor(Theme.of(context).colorScheme.background)
      ..setNavigationDelegate(
        NavigationDelegate(
          onProgress: (int progress) {
            debugPrint('WebView is loading (progress : $progress%)');
          },
          // ignore:
          onPageStarted: (String url) {
            debugPrint('Page started loading: $url');
          },
          onPageFinished: (String url) {
            debugPrint('Page finished loading: $url');
          },
          onWebResourceError: (WebResourceError error) {
            debugPrint('''
Page resource error:
  code: ${error.errorCode}
  description: ${error.description}
  errorType: ${error.errorType}
  isForMainFrame: ${error.isForMainFrame}
          ''');
          },
        ),
      )
      ..loadHtmlString(htmlText);
  }
}
