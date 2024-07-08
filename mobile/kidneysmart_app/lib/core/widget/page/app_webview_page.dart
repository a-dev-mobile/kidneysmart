// ignore_for_file: prefer_null_aware_method_calls, avoid-non-null-assertion,prefer-extracting-callbacks

import 'package:flutter/material.dart';

import 'package:kidneysmart/core/widget/page/app_load_page.dart';
import 'package:webview_flutter/webview_flutter.dart';

/// {@template app_webview_page}
/// AppWebviewPage widget
/// {@endtemplate}
class AppWebviewPage extends StatefulWidget {
  /// {@macro app_webview_page}
  const AppWebviewPage({
    this.url = '',
    this.html = '',
    super.key,
  });

  final String url;
  final String html;

  @override
  State<AppWebviewPage> createState() => _AppWebviewPageState();
}

/// State for widget AppWebviewPage
class _AppWebviewPageState extends State<AppWebviewPage> {
  /* #region Lifecycle */

  bool _isLoad = true;

  void _loadOff() {
    setState(() {
      _isLoad = false;
    });
  }

  late final WebViewController _controler;

  @override
  void initState() {
    super.initState();
    {
      const maxProgress = 100;

      _controler = WebViewController()
        ..setJavaScriptMode(JavaScriptMode.unrestricted)
        // ..setBackgroundColor(Theme.of(context).colorScheme.background)
        ..setNavigationDelegate(
          NavigationDelegate(
            onProgress: (int progress) {
              debugPrint('WebView is loading (progress : $progress%)');

              if (progress >= maxProgress) _loadOff();
            },
            onPageStarted: (String url) {
              debugPrint('Page started loading: $url');
            },
            onPageFinished: (String url) {
              debugPrint('Page finished loading: $url');
              // _loadOff();
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
        );
      if (widget.url.isNotEmpty) {
        _controler.loadRequest(Uri.parse(widget.url));
      } else if (widget.html.isNotEmpty) {
        _controler.loadHtmlString(widget.html);
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        WebViewWidget(
          controller: _controler
            ..setBackgroundColor(Theme.of(context).colorScheme.background),
        ),
        if (_isLoad) const AppLoadPage() else const Stack(),
      ],
    );
  }
}
