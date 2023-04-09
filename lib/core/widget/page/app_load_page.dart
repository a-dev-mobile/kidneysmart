import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:nutrition/gen/assets.gen.dart';

class AppLoadPage extends StatelessWidget {
  const AppLoadPage({
    super.key,
    this.size,
    this.title,
  });
  final double? size;
  final String? title;
  @override
  Widget build(BuildContext context) {
    final lottie = Lottie.asset(width: size ?? 100, AssetPaths.loadPageLottie);

    final result = title != null
        ? Row(children: [lottie, const SizedBox(width: 5), Text(title!)])
        : lottie;

    return Material(
      color: Colors.transparent,
      child: Center(
        child: result,
      ),
    );
  }
}
