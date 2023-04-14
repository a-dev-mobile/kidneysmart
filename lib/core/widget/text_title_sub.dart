import 'package:flutter/material.dart';
import 'package:nutrition/core/style/app_text_style.dart';

import 'package:nutrition/core/utils/utils.dart';

class TitleSub extends StatelessWidget {
  const TitleSub({
    required this.text,
    super.key,
    this.onPressedInfo,
  });
  final String text;
  final void Function()? onPressedInfo;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          child: Text(
            text,
            style: AppTextStyles.h6(),
            // textAlign: TextAlign.center,
          ),
        ),
        if (onPressedInfo != null)
          IconButton(
            onPressed: onPressedInfo,
            icon: Icon(
              Icons.info_outline,
              color: context.theme.colorScheme.primary,
            ),
          ),
      ],
    );
  }

  Future<void> _showInfoDialog({
    required BuildContext context,
    required String text,
  }) async {
    return showDialog<void>(
      context: context,
      useRootNavigator: false,
      builder: (BuildContext context) {
        return AlertDialog(
          content: Text(text),
        );
      },
    );
  }
}
