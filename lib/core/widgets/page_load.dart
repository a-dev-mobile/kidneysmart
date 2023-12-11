import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class AppPageLoad extends StatelessWidget {
  const AppPageLoad({
    super.key,
    this.size = 100,
    this.title,
  });
  final double size;
  final String? title;
  @override
  Widget build(BuildContext context) {
    final lottie = Lottie.asset(width: size, 'assets/lottie/load_page.json');

    final result = title != null
        ? Row(children: [lottie, const SizedBox(width: 5), Text(title ?? '')])
        : lottie;

    return Material(
      child: Center(
        child: result,
      ),
    );
  }
}
