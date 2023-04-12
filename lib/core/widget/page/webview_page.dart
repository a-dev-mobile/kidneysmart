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
      ..setBackgroundColor(Theme.of(context).colorScheme.background)
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
      ..loadHtmlString('''

<div class="containerHead">
  <div class="content"><h2>Лейкоцитарная формула</h2></div>
  <!-- end .containerHead  </div> -->
</div>
<div class="containerMid">
  <div class="content">
    <p>
      Лейкоцитарная формула крови или лейкограмма – это соотношение в
      периферической крови различных форм лейкоцитов, выраженное в процентах.
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
          <li>Нейтрофилы палочко-ядерные: 1 - 6 %</li>
          <li>Нейтрофилы сегменто-ядерные: 47 - 72 %</li>
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
          <li>Нейтрофилы сегменто-ядерные: 2,00 - 5,50 ×10<sup>9</sup>/л</li>
          <li>Базофилы: 0 - 0,065 ×10<sup>9</sup>/л</li>
          <li>Эозинофилы: 0,02 - 0,30 ×10<sup>9</sup>/л</li>
        </h3>
      </ul>
    </div>
    <p></p>
    <p style="text-indent: 30px">
      Абсолютным изменением лейкоцитарной формулы принято считать выход за
      пределы нормы процентного содержания лейкоцитов в лейкоцитарной формуле
      крови вместе с абсолютным содержанием в одном литре крови. В случае, если
      из нормы выходит только процентное содержание, то говорят об относительном
      изменении лейкоцитарной формулы крови.
    </p>
    <p></p>
    <h3>
      Заболевания и состояния, сопровождающиеся сдвигом лейкоцитарной формулы:
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
        эритролейкоз, миелофиброз, метастазы новообразований, острые лейкозы,
        коматозные состояния
      </li>
      <li>
        Сдвиг вправо (уменьшение количества палочкоядерных нейтрофилов в
        сочетании с гиперсегментированными ядрами нейтрофилов): мегалобластная
        анемия, болезни почек и печени, состояния после переливания крови
      </li>
    </ul>
  </div>
  <!-- end .containerHead -->
</div>


''');
    // ..loadRequest(Uri.parse(widget.url));
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
