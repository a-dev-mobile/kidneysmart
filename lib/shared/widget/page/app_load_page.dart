import 'package:flutter/material.dart';
import 'package:kidneysmart/gen/assets.gen.dart';
import 'package:lottie/lottie.dart';

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
        ? Column(
            mainAxisSize: MainAxisSize.min,
            children: [lottie, const SizedBox(width: 5), Text(title!)],
          )
        : lottie;

    return Material(
      color: Colors.transparent,
      child: Center(
        child: result,
      ),
    );
  }
}
