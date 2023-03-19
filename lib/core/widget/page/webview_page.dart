// // ignore_for_file: prefer_null_aware_method_calls, avoid-non-null-assertion, prefer-extracting-callbacks

// import 'package:flutter/material.dart';

// import 'package:webview_flutter/webview_flutter.dart';

// class AppWebViewPage extends StatefulWidget {
//   const AppWebViewPage({
//     required this.htmlText,
//     super.key,
//     this.onPageStarted,
//     this.onPageFinished,
//   });

//   final String htmlText;
//   final void Function(String url)? onPageStarted;

//   final void Function(String)? onPageFinished;
//   @override
//   AppWebViewPageState createState() => AppWebViewPageState();
// }

// class AppWebViewPageState extends State<AppWebViewPage> {
//   late final WebViewController _controller;
//   bool _isLoad = true;

//   void _loadOff() {
//     setState(() {
//       _isLoad = false;
//     });
//   }

//   @override
//   void initState() {
//     super.initState();
//     const maxProgress = 100;

// //     _controller = WebViewController()
// //       ..setJavaScriptMode(JavaScriptMode.disabled)
// //       ..setBackgroundColor(const Color(0x00000000))
// //       ..setNavigationDelegate(
// //         NavigationDelegate(
// //           onProgress: (int progress) {
// //             debugPrint('WebView is loading (progress : $progress%)');

// //             if (progress == maxProgress) _loadOff();
// //           },

// //           onPageStarted: (String url) {
// //             debugPrint('Page started loading: $url');

// //             if (widget.onPageStarted != null) widget.onPageStarted!(url);
// //           },
// //           onPageFinished: (String url) {
// //             debugPrint('Page finished loading: $url');
// //             if (widget.onPageFinished != null) widget.onPageFinished!(url);
// //           },
// //           onWebResourceError: (WebResourceError error) {
// //             debugPrint('''
// // Page resource error:
// //   code: ${error.errorCode}
// //   description: ${error.description}
// //   errorType: ${error.errorType}
// //   isForMainFrame: ${error.isForMainFrame}
// //           ''');
// //           },
// //         ),
// //       )
// //       ..loadHtmlString('''
// // <!DOCTYPE html>
// // <html>
// // <body>

// // <h1>My First Heading</h1>
// // <p>My first paragraph.</p>

// // </body>
// // </html>

// // ''');
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(body: WebViewWidget(controller: WebViewController()));
//   }
// }
