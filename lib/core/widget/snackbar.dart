import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';

void showMarkdownSnack(BuildContext context, String markdown) {
  ScaffoldMessenger.of(context).removeCurrentSnackBar();
  final _ = ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      backgroundColor: Theme.of(context).colorScheme.background,
      behavior: SnackBarBehavior.fixed,
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
