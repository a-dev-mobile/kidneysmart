import 'package:flutter/material.dart';
import 'package:kidneysmart/core/theme/app_text_style.dart';

class TitleMain extends StatelessWidget {
  const TitleMain({
    required this.text,
    super.key,
  });
  final String text;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 10),
        Text(
          text,
          style: AppTextStyles.headlineLarge,
          textAlign: TextAlign.center,
        ),
        const SizedBox(height: 20),
      ],
    );
  }
}
