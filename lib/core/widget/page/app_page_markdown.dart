import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';

class AppMarkDownPage extends StatelessWidget {
  const AppMarkDownPage({
    required this.text,
    super.key,
    this.isYesCloseBtn = false,
  });
  final String text;
  final bool isYesCloseBtn;

  @override
  Widget build(BuildContext context) {
    const defPading = 10.0;

    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            _MarkdownWidget(text: text),
            if (isYesCloseBtn)
              Positioned(
                left: defPading,
                right: defPading,
                bottom: defPading,
                child: ElevatedButton(
                  onPressed: Navigator.of(context).pop,
                  child: const Text('Закрыть'),
                ),
              ),
          ],
        ),
      ),
    );
  }
}

class _MarkdownWidget extends StatelessWidget {
  const _MarkdownWidget({
    required this.text,
  });

  final String text;

  @override
  Widget build(BuildContext context) {
    return Markdown(
      shrinkWrap: true,
      data: text,
      onTapLink: (text, href, title) {
        // print('1 $text');
        // print('2 $href');
        // print('3 $title');
      },
    );
  }
}
