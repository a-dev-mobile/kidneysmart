/* import 'package:flutter/material.dart';
import 'package:kidneysmart/core/widget/widget.dart';

class ResultCommon extends StatelessWidget {
  const ResultCommon({
    required this.markdown,
    required this.title,
    super.key,
    this.onPressedInfo,
  });

  final String markdown;
  final String title;
  final void Function()? onPressedInfo;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TitleSub(text: title, onPressedInfo: onPressedInfo),
        WidgetMarkdown(markdown: markdown),
      ],
    );
  }
}
 */
