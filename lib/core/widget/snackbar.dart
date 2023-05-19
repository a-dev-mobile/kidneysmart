import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';

void showMarkdownSnack(BuildContext context, String markdown) {
  ScaffoldMessenger.of(context).removeCurrentSnackBar();
  final _ = ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      backgroundColor: Theme.of(context).colorScheme.background,
      behavior: SnackBarBehavior.floating,
      // margin: const EdgeInsets.only(bottom: 80),
      // dismissDirection: DismissDirection.up,
      padding: const EdgeInsets.symmetric(vertical: 20),
      content: Markdown(
        data: markdown,
        padding: EdgeInsets.zero,
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
      ),
    ),
  );
}

void showMarkdownAlertSnack(
  BuildContext context,
  String markdown, [
  Duration time = const Duration(seconds: 3),
]) {
  final lineLenght = markdown.split('- ').length;

  final _ = showDialog<void>(
    context: context,
    builder: (BuildContext context) {
      Future.delayed(time, () {
        Navigator.of(context).pop(true);
      });

      return SizedBox(
        height: lineLenght * 20,
        child: Markdown(
          data: markdown,
          padding: EdgeInsets.zero,
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
        ),
      );
    },
  );
}
