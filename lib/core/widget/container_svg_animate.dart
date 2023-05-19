import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ContainerSvgAnimate extends StatelessWidget {
  const ContainerSvgAnimate({
    required this.assetPaths,
    required this.heightMax,
    required this.isKeyboardOpen,
    this.heightMin = 50,
    super.key,
  });
  final String assetPaths;
  final bool isKeyboardOpen;
  final double heightMax;
  final double heightMin;
  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 300),
      height: isKeyboardOpen ? heightMin : heightMax,
      child: SizedBox(
        height: heightMax,
        child: SvgPicture.asset(
          assetPaths,
          height: heightMax,
        ),
      ),
    );
  }
}
