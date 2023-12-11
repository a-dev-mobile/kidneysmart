import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import 'package:kidneysmart/app/style/color/app_color.dart';
import 'package:kidneysmart/core/utils/app_launch_url.dart';
import 'package:kidneysmart/core/widgets/alert_snackbar.dart';

class PersonalNotificationWidget extends StatefulWidget {
  const PersonalNotificationWidget({
    required this.title,
    required this.message,
    super.key,
  });

  final String? title;
  final String? message;

  @override
  State<PersonalNotificationWidget> createState() =>
      _PersonalNotificationWidgetState();
}

class _PersonalNotificationWidgetState
    extends State<PersonalNotificationWidget> {
  bool isShow = true;

  void closeAlert() {
    setState(() {
      isShow = false;
    });
  }

  RichText _buildRichMessage(String message) {
    final phoneRegExp =
        RegExp(r'(\+7|8)\s*\d{3}[\s-]*\d{2,3}[\s-]*\d{2}[\s-]*\d{2}');
    final emailRegExp = RegExp(r'\b[\w\.-]+@[\w\.-]+\.\w{2,4}\b');
    final spans = <TextSpan>[];

    message.splitMapJoin(
      RegExp(
        r'(\+7|8)\s*\d{3}[\s-]*\d{2,3}[\s-]*\d{2}[\s-]*\d{2}|\b[\w\.-]+@[\w\.-]+\.\w{2,4}\b',
      ),
      onMatch: (Match match) {
        final matchedText = match[0]!;
        if (phoneRegExp.hasMatch(matchedText)) {
          spans.add(_createLinkSpan(matchedText, AppLaunchUrl.phone));
        } else if (emailRegExp.hasMatch(matchedText)) {
          spans.add(_createLinkSpan(matchedText, AppLaunchUrl.email));
        }
        return '';
      },
      onNonMatch: (String text) {
        spans.add(TextSpan(text: text));
        return '';
      },
    );

    return RichText(
      text: TextSpan(
        children: spans,
        style: DefaultTextStyle.of(context).style,
      ),
    );
  }

  TextSpan _createLinkSpan(String text, void Function(String) onTap) {
    return TextSpan(
      text: text,
      style: const TextStyle(color: AppColors.greenMain),
      recognizer: TapGestureRecognizer()..onTap = () => onTap(text),
    );
  }

  @override
  Widget build(BuildContext context) {
    if (widget.title == null || widget.message == null) {
      return const SizedBox.shrink(); // Or use Container()
    }

    return AppAlert(
      isVisible: isShow,
      alertType: AlertType.warning,
      onPressedClose: closeAlert,
      title: widget.title!,
      widgetMsg: _buildRichMessage(widget.message!),
      isAddPaddingBottom: true,
    );
  }
}
