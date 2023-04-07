// ignore_for_file: prefer_null_aware_method_calls, avoid-non-null-assertion,prefer-extracting-callbacks


import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:nutrition/core/widget/page/app_load_page.dart';
import 'package:webview_flutter/webview_flutter.dart';

class AppWebViewPage extends StatefulWidget {
  const AppWebViewPage({
    required this.url,
    super.key,
    this.onPageStarted,
    this.onPageFinished,
  });

  final String url;
  final void Function(String url)? onPageStarted;

  final void Function(String)? onPageFinished;
  @override
  AppWebViewPageState createState() => AppWebViewPageState();
}

class AppWebViewPageState extends State<AppWebViewPage> {
  late final WebViewController _controller;
  bool _isLoad = true;

  void _loadOff() {
    setState(() {
      _isLoad = false;
    });
  }

  @override
  void initState() {
    super.initState();
    const maxProgress = 100;

    _controller = WebViewController()
      ..setJavaScriptMode(JavaScriptMode.unrestricted)
      ..setBackgroundColor(Colors.amber)
      ..setNavigationDelegate(
        NavigationDelegate(
         
          onProgress: (int progress) {
            debugPrint('WebView is loading (progress : $progress%)');

            if (progress == maxProgress) _loadOff();
          },
          onPageStarted: (String url) {
            debugPrint('Page started loading: $url');

            if (widget.onPageStarted != null) widget.onPageStarted!(url);
          },
          onPageFinished: (String url) {
            debugPrint('Page finished loading: $url');
            if (widget.onPageFinished != null) widget.onPageFinished!(url);
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
      ..loadRequest(Uri.parse(widget.url));
  }

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: const SystemUiOverlayStyle(
        systemNavigationBarColor: Colors.white,
        systemNavigationBarIconBrightness: Brightness.dark,
        statusBarColor: Colors.transparent,
        statusBarBrightness: Brightness.light,
      ),
      child: _isLoad
          ? const AppLoadPage()
          : WebViewWidget(
              controller: _controller,
            ),
    );
  }
}
