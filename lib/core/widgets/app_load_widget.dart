import 'package:flutter/material.dart';
import 'package:kidneysmart/core/widgets/custom_circular_progress_indicator.dart';

class AppLoadWidget extends StatefulWidget {
  const AppLoadWidget({
    super.key,
    this.loadingMessage,
  });
  final String? loadingMessage;

  @override
  State<AppLoadWidget> createState() => _AppLoadWidgetState();
}

class _AppLoadWidgetState extends State<AppLoadWidget> {
  @override
  Widget build(BuildContext context) {
    final widgets = <Widget>[
      const CustomCircularProgressIndicator(),
    ];

    if (widget.loadingMessage != null && widget.loadingMessage!.isNotEmpty) {
      widgets
        ..add(const SizedBox(height: 20))
        ..add(
          Text(
            widget.loadingMessage!,
            style: const TextStyle(color: Colors.black, fontSize: 16),
          ),
        );
    }

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: widgets,
    );
  }
}
