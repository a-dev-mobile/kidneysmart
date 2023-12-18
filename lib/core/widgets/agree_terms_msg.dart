import 'package:flutter/material.dart';
import 'package:kidneysmart/core/constants/app_text_styles.dart';

class AgreeTermsMessage extends StatelessWidget {
  const AgreeTermsMessage({
    required this.isVisible,
    required this.message,
    this.alignment = Alignment.centerLeft,
    super.key,
  });
  final bool isVisible;
  final String message;
  final AlignmentGeometry alignment;
  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: isVisible,
      child: Align(
        alignment: alignment,
        child: Text(
          message,
          style: AppTextStyle.s12w400h11.copyWith(
            color: Theme.of(context).colorScheme.error,
          ),
        ),
      ),
    );
  }
}
