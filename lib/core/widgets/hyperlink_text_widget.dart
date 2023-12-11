import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kidneysmart/app/style/color/app_color.dart';
import 'package:kidneysmart/app/style/typography/app_text_styles.dart';
import 'package:kidneysmart/core/widgets/pdf_page.dart';
import 'package:kidneysmart/navigation/app_router.dart';

class HyperlinkTextWidget extends StatelessWidget {
  const HyperlinkTextWidget({required this.rawText, super.key});
  final String rawText;

  // Decode HTML entities from given input
  String _decodeHtmlEntities(String input) {
    final decoded = input.replaceAll('&#171;', '«').replaceAll('&#187;', '»');
    return decoded.replaceAll(
      'Нажимая «Продолжить» я подтверждаю',
      'Я подтверждаю',
    );
  }

  @override
  Widget build(BuildContext context) {
    List<TextSpan> children;
    final decodedText = _decodeHtmlEntities(rawText);

    try {
      final linkRegex = RegExp(r'<a href=\"(.*?)(\".*?|)\".*?>(.*?)<\/a>');
      final links = linkRegex.allMatches(decodedText);
      var lastEnd = 0;
      children = [];

      for (final linkMatch in links) {
        // Add text before link
        children
          ..add(
            TextSpan(
              text: decodedText.substring(lastEnd, linkMatch.start),
              style: AppTextStyle.s14w400h16.copyWith(height: 1.5),
            ),
          )

          // Add hyperlink text
          ..add(
            TextSpan(
              text: linkMatch.group(3),
              style: AppTextStyle.s14w400h16.copyWith(
                color: AppColors.greenMain,
                height: 1.5,
                decoration: TextDecoration.underline,
              ),
              recognizer: TapGestureRecognizer()
                ..onTap = () => context
                    .read<AppRouter>()
                    .router
                    .pushNamed<void>(PdfPage.name, extra: linkMatch.group(1)),
            ),
          );

        lastEnd = linkMatch.end;
      }

      // Add remaining text after the last link
      children.add(
        TextSpan(
          text: decodedText.substring(lastEnd),
          style: AppTextStyle.s14w400h16.copyWith(height: 1.5),
        ),
      );
    } catch (e) {
      return const Text('');
    }

    return RichText(
      text: TextSpan(
        children: children,
        style: const TextStyle(color: AppColors.mainBlack),
      ),
    );
  }
}
