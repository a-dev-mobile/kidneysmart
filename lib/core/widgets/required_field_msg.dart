import 'package:flutter/material.dart';
import 'package:kidneysmart/core/constants/app_text_styles.dart';

class RequiredFieldMessage extends StatelessWidget {
  const RequiredFieldMessage({required this.message, super.key});
  final String message;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Text(
        message,
        style: AppTextStyle.s12w400h11.copyWith(
          color: const Color(0xff515151),
        ),
      ),
    );
  }
}
