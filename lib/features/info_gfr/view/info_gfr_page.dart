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
  const InfoGfrPage({super.key});

  static const path = '/InfoGfrPage';
  static const name = 'InfoGfrPage';

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // final l = context.l10n;

    final state = ref.watch(infoGfrProvider);
    // ignore: unused_local_variable
    final notifier = ref.watch(infoGfrProvider.notifier);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Информация'),
      ),
      body: SafeArea(
        child: state.enumResult.maybeMap(
          orElse: () => const AppLoadPage(),
          success: () => WebViewWidget(
            controller: controller(context, state.textHtml),
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
