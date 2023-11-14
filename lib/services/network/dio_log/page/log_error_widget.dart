import 'package:kidneysmart/services/network/dio_log/bean/net_options.dart';
import 'package:flutter/material.dart';

///Страница отображения сообщений об ошибках
class LogErrorWidget extends StatefulWidget {
  const LogErrorWidget(this.netOptions, {super.key});
  final NetOptions netOptions;

  @override
  _LogErrorWidgetState createState() => _LogErrorWidgetState();
}

class _LogErrorWidgetState extends State<LogErrorWidget>
    with AutomaticKeepAliveClientMixin {
  @override
  Widget build(BuildContext context) {
    super.build(context);
    return SizedBox(
      height: double.infinity,
      child: Center(
        child: Text(widget.netOptions.errOptions?.errorMsg ?? 'no error'),
      ),
    );
  }

  @override
  bool get wantKeepAlive => true;
}
