import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:url_launcher/url_launcher.dart';

class WidgetMarkdown extends StatelessWidget {
  const WidgetMarkdown({
    required this.markdown,
    super.key,
  });

  final String markdown;

  @override
  Widget build(BuildContext context) {
    return Markdown(
      padding: EdgeInsets.zero,
      // shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      data: markdown,
      onTapLink: (text, href, title) => _launchExternalUrl(href),
    );
  }

  static void _launchExternalUrl(String? urlStr) {
    if (urlStr == null) return;

    final url = Uri.parse(urlStr);
    final _ = launchUrl(
      url,
      mode: LaunchMode.externalApplication,
    );
  }
}
