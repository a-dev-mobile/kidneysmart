import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:kidneysmart/gen/assets.gen.dart';

class AppLogo extends StatelessWidget {
  const AppLogo({
    super.key,
    this.size = 192.0,
  });
  final double size;

  @override
  Widget build(BuildContext context) {
    // for nutrition
    return SvgPicture.asset(
      AssetPaths.logoSvg,
      width: size,
      height: size,
    );
  }
}
