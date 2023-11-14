import 'dart:collection';

import 'package:flutter/material.dart';

import 'package:kidneysmart/services/network/dio_log/bean/net_options.dart';
import 'package:kidneysmart/services/network/dio_log/dio_log.dart';
import 'package:kidneysmart/services/network/dio_log/page/log_widget.dart';

///Список журнала сетевых запросов
class HttpLogListWidget extends StatefulWidget {
  const HttpLogListWidget({super.key});
  static const path = '/HttpLogListWidget';
  static const name = 'HttpLogListWidget';
  @override
  _HttpLogListWidgetState createState() => _HttpLogListWidgetState();
}

class _HttpLogListWidgetState extends State<HttpLogListWidget> {
  LinkedHashMap<String, NetOptions>? logMap;
  List<String>? keys;

  @override
  Widget build(BuildContext context) {
    logMap = LogPoolManager.getInstance().logMap;
    keys = LogPoolManager.getInstance().keys;
    final theme = Theme.of(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Request Logs',
        ),
        backgroundColor: theme.scaffoldBackgroundColor,
        elevation: 1,
        iconTheme: theme.iconTheme,
        actions: <Widget>[
          InkWell(
            onTap: () {
              if (debugBtnIsShow()) {
                dismissDebugBtn();
              } else {
                showDebugBtn(context);
              }
              setState(() {});
            },
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: Align(
                child: Text(
                  debugBtnIsShow() ? 'close overlay' : 'open overlay',
                  style: theme.textTheme.bodySmall!
                      .copyWith(fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ),
          InkWell(
            onTap: () {
              LogPoolManager.getInstance().clear();
              setState(() {});
            },
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: Align(
                child: Text(
                  'clear',
                  style: theme.textTheme.bodySmall!
                      .copyWith(fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ),
        ],
      ),
      body: logMap!.isEmpty
          ? const Center(
              child: Text('no request log'),
            )
          : ListView.builder(
              itemCount: keys!.length,
              itemBuilder: (BuildContext context, int index) {
                final item = logMap![keys![index]]!;
                return _buildItem(item);
              },
            ),
    );
  }

  ///Создаем простую информацию о запросе
  Widget _buildItem(NetOptions item) {
    final resOpt = item.resOptions;
    final reqOpt = item.reqOptions!;

    ///Форматируем время запроса
    final requestTime = getTimeStr1(reqOpt.requestTime!);

    final textColor = LogPoolManager.getInstance().isError(item)
        ? Colors.red
        : Theme.of(context).textTheme.bodyLarge!.color;
    return Card(
      margin: const EdgeInsets.all(8),
      elevation: 6,
      child: InkWell(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute<void>(
              builder: (context) {
                return LogWidget(item);
              },
            ),
          );
        },
        child: Container(
          width: double.infinity,
          padding: const EdgeInsets.all(8),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                'url: ${reqOpt.url}',
                style: TextStyle(
                  color: textColor,
                ),
              ),
              const Divider(height: 2),
              Text(
                'status: ${resOpt?.statusCode}',
                style: TextStyle(
                  color: textColor,
                ),
              ),
              const Divider(height: 2),
              Text(
                'requestTime: $requestTime    duration: ${resOpt?.duration ?? 0}ms',
                style: TextStyle(
                  color: textColor,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
